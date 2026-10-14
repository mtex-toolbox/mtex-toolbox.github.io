---
title: 'SO3Fun.calcMIndex'
sidebar: function_reference_sidebar
permalink: SO3Fun.calcMIndex_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.calcMIndex.html
status: Reference
---
{% raw %}
the M-index of an ODF by Skemer et al., computed from the ODF instead of a discrete
number of orientations; MATLAB's calcMIndex

## Syntax

<div class="mx-form" markdown="1">

```python
mi = calcMIndex(odf)
```

The M-index.

</div>

<div class="mx-form" markdown="1">

```python
mi = calcMIndex(odf, resolution=2*degree)
```

Angle distributions on a coarser grid.

</div>

## Description

The M-index is half the total variation between the misorientation angle distributions of
the uniform and of the uncorrelated misorientation distribution, calcMDF(odf): zero for a
random texture, one for a single crystal.

## Input

| `odf` | SO3Fun |

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `1*degree` | the step of the angle distributions |

## Output

| `mi` | the M-index, a number between 0 and 1 |

## References

- P. Skemer, I. Katayama, Z. Jiang, S.-I. Karato, The misorientation index: development of a new method for calculating the strength of lattice-preferred orientation, Tectonophysics 411 (2005) 157-167
- H. Schaeben, Comment on "The misorientation index", Tectonophysics 441 (2007) 115-117
- D. Mainprice, F. Bachmann, R. Hielscher, H. Schaeben, Descriptive tools for the analysis of texture projects with large datasets using MTEX: strength, symmetry and components, Geological Society, London, Special Publications 409 (2014)

## See also

[calcMDF](SO3Fun.calcMDF_py.html), [calcAngleDistribution](SO3Fun.calcAngleDistribution_py.html), [textureIndex](textureIndex_py.html)

MATLAB's [SO3Fun.calcMIndex](SO3Fun.calcMIndex.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L346">source</a></font>
{% endraw %}
