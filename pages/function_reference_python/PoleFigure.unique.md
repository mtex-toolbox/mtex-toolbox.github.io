---
title: 'PoleFigure.unique'
sidebar: function_reference_sidebar
permalink: PoleFigure.unique_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PoleFigure.unique.html
status: Reference
---
{% raw %}
A method of [PoleFigure](PoleFigure_index_py.html).

the duplicated directions removed: equivalent specimen directions under the specimen group
carry the same pole density, so they are merged and their intensities averaged; MATLAB's
unique

## Syntax

The directions within 1e-6 merged:

```python
pf = unique(pf)
```

A coarser tolerance:

```python
pf = pf.unique(tol=1e-3)
```

Two directions are merged when one of them, turned by a rotation of the specimen group,
has a dot product with the other above 1 - tol (its absolute value for axes). Only the
rotations of the group count, and a group of two elements is not used: the directions are
then merged only when they coincide.

## Input

| | |
|---|---|
| `pf` | PoleFigure |

## Output

| | |
|---|---|
| `pf` | PoleFigure |

## Keywords

| | default | |
|---|---|---|
| `tol` | `1e-06` | the tolerance on the dot product of two directions |

## See also

[PoleFigure.union](PoleFigure.union_py.html), [PoleFigure.cat](PoleFigure.cat_py.html)

MATLAB's [PoleFigure.unique](PoleFigure.unique.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L417">source</a></font>
{% endraw %}
