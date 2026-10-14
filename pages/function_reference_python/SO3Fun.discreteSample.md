---
title: 'SO3Fun.discreteSample'
sidebar: function_reference_sidebar
permalink: SO3Fun.discreteSample_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.discreteSample.html
status: Reference
---
{% raw %}
the nodes of a grid drawn with probability proportional to f, moved by a random rotation
within the grid resolution and by a random element of each group; a radial basis function
exactly: a centre by its weight, the angle by inverse transform of the kernel density, a
uniform axis, a group element on each side; a Bingham distribution exactly by rejection; a
sum of kernel forms term by term

## Syntax

```python
discreteSample(f, n, resolution=None, rng=None, withoutReplacement=False, range=(0, 1))
```

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html), [ClusterDemo](ClusterDemo_py.html), [DensityEstimation](DensityEstimation_py.html), [OptimalKernel](OptimalKernel_py.html), [BoundaryPlots](BoundaryPlots_py.html), [CSLBoundaries](CSLBoundaries_py.html), [BinghamODFs](BinghamODFs_py.html), [DetectionOfSampleSymmetry](DetectionOfSampleSymmetry_py.html), [FibreODFs](FibreODFs_py.html), [RandomSampling](RandomSampling_py.html), [CombinedPlots](CombinedPlots_py.html), [PlotTypes](PlotTypes_py.html)

MATLAB's [SO3Fun.discreteSample](SO3Fun.discreteSample.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L735">source</a></font>
{% endraw %}
