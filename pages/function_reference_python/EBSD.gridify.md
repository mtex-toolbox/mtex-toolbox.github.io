---
title: 'EBSD.gridify'
sidebar: function_reference_sidebar
permalink: EBSD.gridify_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.gridify.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the same map with its arrays in map shape, the missing cells padding; MATLAB's gridify

## Syntax

The rows and columns of the scan:

```python
grid = ebsd.gridify()
```

And where every measurement went:

```python
grid, newId = ebsd.gridify(return_index=True)
```

Transposed, one scan column per array row:

```python
grid = ebsd.gridify('rowMajor')
```

In the order a layout states:

```python
grid = ebsd.gridify(gridLayout.rowMajor())
```

Resampled onto a coarser lattice:

```python
grid = ebsd.gridify(unitCell=2 * ebsd.unitCell)
```

The grid closes the map to a full rectangle: a cell with no measurement, a pixel of another
phase after ebsd['Forsterite'] or one outside a region, is padding, not indexed, with a NaN
rotation, marked in ebsd.isPadding and left out of the plots, the counts and the grains.
So the grid may hold more cells than the map had measurements. Nothing is interpolated.

In the default, column major, layout the first index runs along the grid direction closest
to y and the second along the one closest to x, both with increasing coordinates, ebsd[0, 0]
the corner of the smallest coordinates. Another layout reorders the arrays by a transpose and
flips only; a hexagonal grid is always stored column major. The gradients, the curvature,
the GND and KAM do not need a grid, they run on the lattice of a list too.

## Input

| | |
|---|---|
| `ebsd` | EBSD, a list or a grid |
| `layout` | gridLayout, or 'columnMajor' or 'rowMajor', the order of the arrays |

## Output

| | |
|---|---|
| `grid` | EBSD in map shape |
| `newId` | the flat index of every measurement in the grid, grid.pos.flatten()[newId] is ebsd.pos |

## Keywords

| | default | |
|---|---|---|
| `unitCell` | `None` | the unit cell of another lattice, onto which the map is resampled by the nearest measurement |
| `return_index` | `False` | return newId as well |

## See also

[gridLayout](gridLayout_index_py.html), [EBSD.layout](EBSD.layout_py.html), [EBSDGrid](EBSDGrid_py.html), [transformReferenceFrame](transformReferenceFrame_py.html)

MATLAB's [EBSD.gridify](EBSD.gridify.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/ebsd.py#L562">source</a></font>
{% endraw %}
