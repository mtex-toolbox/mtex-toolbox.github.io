---
title: 'bandwidthFor'
sidebar: function_reference_sidebar
permalink: bandwidthFor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the smallest bandwidth at least L whose 2L+2 the folds divide

## Syntax

<div class="mx-form" markdown="1">

```python
L = bandwidthFor(10, 6, 2)
```

11: 24 is a multiple of lcm(6, 2).

</div>

<div class="mx-form" markdown="1">

```python
L = bandwidthFor(10, cs, ss)
```

The folds of two frames.

</div>

## Description

The quadrature grids on SO(3) of bandwidth L have 2L+2 nodes in the first and the third
Euler angle; a bandwidth whose 2L+2 the folds divide lets the grid follow the symmetry.

## Input

| `L` | the smallest bandwidth acceptable |
| `rA` | the fold of the crystal side, or the crystal frame |

## Keywords

| keyword | default | description |
|---|---|---|
| `rB` | `1` | the fold of the specimen side, or the specimen frame when rA is a frame |

## Output

| `L` | int |

## See also

[folds](folds_py.html), [quadratureSO3Grid](quadratureSO3Grid_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/quadrature.py#L96">source</a></font>
{% endraw %}
