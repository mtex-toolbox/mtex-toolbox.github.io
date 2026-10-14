---
title: 'EBSD3.gridify'
sidebar: function_reference_sidebar
permalink: EBSD3.gridify_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD3.gridify.html
status: Reference
---
{% raw %}
A method of [EBSD3](EBSD3_index_py.html).

a list of voxels put back onto the (n1, n2, n3) array of its lattice; MATLAB's gridify of
EBSD3

## Syntax

The selection on its lattice:

```python
g = ebsd3['Iron'].gridify()
```

And where every voxel went:

```python
g, newId = ebsd3['Iron'].gridify(return_index=True)
```

A selection from a volume, ebsd3['Iron'] or ebsd3[condition], is a list of voxels that
keeps the lattice of the grid it came from. gridify rebuilds that grid: every voxel goes
to its lattice cell, and the cells no voxel occupies are padding, notIndexed with a NaN
rotation, NaN (or 0) properties and ebsd.isPadding set. A volume that is gridded already
is returned as it is.

## Input

| | |
|---|---|
| `ebsd` | EBSD3 whose positions lie on a lattice of voxels |

## Output

| | |
|---|---|
| `g` | EBSD3square, the gridded volume, g.pos.flat[newId] the positions of the list |
| `newId` | the flat (C order) array index of every voxel of the list, with return_index |

## Keywords

| | default | |
|---|---|---|
| `return_index` | `False` | return newId as well |

## See also

[EBSD3square](EBSD3square_py.html), [EBSD.gridify](EBSD.gridify_py.html), [calcGrains](EBSD.calcGrains_py.html), [voxelLattice](voxelLattice_index_py.html)

MATLAB's [EBSD3.gridify](EBSD3.gridify.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/ebsd3.py#L169">source</a></font>
{% endraw %}
