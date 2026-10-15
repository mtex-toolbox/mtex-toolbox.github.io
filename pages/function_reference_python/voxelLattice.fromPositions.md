---
title: 'voxelLattice.fromPositions'
sidebar: function_reference_sidebar
permalink: voxelLattice.fromPositions_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [voxelLattice](voxelLattice_index_py.html).

the lattice of voxels positions lie on

## Syntax

<div class="mx-form" markdown="1">

```python
l = voxelLattice.fromPositions(P)
```

The translations inferred.

</div>

<div class="mx-form" markdown="1">

```python
l = voxelLattice.fromPositions(P, D)
```

Known translations, the rows of D.

</div>

## Description

Without D the translations d1, d2, d3 are the three shortest independent differences from
a voxel to its neighbours, ordered and signed to run along x, y and z as far as they can,
as MATLAB's gridify orders the edges of the unit cell. The index of every position is
rounded and must lie within a quarter cell of an integer; two positions on one voxel, or
positions off one lattice, raise a ValueError. The origin is the corner of the box of
indices, so every index is nonnegative.

## Input

| `P` | (n, 3) array of positions, at least four |

## Keywords

| keyword | default | description |
|---|---|---|
| `D` | `None` | the three translations as the rows of a 3 x 3 array |

## Output

| `l` | voxelLattice |

## See also

[voxelLattice.positions](voxelLattice.positions_py.html), [EBSD3.gridify](EBSD3.gridify_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/voxellattice/__init__.py#L114">source</a></font>
{% endraw %}
