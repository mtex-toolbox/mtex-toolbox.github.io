---
title: 'deformationGradientTensor.uniaxial'
sidebar: function_reference_sidebar
permalink: deformationGradientTensor.uniaxial_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: deformationGradientTensor.uniaxial.html
status: Reference
---
{% raw %}
A method of [deformationGradientTensor](deformationGradientTensor_index_py.html).

the deformation gradient of a uniaxial stretch along d, the volume kept; MATLAB's
deformationGradientTensor.uniaxial

## Syntax

<div class="mx-form" markdown="1">

```python
F = deformationGradientTensor.uniaxial(d)
```

Stretched to twice its length along d.

</div>

<div class="mx-form" markdown="1">

```python
F = deformationGradientTensor.uniaxial(d, 3)
```

By the factor 3.

</div>

## Description

The directions perpendicular to d are shortened by one over the square root of rate; a
rate below one compresses. The tensor is in the frame of d.

## Input

| `d` | vector3d or Miller, the direction of the stretch |

## Keywords

| keyword | default | description |
|---|---|---|
| `rate` | `2.0` | the stretch along d |

## Output

| `F` | deformationGradientTensor |

## See also

[deformationGradientTensor.pureShear](deformationGradientTensor.pureShear_py.html), [deformationGradientTensor.simpleShear](deformationGradientTensor.simpleShear_py.html), [velocityGradientTensor.uniaxial](velocityGradientTensor.uniaxial_py.html)

MATLAB's [deformationGradientTensor.uniaxial](deformationGradientTensor.uniaxial.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L249">source</a></font>
{% endraw %}
