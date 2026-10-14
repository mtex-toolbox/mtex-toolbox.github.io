---
title: 'quaternion.scatter'
sidebar: function_reference_sidebar
permalink: quaternion.scatter_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.scatter.html
status: Reference
---
{% raw %}
scatter(v), scatter(v, data), scatter(v, label=texts): directions as markers; scatter(ori)
puts orientations into axis angle space; scatter(x, y, sz, c, 'filled') of two coordinate
lists marks points on the current map

## Syntax

```python
scatter(v, data=None, *args, minmax=False, symmetrised=False, colorbar=False, **kw)
```

## Used on

[EBSDOrientationPlots](EBSDOrientationPlots_py.html), [ClusterDemo](ClusterDemo_py.html), [BoundaryIntersections](BoundaryIntersections_py.html), [TwinningBoundaries](TwinningBoundaries_py.html), [Annotations](Annotations_py.html), [CombinedPlots](CombinedPlots_py.html), [PlotTypes](PlotTypes_py.html), [RotationPlotting](RotationPlotting_py.html), [S2FunApproximationInterpolation](S2FunApproximationInterpolation_py.html), [S2FunSampling](S2FunSampling_py.html), [VectorsImport](VectorsImport_py.html), [VectorsOperations](VectorsOperations_py.html)

MATLAB's [quaternion.scatter](quaternion.scatter.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L839">source</a></font>
{% endraw %}
