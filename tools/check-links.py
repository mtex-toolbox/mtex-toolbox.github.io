#!/usr/bin/env python3
"""Report the internal links and images of a built site that lead nowhere.

    tools/check-links.py ../web-next-full           # summary and the worst pages
    tools/check-links.py ../web-next-full --all     # every dead link, as TSV

Run it on the output of a full build (tools/deploy-next.sh --full --dry-run,
or bundle exec jekyll build). The figures live in their own repository, so the
site needs figures/ next to its pages: a symlink to the figures checkout will
do, and the script makes one when it is missing.

A link counts as alive when its target exists as a file, as <target>.html
(GitHub Pages serves a page without its extension) or as <target>/index.html.
The fragments in sidebars/ are inserted into pages at the site root, so their
links are resolved from there. Links inside <pre> and <script> are skipped,
since they are code rather than navigation.

The second column says where to fix a link: "generated" pages come from the
MTEX sources (pages/*_matlab, pages/*_python), everything else is written here.
"""
import argparse
import collections
import html
import os
import re
import sys
import urllib.parse

SITE_SOURCE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ATTR = re.compile(r'''(?:href|src)\s*=\s*["']([^"']+)["']''')
EXTERNAL = re.compile(r'^(https?:|mailto:|#|javascript:|data:|//|tel:|\{)')


def sources():
    """Map every permalink to the source file it comes from."""
    out = {}
    for dp, dn, fn in os.walk(SITE_SOURCE):
        dn[:] = [d for d in dn if not d.startswith(('.', '_site')) and d not in ('figures', 'matlab', 'tools')]
        for f in fn:
            if not f.endswith(('.md', '.html')):
                continue
            p = os.path.join(dp, f)
            with open(p, encoding='utf-8', errors='replace') as fh:
                m = re.search(r'^permalink:\s*/?(\S+)', fh.read(2000), re.M)
            if m:
                link = m.group(1).strip('"\'')
                out[link] = out[link if link.endswith('.html') else link + '.html'] = os.path.relpath(p, SITE_SOURCE)
    return out


def alive(target):
    return os.path.exists(target) or os.path.exists(target + '.html') or os.path.exists(os.path.join(target, 'index.html'))


def main():
    ap = argparse.ArgumentParser(description=__doc__.split('\n')[0])
    ap.add_argument('site', help='the built site')
    ap.add_argument('--all', action='store_true', help='print every dead link as TSV')
    args = ap.parse_args()
    root = os.path.abspath(args.site)
    if not os.path.exists(os.path.join(root, 'figures')):
        os.symlink(os.path.join(SITE_SOURCE, 'figures'), os.path.join(root, 'figures'))

    dead = []                      # (page, target)
    n = 0
    for dp, dn, fn in os.walk(root):
        dn[:] = [d for d in dn if d not in ('figures', '.git')]
        base = root if os.path.relpath(dp, root) == 'sidebars' else dp
        for f in fn:
            if not f.endswith('.html'):
                continue
            page = os.path.join(dp, f)
            with open(page, encoding='utf-8', errors='replace') as fh:
                s = fh.read()
            s = re.sub(r'<(script|pre)\b.*?</\1>', '', s, flags=re.S)
            s = re.sub(r'<!--.*?-->', '', s, flags=re.S)
            for u in ATTR.findall(s):
                u = html.unescape(u).strip()
                if not u or EXTERNAL.match(u):
                    continue
                u = urllib.parse.unquote(u.split('#')[0].split('?')[0])
                if not u:
                    continue
                n += 1
                t = os.path.join(root, u.lstrip('/')) if u.startswith('/') else os.path.join(base, u)
                if not alive(os.path.normpath(t)):
                    dead.append((os.path.relpath(page, root), u))

    src = sources()
    rows = []
    for page, u in dead:
        f = src.get(page, '?')
        kind = 'generated' if re.search(r'pages/\w+_(matlab|python)/', f) else 'hand-written'
        rows.append((kind, f, page, u))
    rows.sort()

    if args.all:
        print('kind\tsource\tpage\tlink')
        for r in rows:
            print('\t'.join(r))
        return 1 if rows else 0

    pages = collections.Counter((r[0], r[2]) for r in rows)
    kinds = collections.Counter(r[0] for r in rows)
    print(f'{n} internal links, {len(rows)} dead, on {len(pages)} pages')
    for k, c in sorted(kinds.items()):
        print(f'  {k}: {c}')
    if rows:
        print('\nmost dead links:')
        for (k, p), c in pages.most_common(15):
            print(f'  {c:4d}  {p}  ({k})')
        images = [r for r in rows if re.search(r'\.(png|jpe?g|gif|svg)$', r[3], re.I)]
        if images:
            print('\nmissing images:')
            for r in images:
                print(f'  {r[3]}  on {r[2]}')
    return 1 if rows else 0


if __name__ == '__main__':
    sys.exit(main())
