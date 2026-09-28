#!/usr/bin/env python3
"""Find files under images/ and figures/ that nothing on the site references.

`images/` holds the hand-made assets of this repository, `figures/` is the
checkout of `mtex-toolbox/figures`, the figures the documentation build renders.
Both are served next to the pages, so a reference resolves into either.

Every reference to an image on this site is a literal file name — an
{% include inline_image.html file="Foo_01.png" %}, an <img src="images/...">,
a href= in a hand-written page, a url() in css/js.  Nothing builds an image
path out of pieces at render time, so scanning the text of the repo for names
that look like image files finds every reference there is.

The scan is deliberately loose: it matches a bare basename anywhere in any text
file, so an image is called "used" even when the hit is a comment or a stale
copy of a page.  That errs towards keeping, which is what you want before a
delete.

The same scan answers the opposite question — which references point at a file
that is not there (the broken <img> you only notice in a browser) — so it
reports those too.

    python3 tools/find-unused-images.py           # both lists
    python3 tools/find-unused-images.py --sizes   # ... with sizes and a total
    python3 tools/find-unused-images.py --delete  # git rm the unreferenced ones
"""

import argparse
import os
import re
import subprocess
import sys

IMAGE_EXT = ('.png', '.jpg', '.jpeg', '.gif', '.svg', '.webp', '.ico', '.bmp')

# The two directories images are served from; see the docstring.
ASSET_DIRS = ('images', 'figures')

# Not part of the published site: build output, the doc toolchain, the images
# themselves (an image never references another image).
SKIP_DIRS = {'.git', '_site', 'node_modules', '.jekyll-cache', *ASSET_DIRS}

# Where a broken reference would actually break a page. Prose that merely spells
# out an image path — CLAUDE.md, this script — is not a reference.
PUBLISHED_ROOTS = {'pages', '_includes', '_layouts', '_posts', '_data', 'css', 'js', 'sidebars'}

# Anything that could name a file. Kept wide on purpose (paths, quotes, Liquid).
_EXT = '|'.join(e.replace('.', r'\.') for e in IMAGE_EXT)

REF = re.compile(r'[\w][\w.@+-]*(?:' + _EXT + r')', re.IGNORECASE)

# References that unambiguously resolve to a served image: a src=/href=
# spelled out, or the file= of the inline_image.html / image.html includes,
# which _includes/*.html resolve into images/ or figures/.
INTO_IMAGES = re.compile(
    r'(?:(?:images|figures)/(?P<path>[\w./@+-]*(?:' + _EXT + r'))'
    r'|(?:inline_)?image\.html\s+file="(?P<inc>[^"]*(?:' + _EXT + r'))")',
    re.IGNORECASE)


def repo_root():
    return os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


def is_published(rel):
    """Does Jekyll serve this file, i.e. can a bad path in it break a page?"""
    head, tail = os.path.split(rel)
    if head:
        return head.split(os.sep)[0] in PUBLISHED_ROOTS
    return tail.endswith(('.md', '.html')) and tail not in ('CLAUDE.md', 'README.md')


def referenced_names(root, extra_skip):
    """Scan the text of the repo.

    Returns (names, targets): every image-looking file name that appears
    anywhere, and every reference that resolves to a served image, as
    {path: [files it appears in]}.
    """
    names = set()
    targets = {}
    for dirpath, dirnames, filenames in os.walk(root):
        dirnames[:] = [d for d in dirnames
                       if d not in SKIP_DIRS and d not in extra_skip]
        for fn in filenames:
            path = os.path.join(dirpath, fn)
            if fn.lower().endswith(IMAGE_EXT) or fn.lower().endswith(('.mat', '.zip', '.pdf')):
                continue
            try:
                with open(path, encoding='utf-8', errors='ignore') as fh:
                    text = fh.read()
            except OSError:
                continue
            names.update(m.group(0).lower() for m in REF.finditer(text))
            rel = os.path.relpath(path, root)
            if not is_published(rel):
                continue
            for m in INTO_IMAGES.finditer(text):
                target = m.group('path') or m.group('inc')
                targets.setdefault(os.path.normpath(target), set()).add(rel)
    return names, targets


def image_files(root):
    for top in ASSET_DIRS:
        for dirpath, dirnames, filenames in os.walk(os.path.join(root, top)):
            dirnames[:] = [d for d in dirnames if d != '.git']
            for fn in filenames:
                if fn.lower().endswith(IMAGE_EXT):
                    yield os.path.relpath(os.path.join(dirpath, fn), root)


def is_served(root, target):
    return any(os.path.exists(os.path.join(root, top, target)) for top in ASSET_DIRS)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--sizes', action='store_true', help='print file sizes and a total')
    ap.add_argument('--delete', action='store_true', help='git rm the unreferenced files')
    ap.add_argument('--skip', action='append', default=[],
                    help='additional directory name to leave out of the scan '
                         '(e.g. --skip matlab)')
    args = ap.parse_args()

    root = repo_root()
    names, targets = referenced_names(root, set(args.skip))
    on_disk = sorted(image_files(root))

    missing = {t: sorted(where) for t, where in sorted(targets.items())
               if not is_served(root, t)}
    if missing:
        print(f'referenced but in neither images/ nor figures/ ({len(missing)}):')
        for t, where in missing.items():
            shown = ', '.join(where[:3]) + (' …' if len(where) > 3 else '')
            print(f'  {t}  <- {shown}')
        print()

    unused = [p for p in on_disk if os.path.basename(p).lower() not in names]

    print(f'in images/ or figures/ but never referenced ({len(unused)}):')
    total = 0
    for p in unused:
        if args.sizes:
            size = os.path.getsize(os.path.join(root, p))
            total += size
            print(f'{size/1024:9.1f}K  {p}')
        else:
            print(f'  {p}')

    print(f'\n{len(unused)} of {len(on_disk)} files unreferenced'
          + (f', {total/1024/1024:.1f} MiB' if args.sizes else ''), file=sys.stderr)

    # each directory is its own repository, so each is git rm'ed in its own
    for top in ASSET_DIRS if args.delete else ():
        mine = [os.path.relpath(p, top) for p in unused if p.split(os.sep)[0] == top]
        if mine:
            cwd = os.path.join(root, top) if top == 'figures' else root
            subprocess.check_call(['git', 'rm', '--'] + (mine if top == 'figures' else
                                  [os.path.join(top, p) for p in mine]), cwd=cwd)


if __name__ == '__main__':
    main()
