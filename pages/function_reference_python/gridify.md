---
title: 'gridify'
sidebar: function_reference_sidebar
permalink: gridify_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
arrange measurements on the cells of their spatial lattice.

## Syntax

<div class="mx-form" markdown="1">

```python
grid = gridify(ebsd)
```

</div>

## Description

For an MTEX object, gridify(x, ...) calls x.gridify(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

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


## Signature

<div class="mx-form" markdown="1">

```python
gridify(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.gridify_py.html) | the same map with its arrays in map shape, the missing cells padding |
| [EBSD3](EBSD3.gridify_py.html) | a list of voxels put back onto the (n1, n2, n3) array of its lattice |

## Used on

[EBSDGrid](EBSDGrid_py.html), [EBSDInter](EBSDInter_py.html), [EBSDMapsAndImages](EBSDMapsAndImages_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
