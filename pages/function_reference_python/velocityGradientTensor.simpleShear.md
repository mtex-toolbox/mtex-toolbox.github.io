---
title: 'velocityGradientTensor.simpleShear'
sidebar: function_reference_sidebar
permalink: velocityGradientTensor.simpleShear_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: velocityGradientTensor.simpleShear.html
status: Reference
---
{% raw %}
A method of [velocityGradientTensor](velocityGradientTensor_index_py.html).

the velocity gradient of a simple shear along d on the plane n, 2 e d n^T; MATLAB's
velocityGradientTensor.simpleShear

## Syntax

<div class="mx-form" markdown="1">

```python
L = velocityGradientTensor.simpleShear(d, n)
```

Of the strain rate one.

</div>

<div class="mx-form" markdown="1">

```python
L = velocityGradientTensor.simpleShear(d, n, e=1e-3)
```

Of the strain rate 1e-3.

</div>

## Input

| `d` | vector3d or Miller, the shear direction |
| `n` | vector3d or Miller, the normal of the shear plane |

## Keywords

| keyword | default | description |
|---|---|---|
| `e` | `1.0` | the strain rate |

## Output

| `L` | velocityGradientTensor |

## See also

[velocityGradientTensor.uniaxial](velocityGradientTensor.uniaxial_py.html), [deformationGradientTensor.simpleShear](deformationGradientTensor.simpleShear_py.html)

MATLAB's [velocityGradientTensor.simpleShear](velocityGradientTensor.simpleShear.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/mechanics.py#L396">source</a></font>
{% endraw %}
