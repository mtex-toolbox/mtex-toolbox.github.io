---
title: 'refractiveIndexTensor.birefringence'
sidebar: function_reference_sidebar
permalink: refractiveIndexTensor.birefringence_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: refractiveIndexTensor.birefringence.html
status: Reference
---
{% raw %}
A method of [refractiveIndexTensor](refractiveIndexTensor_index_py.html).

the birefringence for light propagating along vprop, the difference of the two refractive
indices, and the polarisation axes of the fast and the slow wave; MATLAB's birefringence

## Syntax

<div class="mx-form" markdown="1">

```python
n, pMin, pMax = rI.birefringence(vprop)
```

At the propagation directions.

</div>

<div class="mx-form" markdown="1">

```python
n, pMin, pMax = rI.birefringence()
```

A function on the sphere and two axis fields.

</div>

## Description

Light entering an anisotropic crystal along vprop splits into two waves polarised
perpendicular to each other and to vprop, the fast one of the lower and the slow one of
the higher refractive index. At a list of directions the differences are an array and the
axes lists of axes; without a direction the difference is a function of the propagation
direction and the axes are axis fields. MATLAB's fourth and fifth outputs, the two indices
nMin and nMax, are not returned.

## Input

| `rI` | refractiveIndexTensor |
| `vprop` | vector3d or Miller, the propagation directions in the frame of rI |

## Output

| `n` | the birefringence nMax - nMin, or an S2Fun of the propagation direction |
| `pMin` | the polarisation axis of the lower index, the fast wave, or an axis field |
| `pMax` | the polarisation axis of the higher index, the slow wave, or an axis field |

## See also

[refractiveIndexTensor.opticalAxis](refractiveIndexTensor.opticalAxis_py.html), [spectralTransmission](refractiveIndexTensor.spectralTransmission_py.html), [BirefringenceDemo](BirefringenceDemo_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
refractiveIndexTensor.birefringence(rI, vprop=None)
```

</div>

## Used on

[BirefringenceDemo](BirefringenceDemo_py.html)

MATLAB's [refractiveIndexTensor.birefringence](refractiveIndexTensor.birefringence.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/optics.py#L66">source</a></font>
{% endraw %}
