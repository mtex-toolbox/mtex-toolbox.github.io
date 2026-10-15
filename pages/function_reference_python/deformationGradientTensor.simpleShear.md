---
title: 'deformationGradientTensor.simpleShear'
sidebar: function_reference_sidebar
permalink: deformationGradientTensor.simpleShear_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: deformationGradientTensor.simpleShear.html
status: Reference
---
{% raw %}
A method of [deformationGradientTensor](deformationGradientTensor_index_py.html).

the deformation gradient of a simple shear along d on the plane n by the angle gamma,
I + tan(gamma) d n^T; MATLAB's deformationGradientTensor.simpleShear

## Syntax

<div class="mx-form" markdown="1">

```python
F = deformationGradientTensor.simpleShear(d, n)
```

Sheared by 45 degree.

</div>

<div class="mx-form" markdown="1">

```python
F = deformationGradientTensor.simpleShear(d, n, 30*degree)
```

By 30 degree.

</div>

## Input

| `d` | vector3d or Miller, the shear direction |
| `n` | vector3d or Miller, the normal of the shear plane |

## Keywords

| keyword | default | description |
|---|---|---|
| `gamma` | `45*degree` | the shear angle in radians |

## Output

| `F` | deformationGradientTensor |

## See also

[deformationGradientTensor.pureShear](deformationGradientTensor.pureShear_py.html), [velocityGradientTensor.simpleShear](velocityGradientTensor.simpleShear_py.html)

MATLAB's [deformationGradientTensor.simpleShear](deformationGradientTensor.simpleShear.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L299">source</a></font>
{% endraw %}
