---
title: 'The class SO3Grid'
sidebar: function_reference_sidebar
permalink: SO3Grid_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Grid_index.html
status: Reference
---
{% raw %}
the equispaced grid of orientations over one fundamental region of its frame pair, MATLAB's
SO3Grid: an S2 grid of the images of z with a ladder of gamma per node, so a search costs
three binary searches; built by equispacedSO3Grid, and anything derived from it is a plain
orientation list

## Syntax

<div class="mx-form" markdown="1">

```python
S3G = equispacedSO3Grid(cs, ss, resolution=5*degree)
```

</div>

## Members

| [alphaPeriod](SO3Grid.alphaPeriod_py.html) | the period of alpha, 2 pi over the order of the rotations about z the frames share |
| [dot_outer](SO3Grid.dot_outer_py.html) | the dot product up to symmetry, cos(omega/2) of the misorientation angle omega reduced over the groups of both frames |
| [find](SO3Grid.find_py.html) | the nearest grid rotation of every orientation, or the k nearest, or all within a radius, up to the symmetries of the grid's frames |
| [gamma](SO3Grid.gamma_py.html) | the ladder of every node as an S1Grid |
| [mtimes](SO3Grid.mtimes_py.html) |  |
| [node](SO3Grid.node_py.html) | the indices of the orientations on the gamma ladder of node k |
| [numNodes](SO3Grid.numNodes_py.html) | the number of nodes of the S2 grid of (alpha, beta), each carrying a ladder of gamma |
| [nZ](SO3Grid.nZ_py.html) | the number of rotations about z absorbed by the period of alpha |
| [radius](SO3Grid.radius_py.html) | every grid rotation within eps of each query, up to symmetry: the sparse incidence (nq x n) and the sparse cos(w/2) of the reduced angles |
| [resolution](SO3Grid.resolution_py.html) | the resolution the grid was built for, in radians |
| [SO3Grid](SO3Grid.SO3Grid_py.html) | the equispaced grid of orientations over one fundamental region of its frame pair, MATLAB's SO3Grid: an S2 grid of the images of z with a ladder of gamma per node, so a search costs three binary searches |
| [subGrid](SO3Grid.subGrid_py.html) | the rotations selected by a mask |
| [subsref](SO3Grid.subsref_py.html) |  |

MATLAB's [SO3Grid_index](SO3Grid_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/so3grid.py#L32">source</a></font>
{% endraw %}
