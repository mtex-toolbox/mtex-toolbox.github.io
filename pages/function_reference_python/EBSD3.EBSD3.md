---
title: 'EBSD3.EBSD3'
sidebar: function_reference_sidebar
permalink: EBSD3.EBSD3_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD3.EBSD3.html
status: Reference
---
{% raw %}
the measurements of a volume: positions, rotations and phase ids of voxels with the list of
the phases' frames and the properties of every measurement

## Syntax

The voxels as a list:

```python
ebsd = EBSD3(pos, rot, phaseId, CSList)
```

With properties:

```python
ebsd = EBSD3(pos, rot, phaseId, CSList, prop={'ci': ci})
```

The steps of the voxel lattice stated:

```python
ebsd = EBSD3(pos, rot, phaseId, CSList, D=D)
```

An (n1, n2, n3) array of voxels:

```python
ebsd = EBSD3square(rot, phaseId, CSList, dxyz=(dx, dy, dz))
```

A volume is the three dimensional EBSD: a list of voxels, or the same arrays of shape
(n1, n2, n3), ebsd[i, j, k] one voxel, where orientation gradients are available along all
three axes. phaseId indexes CSList, 0 the not indexed phase. The voxel lattice, the origin
and the three steps d1, d2, d3, is inferred from the positions when it is not given, the
shortest independent differences to the neighbours or the rows of D; positions on no
lattice leave ebsd.lattice None. EBSD3.load reads the volumes of DREAM.3D and Neper.

## Input

| | |
|---|---|
| `pos` | vector3d, or an (..., 3) array, the centres of the voxels |
| `rotations` | rotation, the rotation of every voxel |
| `phaseId` | int array, the phase of every voxel as the index into CSList |
| `CSList` | phaseList, or a list of crystalFrame with 'notIndexed' first |
| `prop` | dict, a property per voxel of the shape of the volume |

## Output

| | |
|---|---|
| `ebsd` | EBSD3 |

## Keywords

| | default | |
|---|---|---|
| `scanUnit` | `'um'` | the unit of the positions |
| `frame` | `None` | specimenFrame of the positions, by default that of pos or the default one |
| `lattice` | `None` | voxelLattice of the positions, when it is known, instead of inferring it |
| `meta` | `None` | dict, what a file states besides the measurements |
| `phaseMap` | `None` | the phase number the file gives each entry of CSList |
| `id` | `None` | the id of every voxel, by default its position in the list |
| `isPadding` | `None` | the mask of the cells a grid adds to close it |
| `D` | `None` | 3 x 3 array, the steps of the voxel lattice as rows, instead of inferring them |

## See also

[EBSD3square](EBSD3square_py.html), [EBSD](EBSD_index_py.html), [voxelLattice](voxelLattice_index_py.html), [calcGrains](EBSD.calcGrains_py.html), [grain3d](grain3d_index_py.html), [EBSD3Analysis](EBSD3Analysis_py.html)

MATLAB's [EBSD3.EBSD3](EBSD3.EBSD3.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/ebsd3.py#L28">source</a></font>
{% endraw %}
