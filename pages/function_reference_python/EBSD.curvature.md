---
title: 'EBSD.curvature'
sidebar: function_reference_sidebar
permalink: EBSD.curvature_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.curvature.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the curvature tensor of every pixel, kappa = d omega / d x, in the specimen frame per scan
unit; MATLAB's EBSD.curvature, the incomplete curvature tensor

## Syntax

<div class="mx-form" markdown="1">

```python
kappa = curvature(ebsd)
```

From one sided differences.

</div>

<div class="mx-form" markdown="1">

```python
kappa = curvature(ebsd, stencil='full')
```

From the least squares fit with the diagonals.

</div>

## Description

Its rows are the components of the rotation vector and its columns the directions of the
specimen, assembled from the gradient along the two axes of the plane of the map. A two
dimensional map says nothing about how the orientation changes along its normal, so every
column the normal reaches is unknown and NaN.

## Input

| `ebsd` | EBSD of one phase |

## Keywords

| keyword | default | description |
|---|---|---|
| `stencil` | `'oneSided'` | 'oneSided', 'lattice' ('1hop') or 'full', passed to gradient |

## Output

| `kappa` | curvatureTensor, of the shape of the map |

## See also

[gradient](gradient_py.html), [calcGND](calcGND_py.html), [dislocationDensityTensor](dislocationDensityTensor_index_py.html)

MATLAB's [EBSD.curvature](EBSD.curvature.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L346">source</a></font>
{% endraw %}
