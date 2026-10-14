---
title: 'voxelLattice.positions'
sidebar: function_reference_sidebar
permalink: voxelLattice.positions_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [voxelLattice](voxelLattice_index_py.html).

the positions of the voxels of the lattice, or of given indices

## Syntax

Every voxel of the index, (n, 3):

```python
P = ebsd3.lattice.positions()
```

The voxel (1, 2, 3):

```python
P = ebsd3.lattice.positions([[1, 2, 3]])
```

The position of the index (i, j, k) is origin + i d1 + j d2 + k d3. The lattice of a
volume is ebsd3.lattice; this port's, MATLAB keeps the unit cell and d1, d2, d3 instead.

## Output

| | |
|---|---|
| `P` | (..., 3) array of positions in the scan unit |

## Keywords

| | default | |
|---|---|---|
| `ijk` | `None` | (..., 3) integer indices; by default the index of the lattice, l.ijk |

## See also

[voxelLattice.fromPositions](voxelLattice.fromPositions_py.html), [voxelLattice.index](voxelLattice.index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/voxellattice.py#L87">source</a></font>
{% endraw %}
