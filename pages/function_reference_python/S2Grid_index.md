---
title: 'The class S2Grid'
sidebar: function_reference_sidebar
permalink: S2Grid_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Grid_index.html
status: Reference
---
{% raw %}
a grid on the sphere with ring structure, a ladder of polar angles theta and one azimuth grid
per ring, whose nearest and radius searches use that structure

## Syntax

<div class="mx-form" markdown="1">

```python
S2G = equispacedS2Grid(resolution=5*degree)
```

Nearly equidistant directions.

</div>

<div class="mx-form" markdown="1">

```python
S2G = equispacedS2Grid(resolution=5*degree, maxTheta=70*degree)
```

A spherical cap.

</div>

<div class="mx-form" markdown="1">

```python
S2G = S2Grid(S2G.thetaGrid, S2G.rhoGrid, resolution=5*degree)
```

From its rings.

</div>

## Description

The difference to a plain list of vector3d is that the grid knows its rings, so finding the
grid points closest to a direction, or within a radius of it, searches the ladders instead
of every point. A grid is built by equispacedS2Grid; anything that breaks the rings, an
index or an operation, returns a plain vector3d. regularS2Grid and plotS2Grid return a
matrix of vector3d, as their layout is the matrix.

## Input

| `theta` | S1Grid, the ladder of polar angles of the rings |
| `rho` | a list of S1Grid, the azimuths of every ring |

## Keywords

| keyword | default | description |
|---|---|---|
| `frame` |  | the frame of the directions |
| `resolution` |  | the resolution the grid was built with, in radians |
| `antipodal` |  | the directions are axes |

## Output

| `S2G` | S2Grid |

## See also

[equispacedS2Grid](equispacedS2Grid_py.html), [regularS2Grid](regularS2Grid_py.html), [fibonacciS2Grid](fibonacciS2Grid_index_py.html), [plotS2Grid](plotS2Grid_py.html), [vector3d.find](vector3d.find_py.html), [VectorGrids](VectorGrids_py.html)

## Members

| [cat](S2Grid.cat_py.html) | the list of the operands, MATLAB's [a, b] |
| [cross](S2Grid.cross_py.html) | the cross product of two plane normals is a lattice direction and the one of two directions a plane normal, so the indices switch sides |
| [find](S2Grid.find_py.html) | the nearest grid point of every direction and its angle, or with eps the sparse matrices of the points within eps and their angles |
| [hasUniformSteps](S2Grid.hasUniformSteps_py.html) | whether the polar ladder and every ring of more than one point have uniform steps, so that the nearest point is found by arithmetic |
| [nearestStepwise](S2Grid.nearestStepwise_py.html) | the nearest point without a search, for equispaced ladders: the ring is the polar angle over the ring step and the point the azimuth over that ring's step, both rounded the nearest node of a grid with uniform steps, arithmetic on every direction at once: the ring from the polar angle, the node on the ring from the azimuth against the ring's own first node, step and count |
| [neighbourIndices](S2Grid.neighbourIndices_py.html) | the indices of the grid points within eps of one direction |
| [numRings](S2Grid.numRings_py.html) | the number of rings, polar angles, of the grid |
| [plus](S2Grid.plus_py.html) |  |
| [polar](S2Grid.polar_py.html) | the polar angles of the grid points, exact from the rings |
| [refine](S2Grid.refine_py.html) | the directions with a new one between every three neighbours: the centroids of the Delaunay triangles of the points on the sphere, none below the lowest point, so a cap stays a cap |
| [resolution](S2Grid.resolution_py.html) | the resolution the grid was built with, NaN when none was given |
| [ring](S2Grid.ring_py.html) | the indices of the points on ring k |
| [rotate](S2Grid.rotate_py.html) | the vectors turned by a rotation, rot * v |
| [S2Grid](S2Grid.S2Grid_py.html) | a grid on the sphere with ring structure, a ladder of polar angles theta and one azimuth grid per ring, whose nearest and radius searches use that structure |
| [subGrid](S2Grid.subGrid_py.html) | the grid points selected by a mask, or within eps of a centre |
| [subsref](S2Grid.subsref_py.html) |  |
| [times](S2Grid.times_py.html) |  |

MATLAB's [S2Grid_index](S2Grid_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/s2grid.py#L19">source</a></font>
{% endraw %}
