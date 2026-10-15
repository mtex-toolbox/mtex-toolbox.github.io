---
title: 'The class voxelLattice'
sidebar: function_reference_sidebar
permalink: voxelLattice_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the lattice a volume is measured on: the origin, the translations d1, d2, d3 as the rows of D
and the integer index of every voxel, voxel n at origin + ijk[n] @ D

## Syntax

<div class="mx-form" markdown="1">

```python
voxelLattice(origin, D, ijk)
voxelLattice.fromPositions(P)
```

</div>

## Input

| `origin` | Cartesian centre of the voxel with index (0, 0, 0) |
| `D` | 3-by-3 array of voxel step vectors as rows |
| `ijk` | integer voxel indices of shape (n, 3); position is origin + ijk @ D |

## Members

| [fromPositions](voxelLattice.fromPositions_py.html) | the lattice of voxels positions lie on |
| [index](voxelLattice.index_py.html) | the real index of positions: integer on the voxel centres |
| [positions](voxelLattice.positions_py.html) | the positions of the voxels of the lattice, or of given indices |
| [shape](voxelLattice.shape_py.html) | the extent of the box of voxels the index spans |
| [spacing](voxelLattice.spacing_py.html) | the lengths of the three translations d1, d2, d3 |
| [subset](voxelLattice.subset_py.html) | the lattice of the voxels selected by a flat index or mask, origin and translations kept |
| [unitCell](voxelLattice.unitCell_py.html) | the corners of the voxel about the origin |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/voxellattice/__init__.py#L56">source</a></font>
{% endraw %}
