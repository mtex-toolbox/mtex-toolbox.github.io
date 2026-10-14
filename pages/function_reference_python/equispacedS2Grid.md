---
title: 'equispacedS2Grid'
sidebar: function_reference_sidebar
permalink: equispacedS2Grid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: equispacedS2Grid.html
status: Reference
---
{% raw %}
an equispaced spherical grid, nearly equidistant directions on rings of constant polar
angle

## Syntax

The sphere at 5 degree:

```python
S2G = equispacedS2Grid(resolution=5*degree)
```

About 1000 points:

```python
S2G = equispacedS2Grid(points=1000)
```

Axes, the upper hemisphere:

```python
S2G = equispacedS2Grid(resolution=5*degree, antipodal=True)
```

A spherical cap:

```python
S2G = equispacedS2Grid(resolution=5*degree, maxTheta=70*degree)
```

The fundamental sector of a frame:

```python
S2G = equispacedS2Grid(cs, resolution=5*degree)
```

The rings lie resolution apart in the polar angle, each holding sin(theta) times the equator
count of azimuths, the odd rings offset by half a step. With a number of points the
resolution is chosen to give about that many. A frame restricts the grid to its
fundamental sector, of the Laue group for axes; a sphericalRegion to that region.

Python has no 'identified' hemisphere and no restrict2MinMax, and center is the flag of a
point at the pole, not MATLAB's centre direction.

## Input

| | |
|---|---|
| `args` | a crystalFrame or specimenFrame, whose fundamental sector the grid covers, or a sphericalRegion |

## Output

| | |
|---|---|
| `S2G` | S2Grid |

## Keywords

| | default | |
|---|---|---|
| `resolution` | `2.5*degree` | the spacing of the rings and of the points on a ring, in radians |
| `points` | `None` | the number of points instead of the resolution |
| `minTheta` | `0.0` | the smallest polar angle |
| `maxTheta` | `None` | the largest polar angle; by default pi, or pi/2 for axes and the upper hemisphere |
| `minRho` | `0.0` | the smallest azimuth |
| `maxRho` | `360*degree` | the largest azimuth |
| `antipodal` | `False` | the directions are axes, the grid covers the upper hemisphere |
| `hemisphere` | `'complete'` | 'complete', 'upper' or 'lower' |
| `center` | `True` | the first ring is the pole; False starts half a step from it, MATLAB's 'no_center' |
| `rhoPeriod` | `360*degree` | the period of the azimuths, of the searches on a ring |
| `region` | `None` | a sphericalRegion the grid is restricted to |
| `frame` | `None` | the frame of the directions; by default that of the frame or region given |

## See also

[S2Grid](S2Grid_index_py.html), [regularS2Grid](regularS2Grid_py.html), [fibonacciS2Grid](fibonacciS2Grid_index_py.html), [plotS2Grid](plotS2Grid_py.html), [equispacedSO3Grid](equispacedSO3Grid_py.html), [VectorGrids](VectorGrids_py.html)

## Used on

[Grain_dispersion_axes](Grain_dispersion_axes_py.html), [ColorMaps](ColorMaps_py.html), [PlotTypes](PlotTypes_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html), [PoleFigureRefinement](PoleFigureRefinement_py.html), [PoleFigureSantaFe](PoleFigureSantaFe_py.html), [RotationRepresentations](RotationRepresentations_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [S2FunAxisField](S2FunAxisField_py.html), [S2FunRadon](S2FunRadon_py.html), [S2FunVectorField](S2FunVectorField_py.html), [S2FunVectorValued](S2FunVectorValued_py.html)

MATLAB's [equispacedS2Grid](equispacedS2Grid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/s2grid.py#L266">source</a></font>
{% endraw %}
