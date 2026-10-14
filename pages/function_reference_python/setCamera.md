---
title: 'setCamera'
sidebar: function_reference_sidebar
permalink: setCamera_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: setCamera.html
status: Reference
---
{% raw %}
the 3D view of the current axes looking down how2plot.outOfScreen, with how2plot.north up;
without a convention the default one; MATLAB's setCamera

## Syntax

<div class="mx-form" markdown="1">

```python
setCamera()
```

The view of the default convention.

</div>

<div class="mx-form" markdown="1">

```python
setCamera('x↑→y')
```

X up and y to the right.

</div>

<div class="mx-form" markdown="1">

```python
setCamera(plottingConvention('z↑→x'), ax=ax)
```

The view of a given 3D axes.

</div>

## Description

The camera is orthographic. A figure holding a 3D scene is drawn again from the new
camera, and a map seen from off its normal becomes a scene of the maps drawn into it.
Unlike MATLAB's setCamera(ax, how2plot), the axes come as a keyword.

## Input

| `how2plot` | plottingConvention or its string; plottingConvention.default when None |

## Keywords

| keyword | default | description |
|---|---|---|
| `ax` | `None` | the matplotlib 3D axes; by default the current scene or the last axes of the current figure |

## See also

[plottingConvention](plottingConvention_index_py.html), [plot3d](S2Fun.plot3d_py.html), [scatter3d](vector3d.scatter3d_py.html)

## Used on

[EBSD3Analysis](EBSD3Analysis_py.html), [EBSD3Plotting](EBSD3Plotting_py.html), [Grains3D](Grains3D_py.html), [Grains3DBoundaries](Grains3DBoundaries_py.html), [Grains3DOperations](Grains3DOperations_py.html), [Grains3DProperties](Grains3DProperties_py.html), [Grains3DReconstruction](Grains3DReconstruction_py.html), [Grains3DSmoothing](Grains3DSmoothing_py.html), [NeperInterface](NeperInterface_py.html), [Dream3dGrains](Dream3dGrains_py.html), [S2FunPlotting](S2FunPlotting_py.html)

MATLAB's [setCamera](setCamera.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spaceplot.py#L115">source</a></font>
{% endraw %}
