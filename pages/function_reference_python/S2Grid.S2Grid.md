---
title: 'S2Grid.S2Grid'
sidebar: function_reference_sidebar
permalink: S2Grid.S2Grid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Grid.S2Grid.html
status: Reference
---
{% raw %}
a grid on the sphere with ring structure, a ladder of polar angles theta and one azimuth grid
per ring, whose nearest and radius searches use that structure

## Syntax

Nearly equidistant directions:

```python
S2G = equispacedS2Grid(resolution=5*degree)
```

A spherical cap:

```python
S2G = equispacedS2Grid(resolution=5*degree, maxTheta=70*degree)
```

From its rings:

```python
S2G = S2Grid(S2G.thetaGrid, S2G.rhoGrid, resolution=5*degree)
```

The difference to a plain list of vector3d is that the grid knows its rings, so finding the
grid points closest to a direction, or within a radius of it, searches the ladders instead
of every point. A grid is built by equispacedS2Grid; anything that breaks the rings, an
index or an operation, returns a plain vector3d. regularS2Grid and plotS2Grid return a
matrix of vector3d, as their layout is the matrix.

## Input

| | |
|---|---|
| `theta` | S1Grid, the ladder of polar angles of the rings |
| `rho` | a list of S1Grid, the azimuths of every ring |

## Output

| | |
|---|---|
| `S2G` | S2Grid |

## Keywords

| | default | |
|---|---|---|
| `frame` | `None` | the frame of the directions |
| `resolution` | `nan` | the resolution the grid was built with, in radians |
| `antipodal` | `False` | the directions are axes |

## See also

[equispacedS2Grid](equispacedS2Grid_py.html), [regularS2Grid](regularS2Grid_py.html), [fibonacciS2Grid](fibonacciS2Grid_index_py.html), [plotS2Grid](plotS2Grid_py.html), [vector3d.find](vector3d.find_py.html), [VectorGrids](VectorGrids_py.html)

MATLAB's [S2Grid.S2Grid](S2Grid.S2Grid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/s2grid.py#L19">source</a></font>
{% endraw %}
