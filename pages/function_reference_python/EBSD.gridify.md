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

<div class="mx-form" markdown="1">

```python
grid = ebsd.gridify()
```

The rows and columns of the scan.

</div>

<div class="mx-form" markdown="1">

```python
grid, newId = ebsd.gridify(return_index=True)
```

And where every measurement went.

</div>

<div class="mx-form" markdown="1">

```python
grid = ebsd.gridify('rowMajor')
```

Transposed, one scan column per array row.

</div>

<div class="mx-form" markdown="1">

```python
grid = ebsd.gridify(gridLayout.rowMajor())
```

In the order a layout states.

</div>

<div class="mx-form" markdown="1">

```python
grid = ebsd.gridify(unitCell=2 * ebsd.unitCell)
```

Resampled onto a coarser lattice.

</div>

## Description

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

| `ebsd` | EBSD, a list or a grid |
| `layout` | gridLayout, or 'columnMajor' or 'rowMajor', the order of the arrays |

## Keywords

| keyword | default | description |
|---|---|---|
| `unitCell` | `None` | the unit cell of another lattice, onto which the map is resampled by the nearest measurement |
| `return_index` | `False` | return newId as well |

## Output

| `grid` | EBSD in map shape |
| `newId` | the flat index of every measurement in the grid, grid.pos.flatten()[newId] is ebsd.pos |

## Example

Arrange a small list of measurements into a grid, leaving one interior lattice site
unmeasured. The index mapping identifies where each original measurement ended up.


```python
import numpy as np
from mtex import EBSD, crystalFrame, phaseList, rotation, vector3d, degree, gridify

x, y = np.meshgrid(np.arange(5), np.arange(4))
keep = ~((x == 2) & (y == 1))
pos = np.c_[x[keep], y[keep]]
rot = rotation.byAxisAngle(vector3d.Z, x[keep]*degree)
ebsd = EBSD(pos, rot, np.ones(len(pos), dtype=int), phaseList(crystalFrame('m-3m')))
grid, newId = gridify(ebsd, return_index=True)
print('List shape:', ebsd.shape, 'Grid shape:', grid.shape)
print('Unmeasured cells:', np.count_nonzero(grid.isPadding))
print('Padding is indexed:', bool(np.any(grid.isIndexed[grid.isPadding])))
print('Positions preserved:', np.allclose(grid.pos.data.reshape(-1, 3)[newId], ebsd.pos.data))
```

gridify arranges the data; it does not interpolate a measurement into the missing cell.
Use isPadding to distinguish that absent lattice site from an acquired but unindexed point.

```text
List shape: (19,) Grid shape: (4, 5)
Unmeasured cells: 1
Padding is indexed: False
Positions preserved: True
```


## See also

[gridLayout](gridLayout_index_py.html), [EBSD.layout](EBSD.layout_py.html), [EBSDGrid](EBSDGrid_py.html), [transformReferenceFrame](transformReferenceFrame_py.html)

MATLAB's [EBSD.gridify](EBSD.gridify.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/ebsd.py#L609">source</a></font>
{% endraw %}
