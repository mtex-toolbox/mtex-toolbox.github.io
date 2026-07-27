#!/usr/bin/env python3
"""Revert documentation images that a doc rebuild changed only cosmetically.

Every `makeDoc` run re-renders all of `images/`, and most re-renders are not
bit-identical while showing the very same figure: MATLAB rasterises at a
slightly different size, `mogrify -trim` then crops to content so the canvas
jitters too, and anti-aliasing lands on different pixels.  Since the change set
of `images/` is used as a unit test for the toolbox, those cosmetic diffs bury
the real ones.

This script scores each modified PNG against its committed version and restores
the committed one when the two are visually the same, so that whatever is left
in `git status` is the real change set.

    python3 tools/revert-unchanged-images.py --dry-run   # score only
    python3 tools/revert-unchanged-images.py             # score and revert

The score is scale-invariant and tolerant of sub-pixel offsets, but stays
sensitive to localised changes such as a moved marker or a relabelled axis; see
`score_pair` for how it is built.  Only numpy and Pillow are needed.
"""

import argparse
import io
import os
import subprocess
import sys
from multiprocessing import Pool
from pathlib import Path

import numpy as np
from PIL import Image, ImageFilter

# Size of the square grid both images are normalised onto.
GRID = 256

# Radius of the neighbourhood a pixel may be explained from, on that grid.
TOLERANCE_RADIUS = 4

# Edge length of the blocks the difference map is aggregated over.
BLOCK = 8

# Deviation from the background above which a pixel counts as figure content.
CONTENT_LEVEL = 0.08

# Fraction of content mass trimmed off each end when locating the content box.
CONTENT_TRIM = 0.002

DEFAULT_THRESHOLD = 0.20


def content_box(image):
    """Bounding box of the figure content, ignoring outlying strokes.

    The background is taken to be the median border colour.  Trimming a small
    fraction of the content mass off each end is what makes this reliable: a
    plain bounding box is thrown off by a single stray line, which then
    misaligns the whole comparison.
    """
    border = np.concatenate([image[0], image[-1], image[:, 0], image[:, -1]])
    background = np.median(border, axis=0)
    content = np.abs(image - background).max(axis=2) > CONTENT_LEVEL

    def span(counts):
        cumulative = np.cumsum(counts.astype(float))
        total = cumulative[-1]
        if total < 20:  # essentially empty - keep the full extent
            return 0, len(counts)
        low = int(np.searchsorted(cumulative, CONTENT_TRIM * total))
        high = int(np.searchsorted(cumulative, (1 - CONTENT_TRIM) * total))
        return low, max(high + 1, low + 2)

    top, bottom = span(content.sum(axis=1))
    left, right = span(content.sum(axis=0))
    return left, top, right, bottom


def normalise(source):
    """Decode an image and map it onto the common comparison grid.

    Cropping to the content box and resizing to a fixed square removes the
    differences in canvas size, scale and aspect ratio that the trim step
    introduces - by far the largest class of cosmetic change.
    """
    if isinstance(source, bytes):
        source = io.BytesIO(source)
    image = Image.open(source).convert("RGB")
    box = content_box(np.asarray(image).astype(np.float32) / 255.0)
    return image.crop(box).resize((GRID, GRID), Image.Resampling.LANCZOS)


def as_array(image):
    return np.asarray(image).astype(np.float32) / 255.0


def unexplained(image, reference):
    """How much of `image` no nearby pixel of `reference` can account for.

    A pixel only registers if its value falls outside the range the reference
    takes anywhere within `TOLERANCE_RADIUS`.  Anti-aliasing and sub-pixel
    offsets always find a match nearby and vanish; a marker that moved across
    the plot does not.
    """
    kernel = 2 * TOLERANCE_RADIUS + 1
    low = as_array(reference.filter(ImageFilter.MinFilter(kernel)))
    high = as_array(reference.filter(ImageFilter.MaxFilter(kernel)))
    values = as_array(image)
    below = np.maximum(low - values, 0)
    above = np.maximum(values - high, 0)
    return (below + above).max(axis=2)


