---
title: 'The class slices3d'
sidebar: function_reference_sidebar
permalink: slices3d_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
three orthogonal slices of a voxel volume: the colours (nx, ny, nz, 3) in [0, 1], the
voxels shown (nx, ny, nz), the centre of the first voxel, the steps of the three voxel axes
as the rows of D, and the voxel index of each slice, None for a slice not shown

## Members

| | |
|---|---|
| [bounds](slices3d.bounds_py.html) | the corners (lo, hi) of the box around the voxel volume |
| [plane](slices3d.plane_py.html) | the slice through voxel index i along axis a: its colours (rows, cols, 3) over the other two axes in increasing index, the voxels shown, and the corners of its rectangle, the first at index (-1/2, -1/2), then along the rows, the columns, both |
| [planes](slices3d.planes_py.html) | the slices shown, one plane(a) each, the axes without a slice left out |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/scene3d.py#L58">source</a></font>
{% endraw %}
