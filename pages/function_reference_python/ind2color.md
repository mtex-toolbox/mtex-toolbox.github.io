---
title: 'ind2color'
sidebar: function_reference_sidebar
permalink: ind2color_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: ind2color.html
status: Reference
---
{% raw %}
the colour of the index i in MTEX's colour order, counting from 0 (MATLAB counts from 1); an
RGB row per index of an array, NaN where the index is negative or NaN

## Syntax

```python
ind2color(i, cmap=None)
```

```python
ind2color(i)
ind2color(ids, 'ordered')     the order in which neighbouring ids get related colours
ind2color(ids, cmap)          a matrix of colours as the order
```

## Used on

[OrientationFibre](OrientationFibre_py.html), [OrientationStandard](OrientationStandard_py.html), [ClusterDemo](ClusterDemo_py.html), [DensityEstimation](DensityEstimation_py.html), [RandomSampling](RandomSampling_py.html), [GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [MaParentGrainReconstructionAdvanced](MaParentGrainReconstructionAdvanced_py.html), [MartensiteVariants](MartensiteVariants_py.html), [ParentChildVariants](ParentChildVariants_py.html), [SO3FunConcept](SO3FunConcept_py.html)

MATLAB's [ind2color](ind2color.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/colormaps.py#L195">source</a></font>
{% endraw %}
