---
title: 'mapCells'
sidebar: function_reference_sidebar
permalink: mapCells_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the corners of every cell of a map, shape (n, m, 2), on the screen

## Syntax

Four corners a cell on a square grid:

```python
V = mapCells(ebsd)
```

Turned to another convention:

```python
V = mapCells(ebsd, layout=mapLayout('x↑→y'))
```

A corner is shared by the cells around it and sits at the mean of where each of them puts
it, the measured centre plus the ideal offset to the corner. On a rigid grid that is the
ideal corner; under a stage drift the corners follow the centres, so the cells tile without
gaps. A map on no lattice is refused.

## Input

| | |
|---|---|
| `ebsd` | EBSD on a lattice |

## Output

| | |
|---|---|
| `V` | array of shape (n, m, 2), the m corners of the cell of each of the n measurements |

## Keywords

| | default | |
|---|---|---|
| `layout` | `None` | the 2 x 2 matrix taking the plane to the screen, mapLayout; by default the identity |

## See also

[mapRaster](mapRaster_py.html), [mapPoints](mapPoints_py.html), [mapLayout](mapLayout_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/maps.py#L235">source</a></font>
{% endraw %}
