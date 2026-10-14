#!/usr/bin/env python3
"""Give the published MATLAB reference pages the layout of the Python ones.

MATLAB's publish writes a function's Syntax as one code block, its comments
inside, and the sections in the order of the help text. This rewrites every
page of pages/function_reference_matlab in place:

- each calling form in a light box of its own (div.mx-form), what its comment
  says below it as text; forms without a comment share a box, and a line that
  is only a comment explains the forms after it;
- the Options and Flags sections, the keywords, right after Input.

The pages it has rewritten carry a marker and are left alone, so it runs after
every publish (matlab/makeDoc.m calls it) and by hand:

    python3 tools/reference-forms.py [page.html ...]
"""
import glob
import html
import os
import re
import sys

MARK = "<!-- mx-reference-forms -->"
ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "pages", "function_reference_matlab")

SYNTAX = re.compile(r"(<h2[^>]*>Syntax</h2>)(.*?)(?=<h2|\n</div>\s*</body>)", re.S)
CODE = re.compile(r"\{% highlight matlab %\}\n(.*?)\{% endhighlight %\}\n?", re.S)
# a form and its trailing comment: code, whitespace, %, the text
TRAILING = re.compile(r"^(.*?\S)\s+%+\s*(.*)$")
SECTION = re.compile(r"(<h2[^>]*>([^<]*)</h2>)")


def sentence(text):
  # a pragma for MATLAB's code analyser, %#ok<DISPLAY>, is no explanation
  text = re.sub(r"^#ok(<[^>]*>)?\s*", "", text.strip()).rstrip(":").strip()
  if not text:
    return ""
  text = text[0].upper() + text[1:]
  return html.escape(text if text.endswith((".", "!", "?")) else text + ".", quote=False)


def block(lines, text=""):
  out = '<div class="mx-form">\n{% highlight matlab %}\n' + "\n".join(lines) + "\n{% endhighlight %}\n"
  if text:
    out += f"<p>{text}</p>\n"
  return out + "</div>\n"


# the calling forms as blocks. A comment line explains the lines below it up to the next
# comment line, which stay one box, their own comments kept as code; a line with a comment
# after it, outside such a group, is a form of its own explained by that comment; forms
# without either share a box
def forms(code):
  out, plain = [], []
  groups, head, lines = [], None, []
  for line in code.rstrip("\n").split("\n"):
    if not line.strip():
      continue
    if line.strip().startswith("%"):
      if lines or head is None:
        groups.append((head, lines))
        head, lines = [], []
      head.append(line.strip().lstrip("%").strip())
    else:
      lines.append(line.rstrip())
  groups.append((head, lines))

  def flush():
    if plain:
      out.append(block(plain))
      plain.clear()

  for head, lines in groups:
    if not lines:
      continue
    if head:
      flush()
      out.append(block(lines, " ".join(sentence(h) for h in head if h)))
      continue
    for line in lines:
      m = TRAILING.match(line)
      if m and not _inString(m.group(1)):
        flush()
        out.append(block([m.group(1).rstrip()], sentence(m.group(2))))
      else:
        plain.append(line)
  flush()
  return "".join(out)


# whether the code ends inside a quoted string, so that the % after it is part
# of the string; a quote after a name or a bracket is MATLAB's transpose
def _inString(code):
  inside = False
  for i, ch in enumerate(code):
    if ch == '"' and not inside:
      inside = '"'
    elif ch == "'" and not inside and (i == 0 or not (code[i - 1].isalnum() or code[i - 1] in ")]}_.'")):
      inside = "'"
    elif inside and ch == inside:
      inside = False
  return bool(inside)


# the keyword sections, Options and Flags, moved after Input
def reorder(body):
  parts = SECTION.split(body)
  if len(parts) < 4:
    return body
  head, sections = parts[0], []
  for k in range(1, len(parts), 3):
    sections.append((parts[k + 1].strip(), parts[k] + parts[k + 2]))
  names = [n for n, _ in sections]
  if "Input" not in names:
    return body
  keywords = [s for s in sections if s[0] in ("Options", "Flags")]
  rest = [s for s in sections if s[0] not in ("Options", "Flags")]
  at = next(i for i, (n, _) in enumerate(rest) if n == "Input") + 1
  ordered = rest[:at] + keywords + rest[at:]
  # the last section closes the page's markup; it keeps its place at the end
  tail = ""
  last = sections[-1][1]
  m = re.search(r"\n</div>\s*</body>\s*</html>\s*$", last)
  if m:
    tail = last[m.start():]
    ordered = [(n, s[:m.start()] if s == last else s) for n, s in ordered]
  joined = "".join(s if s.endswith("\n") else s + "\n" for _, s in ordered)
  return head + joined.rstrip("\n") + tail


def rewrite(text):
  if MARK in text:
    return text
  text = SYNTAX.sub(lambda m: m.group(1) + CODE.sub(lambda c: forms(c.group(1)), m.group(2)), text, count=1)
  text = reorder(text)
  return text.replace("<body>", "<body>\n" + MARK, 1)


def main(paths):
  paths = paths or sorted(glob.glob(os.path.join(ROOT, "*.html")))
  changed = 0
  for path in paths:
    with open(path, encoding="utf-8") as fh:
      text = fh.read()
    new = rewrite(text)
    if new != text:
      with open(path, "w", encoding="utf-8") as fh:
        fh.write(new)
      changed += 1
  print(f"{changed} of {len(paths)} reference pages rewritten")


if __name__ == "__main__":
  main(sys.argv[1:])
