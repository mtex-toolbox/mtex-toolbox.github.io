#!/usr/bin/env python3
"""Find generated pages whose MATLAB source no longer exists.

makeDoc only ever writes pages, it never removes them, so a function or doc
file deleted or renamed in MTEX leaves its published page behind for good.  The
sidebars *are* rebuilt from the current file list, so such a page silently
drops out of the navigation and lives on only in search.json and under its old
URL.

Every generated page carries an "edit page" link to its source in the mtex /
examples repo; that link is the source of truth here.  A page whose target does
not exist in the checkout next door is orphaned.

    python3 tools/find-orphan-pages.py            # report
    python3 tools/find-orphan-pages.py --delete   # git rm pages + their images

--delete also removes the figures those pages were the only user of.  It leaves
the sidebars alone: they already do not mention these pages.

The checkout must be on the branch the pages were published from (develop for
mtex, master for examples) or live sources will look deleted.
"""

import argparse
import os
import re
import subprocess
import sys
from collections import defaultdict

EDIT_LINK = re.compile(
    r'https://github\.com/mtex-toolbox/(mtex|examples)/blob/[^/]+/([^"\s>]+\.m)')
INCLUDE = re.compile(r'inline_image\.html\s+file="([^"]+)"')
HREF = re.compile(r'href="([\w.]+)\.html"')

GENERATED = ('documentation_matlab', 'function_reference_matlab', 'examples_matlab')


def repo_root():
    return os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


def generated_pages(root):
    for folder in GENERATED:
        d = os.path.join(root, 'pages', folder)
        for fn in sorted(os.listdir(d)):
            if fn.endswith('.html') and fn != 'docscripts.js':
                yield folder, fn[:-5], os.path.join(d, fn)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--delete', action='store_true')
    ap.add_argument('--mtex', default='../master', help='MTEX checkout (default ../master)')
    ap.add_argument('--examples', default='../examples', help='examples checkout')
    args = ap.parse_args()

    root = repo_root()
    checkout = {'mtex': os.path.join(root, args.mtex),
                'examples': os.path.join(root, args.examples)}
    for name, path in checkout.items():
        if not os.path.isdir(path):
            sys.exit(f'no {name} checkout at {path}')

    orphans, images, texts = {}, {}, {}
    for folder, name, path in generated_pages(root):
        text = open(path, encoding='utf-8', errors='ignore').read()
        texts[name] = (folder, path, text)
        images[name] = set(INCLUDE.findall(text))
        m = EDIT_LINK.search(text)
        if m and not os.path.exists(os.path.join(checkout[m.group(1)], m.group(2))):
            orphans[name] = (folder, path, f'{m.group(1)}/{m.group(2)}')

    # figures no surviving page still includes
    live = set()
    for name, (_, _, _) in texts.items():
        if name not in orphans:
            live |= images[name]
    freed = sorted({i for n in orphans for i in images[n]} - live)

    # links that would go dead
    inbound = defaultdict(set)
    for name, (_, _, text) in texts.items():
        if name in orphans:
            continue
        for target in HREF.findall(text):
            if target in orphans:
                inbound[target].add(name)

    by_folder = defaultdict(list)
    for name, (folder, _, src) in sorted(orphans.items()):
        by_folder[folder].append((name, src))
    for folder in GENERATED:
        rows = by_folder[folder]
        print(f'== {folder}: {len(rows)} orphaned ==')
        for name, src in rows:
            note = ''
            if name in inbound:
                note = '   <- linked from ' + ', '.join(sorted(inbound[name]))
            print(f'   {name + ".html":48s} {src}{note}')

    print(f'\n{len(orphans)} pages, {len(freed)} figures used by nothing else')

    if args.delete and orphans:
        paths = [os.path.relpath(p, root) for _, p, _ in orphans.values()]
        paths += [os.path.join('images', i) for i in freed
                  if os.path.exists(os.path.join(root, 'images', i))]
        subprocess.check_call(['git', 'rm', '-q', '--'] + paths, cwd=root)
        print(f'removed {len(paths)} files')


if __name__ == '__main__':
    main()
