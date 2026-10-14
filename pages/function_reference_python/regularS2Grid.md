---
title: 'regularS2Grid'
sidebar: function_reference_sidebar
permalink: regularS2Grid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: regularS2Grid.html
status: Reference
---
{% raw %}
a regular spherical grid, the tensor product of a ladder of polar angles and a ladder of
azimuths, the layout of pole figure files

## Syntax

5 degree in both angles:

```python
S2G = regularS2Grid(resolution=5*degree)
```

In the azimuth and the polar angle:

```python
S2G = regularS2Grid(resolution=[5*degree, 2.5*degree])
```

72 azimuths, 19 polar angles:

```python
S2G = regularS2Grid(points=(72, 19))
```

The angles given:

```python
S2G = regularS2Grid(theta=np.arange(0, 81, 5)*degree, rho=np.arange(0, 360, 5)*degree)
```

The grid is an nRho x nTheta matrix of vector3d, rho along the first axis and theta along
the second. The polar angles run from minTheta to maxTheta both included, the azimuths
from minRho to maxRho periodically, the last left out. Python has no 'identified'
hemisphere and no restrict2MinMax.

## Output

| | |
|---|---|
| `S2G` | vector3d, an nRho x nTheta matrix |

## Keywords

| | default | |
|---|---|---|
| `resolution` | `5*degree` | the spacing in radians, one for both angles, or the pair of the azimuth and the polar angle |
| `points` | `None` | (nRho, nTheta), the number of azimuths and of polar angles instead of the resolution |
| `theta` | `None` | the polar angles, instead of a ladder |
| `rho` | `None` | the azimuths, instead of a ladder |
| `minTheta` | `0.0` | the smallest polar angle |
| `maxTheta` | `None` | the largest polar angle; by default pi, or pi/2 for axes and the upper hemisphere |
| `minRho` | `0.0` | the smallest azimuth |
| `maxRho` | `360*degree` | the largest azimuth, the period of the azimuths |
| `antipodal` | `False` | the directions are axes, the grid covers the upper hemisphere |
| `hemisphere` | `'complete'` | 'complete', 'upper' or 'lower' |
| `frame` | `None` | the frame of the directions |

## See also

[equispacedS2Grid](equispacedS2Grid_py.html), [plotS2Grid](plotS2Grid_py.html), [S2Grid](S2Grid_index_py.html), [VectorGrids](VectorGrids_py.html)

## Used on

[PoleFigureSimulation](PoleFigureSimulation_py.html), [S2FunQuadrature](S2FunQuadrature_py.html), [VectorGrids](VectorGrids_py.html)

MATLAB's [regularS2Grid](regularS2Grid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/s2grid.py#L379">source</a></font>
{% endraw %}
