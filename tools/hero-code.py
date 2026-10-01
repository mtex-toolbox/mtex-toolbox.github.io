#!/usr/bin/env python3
"""Turn matlab/heroFigures.m into _data/hero.yml, the code card of the homepage.

    tools/hero-code.py

Every MATLAB cell "%% <tab name>" is paired with a Python cell "# %% <tab name>"
in python/heroFigures.py. Each pair becomes one tab. The MATLAB visible lines
(those not ending in "% hide") are the code shown, highlighted here into HTML;
a line "%show <code>" is shown but not run; the line "%#captions a | b" names the figures that matlab/heroExport.m wrote
to figures/hero/<tab>_<n>.png. Run it after editing heroFigures.m, and rerun
the script in MATLAB when the code of a cell changed.
"""
import html
import ast
import os
import re

import yaml

SITE = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SCRIPT = os.path.join(SITE, "matlab", "heroFigures.m")
OUT = os.path.join(SITE, "_data", "hero.yml")
PY_SCRIPT = os.path.join(SITE, "python", "heroFigures.py")

# the export names of the cells, as heroExport is called in them
EXPORT = re.compile(r"heroExport\('([^']+)',(\d+)[,)]")
TOKEN = re.compile(r"""
    (?P<comment>%.*$)
  | (?P<string>(?<![\w\)\]\}'.])'[^'\n]*')
  | (?P<call>[A-Za-z]\w*(?:\.[A-Za-z]\w*)*)(?=\()
  | (?P<other>.)
""", re.X)


def highlight(line, variables):
    out = []
    for m in TOKEN.finditer(line):
        text = html.escape(m.group(0), quote=False)
        if m.lastgroup == "comment":
            out.append(f'<span class="c">{text}</span>')
        elif m.lastgroup == "string":
            out.append(f'<span class="s">{text}</span>')
        elif m.lastgroup == "call" and text.split(".")[0] in variables:
            # a method of a variable, or indexing into one
            *obj, name = text.split(".")
            out.append(".".join(obj) + f'.<span class="k">{name}</span>' if obj else text)
        elif m.lastgroup == "call":
            out.append(f'<span class="k">{text}</span>')
        else:
            out.append(text)
    return "".join(out)


def assigned(text):
    """The names the script assigns to, [a,b] = ... included."""
    names = set()
    for lhs in re.findall(r"^\s*(\[[^\]]*\]|[A-Za-z]\w*)\s*=(?!=)", text, flags=re.M):
        names |= set(re.findall(r"[A-Za-z]\w*", lhs))
    return names


def cells():
    with open(SCRIPT) as f:
        text = f.read()
    for block in re.split(r"^%% ", text, flags=re.M)[1:]:
        head, _, body = block.partition("\n")
        if head.strip() == "heroFigures":
            continue
        yield head.strip(), body


PY_TOKEN = re.compile(r"""
    (?P<comment>\#.*$)
  | (?P<string>"[^"\n]*"|'[^'\n]*')
  | (?P<call>[A-Za-z]\w*(?:\.[A-Za-z]\w*)*)(?=\()
  | (?P<other>.)
""", re.X)


def python_cells():
    with open(PY_SCRIPT) as file:
        text = file.read()
    ast.parse(text, filename=PY_SCRIPT)
    cells = {}
    variables = assigned(text)
    for block in re.split(r"^# %% ", text, flags=re.M)[1:]:
        name, _, body = block.partition("\n")
        shown = [line for line in body.rstrip().splitlines()
                 if not re.search(r"#\s*hide\s*$", line)]
        cells[name.strip()] = "\n".join(highlight_python(line, variables) for line in shown).rstrip()
    return cells


def highlight_python(line, variables):
    out = []
    for m in PY_TOKEN.finditer(line):
        value = html.escape(m.group(), quote=False)
        kind = {"comment": "c", "string": "s", "call": "k"}.get(m.lastgroup)
        if m.lastgroup == "call" and m.group() in variables:
            kind = None
        out.append(f'<span class="{kind}">{value}</span>' if kind else value)
    return "".join(out)


def main():
    with open(SCRIPT) as f:
        variables = assigned(f.read())
    python = python_cells()
    steps = []
    for name, body in cells():
        lines = body.rstrip().split("\n")
        captions = []
        shown = []
        exports = []
        for line in lines:
            if line.startswith("%#captions"):
                captions = [c.strip() for c in line[len("%#captions"):].split("|")]
                continue
            if line.startswith("%show "):
                shown.append(line[len("%show "):].rstrip())
                continue
            exports += EXPORT.findall(line)
            if re.search(r"%\s*hide\s*$", line):
                continue
            shown.append(line.rstrip())
        while shown and not shown[-1]:
            shown.pop()
        if not exports:
            raise ValueError(f"{name}: every hero tab needs a figure")
        if len(exports) != len(captions):
            raise ValueError(f"{name}: every exported figure needs a caption")
        figures = []
        for (stem, number), caption in zip(exports, captions):
            file = f"figures/hero/{stem}_{number}.png"
            if not os.path.exists(os.path.join(SITE, file)):
                raise FileNotFoundError(f"Render heroFigures.m first: missing {file}")
            figures.append({"file": file, "caption": caption})
        if name not in python:
            raise ValueError(f"Missing Python hero cell: {name}")
        steps.append({"name": name, "code": "\n".join(highlight(l, variables) for l in shown),
                      "python": python[name], "figures": figures})
    with open(OUT, "w") as f:
        f.write("# generated by tools/hero-code.py from matlab/heroFigures.m - do not edit\n")
        yaml.safe_dump({"steps": steps}, f, sort_keys=False, allow_unicode=True, width=1000)
    print(f"{len(steps)} steps -> {os.path.relpath(OUT, SITE)}")
    for s in steps:
        print(f"  {s['name']}: {s['code'].count(chr(10)) + 1} lines, {len(s['figures'])} figures")


if __name__ == "__main__":
    main()
