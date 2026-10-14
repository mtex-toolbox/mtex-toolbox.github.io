---
title: 'S2Grid.subGrid'
sidebar: function_reference_sidebar
permalink: S2Grid.subGrid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Grid.subGrid.html
status: Reference
---
{% raw %}
A method of [S2Grid](S2Grid_index_py.html).

the grid points selected by a mask, or within eps of a centre; MATLAB's S2Grid.subGrid

## Syntax

The points a condition selects:

```python
g = S2G.subGrid(S2G.theta < 30*degree)
```

The points within 20 degree of a centre:

```python
g = S2G.subGrid(zvector, eps=20*degree)
```

The result is again a ring grid: the rings that empty out go, the others keep the points
selected. A mask is a boolean array over the grid points or a list of indices.

## Input

| | |
|---|---|
| `S2G` | S2Grid |
| `mask` | a boolean array or indices of the grid points, or with eps the centre, a vector3d |

## Output

| | |
|---|---|
| `g` | S2Grid |

## Keywords

| | default | |
|---|---|---|
| `eps` | `None` | the radius about the centre mask within which the points are kept |

## See also

[S2Grid.find](S2Grid.find_py.html), [equispacedS2Grid](equispacedS2Grid_py.html)

MATLAB's [S2Grid.subGrid](S2Grid.subGrid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/s2grid.py#L97">source</a></font>
{% endraw %}
