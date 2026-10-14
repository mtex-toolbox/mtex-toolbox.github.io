---
title: 'slipSystem.char'
sidebar: function_reference_sidebar
permalink: slipSystem.char_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [slipSystem](slipSystem_index_py.html).

one plane and one direction in it, (111)[01-1], one string per system; char(sS, 'latex')
as one piece of mathematics

## Syntax

'(111)[011̅]':

```python
s = sS.char()
```

'$(111)[01\bar{1}]$':

```python
s = sS.char('latex')
```

## Input

| | |
|---|---|
| `sS` | slipSystem |

## Output

| | |
|---|---|
| `s` | str for a single system, a list of them otherwise |

## Keywords

| | default | |
|---|---|---|
| `style` | `None` | None for plain text with combining bars, 'latex' for LaTeX, as Miller.char |

## See also

Miller.char

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/slipsystem.py#L279">source</a></font>
{% endraw %}
