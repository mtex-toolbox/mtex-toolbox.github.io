---
title: 'symmetry.char'
sidebar: function_reference_sidebar
permalink: symmetry.char_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [symmetry](symmetry_index_py.html).

the symbol with a bar over every rotoinversion axis under utf8 output

## Syntax

'3̅m1' or '-3m1', as the preference says:

```python
s = cs.sym.char()
```

'-3m1':

```python
s = cs.sym.char(utf8=False)
```

## Input

| | |
|---|---|
| `pg` | symmetry |

## Output

| | |
|---|---|
| `s` | str, the Hermann-Mauguin symbol |

## Keywords

| | default | |
|---|---|---|
| `utf8` | `None` | a combining bar instead of the minus sign; by default the preference 'UTF8Output' |

## See also

[symmetry.pointGroup](symmetry.pointGroup_py.html), [symmetry.Schoenflies](symmetry.Schoenflies_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/symmetry.py#L268">source</a></font>
{% endraw %}
