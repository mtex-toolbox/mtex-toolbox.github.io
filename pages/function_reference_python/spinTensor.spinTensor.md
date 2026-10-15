---
title: 'spinTensor.spinTensor'
sidebar: function_reference_sidebar
permalink: spinTensor.spinTensor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: spinTensor.spinTensor.html
status: Reference
---
{% raw %}
spinTensor(M), or spinTensor(v) the skew matrix of a rotation vector, in its frame

## Syntax

<div class="mx-form" markdown="1">

```python
spinTensor(M, *args, **kwargs)
```

</div>

## Input

| `M` | vector3d axial vectors, numeric (..., 3) vector coordinates, or (..., 3, 3) matrices |
| `args` | optional reference frame |
| `kwargs` | tensor constructor options, including frame and unit |

## Used on

[SingleSlipModel](SingleSlipModel_py.html), [RotationSpinTensor](RotationSpinTensor_py.html), [RotationTangentSpace](RotationTangentSpace_py.html)

MATLAB's [spinTensor.spinTensor](spinTensor.spinTensor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1631">source</a></font>
{% endraw %}
