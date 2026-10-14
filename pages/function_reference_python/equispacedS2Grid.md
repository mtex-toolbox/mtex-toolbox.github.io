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
a grid of nearly equidistant directions: rings of polar angle `resolution` apart, each
holding sin(theta) times the equator count of azimuths, odd rings offset by half a step

## Syntax

```python
equispacedS2Grid(*args, resolution=2.5*degree, points=None, minTheta=0.0, maxTheta=None, minRho=0.0, maxRho=360*degree, antipodal=False, hemisphere='complete', center=True, rhoPeriod=360*degree, region=None, frame=None)
```

```python
equispacedS2Grid(resolution=5*degree)
equispacedS2Grid(points=1000)
equispacedS2Grid(resolution=5*degree, antipodal=True)      axes on the upper hemisphere
equispacedS2Grid(cs, resolution=5*degree)                  the fundamental sector of a frame
```

## Used on

[Grain_dispersion_axes](Grain_dispersion_axes_py.html), [ColorMaps](ColorMaps_py.html), [PlotTypes](PlotTypes_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html), [PoleFigureRefinement](PoleFigureRefinement_py.html), [PoleFigureSantaFe](PoleFigureSantaFe_py.html), [RotationRepresentations](RotationRepresentations_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [S2FunAxisField](S2FunAxisField_py.html), [S2FunRadon](S2FunRadon_py.html), [S2FunVectorField](S2FunVectorField_py.html), [S2FunVectorValued](S2FunVectorValued_py.html)

MATLAB's [equispacedS2Grid](equispacedS2Grid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/s2grid.py#L211">source</a></font>
{% endraw %}
