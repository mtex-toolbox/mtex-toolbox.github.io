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
the tensor product of a polar ladder and an azimuth ladder as an nRho x nTheta matrix
of directions, the layout of the pole figure files

## Syntax

```python
regularS2Grid(resolution=5*degree, points=None, theta=None, rho=None, minTheta=0.0, maxTheta=None, minRho=0.0, maxRho=360*degree, antipodal=False, hemisphere='complete', frame=None)
```

## Used on

[PoleFigureSimulation](PoleFigureSimulation_py.html), [S2FunQuadrature](S2FunQuadrature_py.html), [VectorGrids](VectorGrids_py.html)

MATLAB's [regularS2Grid](regularS2Grid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/s2grid.py#L293">source</a></font>
{% endraw %}
