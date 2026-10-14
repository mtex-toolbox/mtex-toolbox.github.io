---
title: 'EBSD3square'
sidebar: function_reference_sidebar
permalink: EBSD3square_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a volume on its (n1, n2, n3) array of voxels, on a rectangular lattice

## Syntax

<div class="mx-form" markdown="1">

```python
ebsd = EBSD3square(rot, phaseId, CSList, dxyz=(dx, dy, dz))
```

The voxel size.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = EBSD3square(rot, phaseId, CSList, dxyz=0.5, origin=(10, 0, 0))
```

A cube voxel, moved.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = EBSD3square(rot, phaseId, CSList, D=D)
```

Any steps, as rows of D.

</div>

## Description

The voxel [i, j, k] sits at origin + i d1 + j d2 + k d3, the steps (dx, 0, 0), (0, dy, 0),
(0, 0, dz) or the rows of D; the positions are built from them, as MATLAB's EBSD3square
does from its voxel size. MATLAB's class EBSD3square is an EBSD3 of three dimensions here,
ebsd.isGridded; MATLAB passes the positions and the phaseMap too.

## Input

| `rotations` | rotation of shape (n1, n2, n3) |
| `phaseId` | int array of the same shape, the phase as the index into CSList, all 1 by default |
| `CSList` | phaseList, or a list of crystalFrame with 'notIndexed' first |

## Keywords

| keyword | default | description |
|---|---|---|
| `dxyz` | `(1.0, 1.0, 1.0)` | the voxel size (dx, dy, dz), or one number for all three |
| `origin` | `(0.0, 0.0, 0.0)` | the position of the voxel [0, 0, 0] |
| `scanUnit` | `'um'` | the unit of the positions |
| `frame` | `None` | specimenFrame of the positions, by default the default one |
| `prop` | `None` | dict, a property per voxel of the shape of the volume |
| `D` | `None` | 3 x 3 array, the steps of the lattice as rows, instead of dxyz |

## Output

| `ebsd` | EBSD3 |

## See also

[EBSD3](EBSD3_index_py.html), [EBSDsquare](EBSDsquare_py.html), [voxelLattice](voxelLattice_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/ebsd3.py#L330">source</a></font>
{% endraw %}
