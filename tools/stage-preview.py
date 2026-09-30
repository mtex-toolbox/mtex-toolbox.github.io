#!/usr/bin/env python3
"""Copy the site into a staging folder with only a subset of the generated pages.

    tools/stage-preview.py STAGE

Keeps every hand-written page and those generated pages (in pages/*_matlab/)
that tools/preview-pages.txt names. The sidebars are pruned to the pages that
remain, so the preview has no sidebar links into pages it does not contain.
Links inside the kept pages can still point at pages that were left out.
"""
import os
import re
import shutil
import subprocess
import sys

import yaml

SITE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
GENERATED = ["pages/documentation_matlab", "pages/function_reference_matlab", "pages/examples_matlab"]


def wanted():
    names = set()
    with open(os.path.join(SITE, "tools", "preview-pages.txt")) as f:
        for line in f:
            line = line.split("#", 1)[0].strip()
            if line:
                names.add(line)
    with open(os.path.join(SITE, "_data", "gallery.yml")) as f:
        gallery = yaml.safe_load(f)
    names.update(figure["page"] for figure in gallery["figures"])
    return names


def landing_pages(names):
    """The chapter pages whose sidebar folder holds one of the named pages."""
    found = set()

    def walk(node, parent):
        if isinstance(node, list):
            for n in node:
                walk(n, parent)
        elif isinstance(node, dict):
            url = node.get("url")
            if url and norm(url) in names and parent:
                found.add(norm(parent))
            here = url if any(k in node for k in ("folderitems", "subfolders", "subfolderitems")) else parent
            for k in ("entries", "folders", "folderitems", "subfolders", "subfolderitems"):
                if k in node:
                    walk(node[k], here or parent)

    folder = os.path.join(SITE, "_data", "sidebars")
    for f in os.listdir(folder):
        if f.endswith(".yml"):
            with open(os.path.join(folder, f)) as fh:
                walk(yaml.safe_load(fh), None)
    return found


def copy(stage):
    if os.path.isdir(stage):
        shutil.rmtree(stage)
    subprocess.run(["rsync", "-a",
                    "--exclude", ".git", "--exclude", "figures/", "--exclude", "_site/",
                    "--exclude", "matlab/", "--exclude", ".bundle/",
                    SITE + "/", stage + "/"], check=True)


def drop_python(stage, names):
    """The Python pages of the named pages only, and their rows of python_pages.yml."""
    folder = os.path.join(stage, "pages", "documentation_python")
    if not os.path.isdir(folder):
        return 0
    kept = []
    for f in os.listdir(folder):
        if f[:-3] in names:
            kept.append(f[:-3])
        else:
            os.remove(os.path.join(folder, f))
    table = os.path.join(stage, "_data", "python_pages.yml")
    if os.path.exists(table):
        with open(table) as fh:
            rows = [l for l in fh if l.startswith("#") or l.split(":", 1)[0] in kept]
        with open(table, "w") as fh:
            fh.writelines(rows)
    return len(kept)


def drop_generated(stage, names):
    kept = dropped = 0
    for d in GENERATED:
        folder = os.path.join(stage, d)
        for f in os.listdir(folder):
            if not f.endswith(".html"):
                continue
            if f[:-5] in names:
                kept += 1
            else:
                os.remove(os.path.join(folder, f))
                dropped += 1
    missing = sorted(n for n in names if not any(
        os.path.exists(os.path.join(stage, d, n + ".html")) for d in GENERATED))
    return kept, dropped, missing


def permalinks(stage):
    """Every address the staged site serves, as a bare name without / and .html."""
    found = set()
    pattern = re.compile(r"^permalink:\s*['\"]?/?([^'\"\s]+)", re.M)
    for root, dirs, files in os.walk(stage):
        dirs[:] = [d for d in dirs if not d.startswith((".", "_site"))]
        for f in files:
            if f.endswith((".html", ".md")):
                with open(os.path.join(root, f), errors="ignore") as fh:
                    head = fh.read(2000)
                m = pattern.search(head)
                if m:
                    found.add(norm(m.group(1)))
    return found


def norm(url):
    url = url.strip("/")
    return url[:-5] if url.endswith(".html") else url


def prune(node, served):
    """Drop entries whose page is not served, and folders left empty."""
    if isinstance(node, list):
        out = [prune(n, served) for n in node]
        return [n for n in out if n is not None]
    if not isinstance(node, dict):
        return node
    children = {k: prune(v, served) for k, v in node.items()
                if k in ("entries", "folders", "folderitems", "subfolders", "subfolderitems")}
    has_children = any(isinstance(v, (list, dict)) and v for v in children.values())
    url = node.get("url")
    if url and norm(url) not in served and not has_children and not node.get("external_url"):
        return None
    if not url and "title" in node and not has_children and any(
            k in node for k in ("folderitems", "subfolders", "subfolderitems")):
        return None
    new = dict(node)
    new.update(children)
    return new


def prune_sidebars(stage, served):
    folder = os.path.join(stage, "_data", "sidebars")
    for f in os.listdir(folder):
        if not f.endswith(".yml"):
            continue
        path = os.path.join(folder, f)
        with open(path) as fh:
            data = yaml.safe_load(fh)
        with open(path, "w") as fh:
            yaml.safe_dump(prune(data, served), fh, sort_keys=False, allow_unicode=True)


def main():
    if len(sys.argv) != 2:
        sys.exit(__doc__)
    stage = os.path.abspath(sys.argv[1])
    names = wanted()
    names |= landing_pages(names)
    copy(stage)
    kept, dropped, missing = drop_generated(stage, names)
    python = drop_python(stage, names)
    prune_sidebars(stage, permalinks(stage))
    print(f"staged {kept} generated pages and {python} Python pages, left out {dropped}")
    for n in missing:
        print(f"  not found: {n}")


if __name__ == "__main__":
    main()
