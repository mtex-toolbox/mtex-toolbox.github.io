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

Stretched to twice its length along d:

```python
F = deformationGradientTensor.uniaxial(d)
```

By the factor 3:

```python
F = deformationGradientTensor.uniaxial(d, 3)
```

The directions perpendicular to d are shortened by one over the square root of rate; a
rate below one compresses. The tensor is in the frame of d.

## Input

| | |
|---|---|
| `d` | vector3d or Miller, the direction of the stretch |

## Output

| | |
|---|---|
| `F` | deformationGradientTensor |

## Keywords

| | default | |
|---|---|---|
| `rate` | `2.0` | the stretch along d |

## See also

[deformationGradientTensor.pureShear](deformationGradientTensor.pureShear_py.html), [deformationGradientTensor.simpleShear](deformationGradientTensor.simpleShear_py.html), [velocityGradientTensor.uniaxial](velocityGradientTensor.uniaxial_py.html)

MATLAB's [deformationGradientTensor.uniaxial](deformationGradientTensor.uniaxial.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L164">source</a></font>
{% endraw %}