def score_pair(new_image, old_image):
    """Dissimilarity of two normalised images, 0 meaning indistinguishable.

    The two directions are combined pixelwise with `max`, not `min`: a marker
    present in one image only is unexplained in a single direction, so `min`
    would cancel it out.

    Aggregating as the largest block average rather than a plain mean keeps the
    measure local.  A mean spreads a small but real change across the whole
    frame, sinking it below the anti-aliasing floor of a densely drawn figure.
    """
    difference = np.maximum(
        unexplained(new_image, old_image),
        unexplained(old_image, new_image),
    )
    usable = difference.shape[0] // BLOCK * BLOCK
    blocks = difference[:usable, :usable].reshape(
        usable // BLOCK, BLOCK, usable // BLOCK, BLOCK
    )
    return float(blocks.mean(axis=(1, 3)).max())


def git(*arguments, binary=False):
    result = subprocess.run(
        ["git", *arguments], capture_output=True, check=False
    )
    if result.returncode:
        raise RuntimeError(result.stderr.decode("utf-8", "replace").strip())
    return result.stdout if binary else result.stdout.decode()


def score_path(path):
    """Score one working tree file against its stored version.

    The baseline is the index rather than HEAD, because that is what both
    `git diff` and the `git checkout --` below compare against.  The two are
    the same unless something is staged, and mixing them would score one
    version while restoring another.
    """
    try:
        stored = git("show", ":" + path, binary=True)
        return path, score_pair(normalise(path), normalise(stored)), None
    except Exception as error:  # unreadable, undecodable, or not in the index
        return path, None, str(error)


def main():
    parser = argparse.ArgumentParser(
        description="Revert documentation images that changed only cosmetically."
    )
    parser.add_argument(
        "--threshold",
        type=float,
        default=DEFAULT_THRESHOLD,
        help="revert images scoring at or below this value "
        f"(default: {DEFAULT_THRESHOLD})",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="list every image with its score without reverting anything",
    )
    parser.add_argument(
        "--verbose",
        action="store_true",
        help="also list the images that were reverted",
    )
    parser.add_argument(
        "--jobs", type=int, default=8, help="worker processes (default: 8)"
    )
    arguments = parser.parse_args()

    # All paths below are relative to the site root, so that this works the
    # same when called from elsewhere - makeDoc invokes it from matlab/.
    os.chdir(Path(__file__).resolve().parent.parent)

    # --diff-filter=M leaves out deletions, and untracked files never show up
    # in `git diff` at all - both are real changes to a page, not re-renders.
    paths = git(
        "diff", "--name-only", "--diff-filter=M", "--", "images/*.png"
    ).split()
    if not paths:
        print("no modified images")
        return 0

    print(f"scoring {len(paths)} modified image(s) ...", file=sys.stderr)
    with Pool(arguments.jobs) as pool:
        results = pool.map(score_path, paths)

    failed = [(path, error) for path, score, error in results if score is None]
    scored = sorted(
        ((path, score) for path, score, error in results if score is not None),
        key=lambda item: item[1],
    )
    unchanged = [item for item in scored if item[1] <= arguments.threshold]

    if arguments.dry_run:
        for path, score in scored:
            mark = "revert" if score <= arguments.threshold else "keep  "
            print(f"{mark}  {score:.4f}  {path}")

    for path, error in failed:
        print(f"skipped {path}: {error}", file=sys.stderr)

    if not arguments.dry_run and unchanged:
        # Restoring in one call keeps this fast even for hundreds of files.
        git("checkout", "--", *(path for path, _ in unchanged))
        if arguments.verbose:
            for path, score in unchanged:
                print(f"reverted  {score:.4f}  {path}")

    verb = "would revert" if arguments.dry_run else "reverted"
    print(
        f"{verb} {len(unchanged)} of {len(scored)} image(s); "
        f"{len(scored) - len(unchanged)} really changed"
    )
    return 0


if __name__ == "__main__":
    sys.exit(main())
