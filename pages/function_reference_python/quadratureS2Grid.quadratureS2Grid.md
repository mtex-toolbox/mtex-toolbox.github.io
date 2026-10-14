---
title: 'quadratureS2Grid.quadratureS2Grid'
sidebar: function_reference_sidebar
permalink: quadratureS2Grid.quadratureS2Grid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quadratureS2Grid.quadratureS2Grid.html
status: Reference
---
{% raw %}
nodes and surface-area weights for integrating functions on the unit sphere

## Syntax

<div class="mx-form" markdown="1">

```python
grid = quadratureS2Grid(16)
grid = quadratureS2Grid(16, 'GaussLegendre')
integral = np.sum(grid.weights * fun(grid.nodes()))
```

</div>

## Description

Equally spaced azimuths are combined with a polar quadrature rule. The default is
Clenshaw–Curtis; Gauss–Legendre is also supported. Weights sum to `4*pi`, so divide a
weighted integral by `4*pi` for the spherical mean. Flattened nodes run fastest over the
polar-angle axis and then over azimuth, matching grid.gridShape = (numRho, numTheta).

## Input

| `bandwidth` | nonnegative integer harmonic bandwidth |
| `args` | optional reference frame and quadrature scheme, 'ClenshawCurtis' or 'GaussLegendre' |
| `dtype` | floating-point type for coordinates and weights; default np.float64 |

## Output

| `grid` | quadratureS2Grid, also usable as vector3d directions |

## Properties

| `weights` | surface quadrature weights summing to 4*pi |
| `thetaGrid` | polar node angles in radians |
| `rhoGrid` | azimuth node angles in radians |
| `gridShape` | azimuth and polar node counts |

## See also

[quadratureSO3Grid](quadratureSO3Grid_index_py.html), [quadratureS1Grid](quadratureS1Grid_index_py.html), [S2FunHarmonic](S2FunHarmonic_index_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
quadratureS2Grid(bandwidth, *args, dtype=np.float64)
```

</div>

## Used on

[S2FunQuadrature](S2FunQuadrature_py.html)

MATLAB's [quadratureS2Grid.quadratureS2Grid](quadratureS2Grid.quadratureS2Grid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/quadrature.py#L345">source</a></font>
{% endraw %}
