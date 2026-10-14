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

<div class="mx-form" markdown="1">

```python
s = cs.sym.char()
```

'3̅m1' or '-3m1', as the preference says.

</div>

<div class="mx-form" markdown="1">

```python
s = cs.sym.char(utf8=False)
```

'-3m1'.

</div>

## Input

| `pg` | symmetry |

## Keywords

| keyword | default | description |
|---|---|---|
| `utf8` | `None` | a combining bar instead of the minus sign; by default the preference 'UTF8Output' |

## Output

| `s` | str, the Hermann-Mauguin symbol |

## See also

[symmetry.pointGroup](symmetry.pointGroup_py.html), [symmetry.Schoenflies](symmetry.Schoenflies_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/symmetry.py#L268">source</a></font>
{% endraw %}
