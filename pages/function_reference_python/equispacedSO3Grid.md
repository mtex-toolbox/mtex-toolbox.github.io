---
title: 'equispacedSO3Grid'
sidebar: function_reference_sidebar
permalink: equispacedSO3Grid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: equispacedSO3Grid.html
status: Reference
---
{% raw %}
nearly equidistant orientations covering one fundamental region of the frame pair

## Syntax

About this many points:

```python
S3G = equispacedSO3Grid(CS, SS, points=1000)
```

Of a given resolution:

```python
S3G = equispacedSO3Grid(CS, resolution=5*degree)
```

Only a ball about the identity:

```python
S3G = equispacedSO3Grid(CS, maxAngle=20*degree)
```

A ball about an orientation:

```python
S3G = equispacedSO3Grid(CS, maxAngle=20*degree, center=ori)
```

An equispaced grid of the images of z at the resolution, with a ladder of the third Euler
angle at each, kept where it lies in the fundamental region of the crystal and the
specimen symmetry. The SO3Grid knows its structure, which makes its searches fast (find,
radius); the last four grids are kept, so that asking for the same grid again costs
nothing. With maxAngle only the ball about the centre is kept; a ball about the identity
smaller than the fundamental region is a localOrientationGrid, an orientation.

## Input

| | |
|---|---|
| `CS` | crystalFrame |
| `SS` | specimenFrame, by default the default specimen frame |

## Output

| | |
|---|---|
| `S3G` | SO3Grid, or orientation for a small ball |

## Keywords

| | default | |
|---|---|---|
| `resolution` | `5*degree` | the spacing of the grid, in radians |
| `points` | `None` | the approximate number of points, which sets the resolution instead |
| `maxAngle` | `180*degree` | the radius of the ball to fill |
| `center` | `None` | orientation, the centre of the ball, by default the identity |

## See also

[SO3Grid](SO3Grid_index_py.html), [regularSO3Grid](regularSO3Grid_py.html), [localOrientationGrid](localOrientationGrid_py.html), [equispacedS2Grid](equispacedS2Grid_py.html)

## Used on

[OrientationGrid](OrientationGrid_py.html), [ODFExport](ODFExport_py.html), [RBFApproximationTheory](RBFApproximationTheory_py.html), [SO3FunApproximationTheory](SO3FunApproximationTheory_py.html), [SO3FunVectorField](SO3FunVectorField_py.html), [SO3FunVectorValued](SO3FunVectorValued_py.html)

MATLAB's [equispacedSO3Grid](equispacedSO3Grid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/so3grid.py#L205">source</a></font>
{% endraw %}
