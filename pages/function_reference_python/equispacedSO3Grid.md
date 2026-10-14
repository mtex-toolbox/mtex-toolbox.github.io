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
nearly equidistant orientations covering one fundamental region of the frame pair: an
equispaced grid of the images of z at the resolution, with a ladder of the third angle at
each; `points` picks the resolution for that count; with `maxAngle` only the ball around
`center` is kept, a ball smaller than the fundamental region being a local grid

## Syntax

```python
equispacedSO3Grid(CS, SS=None, resolution=5*degree, points=None, maxAngle=180*degree, center=None)
```

## Used on

[OrientationGrid](OrientationGrid_py.html), [ODFExport](ODFExport_py.html), [RBFApproximationTheory](RBFApproximationTheory_py.html), [SO3FunApproximationTheory](SO3FunApproximationTheory_py.html), [SO3FunVectorField](SO3FunVectorField_py.html), [SO3FunVectorValued](SO3FunVectorValued_py.html)

MATLAB's [equispacedSO3Grid](equispacedSO3Grid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/so3grid.py#L186">source</a></font>
{% endraw %}
