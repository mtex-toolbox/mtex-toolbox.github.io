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
RGB row per index of an array, NaN where the index is negative or NaN; MATLAB's ind2color

## Syntax

<div class="mx-form" markdown="1">

```python
rgb = ind2color(i)
```

One colour of the order of MTEX's preference.

</div>

<div class="mx-form" markdown="1">

```python
rgb = ind2color(ids, 'ordered')
```

The order in which neighbouring ids get related colours.

</div>

<div class="mx-form" markdown="1">

```python
rgb = ind2color(ids, cmap)
```

A matrix of colours as the order.

</div>

## Description

The order has 24 colours and repeats beyond them, so that the phases or grains numbered by
the indices are told apart.

## Input

| `i` | an index, or an array of them |

## Keywords

| keyword | default | description |
|---|---|---|
| `cmap` | `None` | 'ordered' for MATLAB's order of related neighbours, or a matrix of colours |

## Output

| `rgb` | an rgb triplet, or one row per index |

## See also

[vega20](vega20_py.html), [num2rgb](num2rgb_py.html)

## Used on

[OrientationFibre](OrientationFibre_py.html), [OrientationStandard](OrientationStandard_py.html), [ClusterDemo](ClusterDemo_py.html), [DensityEstimation](DensityEstimation_py.html), [RandomSampling](RandomSampling_py.html), [GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [MaParentGrainReconstructionAdvanced](MaParentGrainReconstructionAdvanced_py.html), [MartensiteVariants](MartensiteVariants_py.html), [ParentChildVariants](ParentChildVariants_py.html), [SO3FunConcept](SO3FunConcept_py.html)

MATLAB's [ind2color](ind2color.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/colormaps.py#L266">source</a></font>
{% endraw %}
