---
title: 'spaceGroupToPointGroup'
sidebar: function_reference_sidebar
permalink: spaceGroupToPointGroup_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
return the crystallographic point-group symbol for a space-group number.

## Syntax

<div class="mx-form" markdown="1">

```python
symbol = spaceGroupToPointGroup(225)
```

</div>

## Input

| `number` | international space-group number from 1 through 230 |

## Output

| `symbol` | Hermann-Mauguin symbol of its point group |

## See also

[symmetry](symmetry_index_py.html), [crystalFrame](crystalFrame_index_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
spaceGroupToPointGroup(n)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/symmetry.py#L694">source</a></font>
{% endraw %}
