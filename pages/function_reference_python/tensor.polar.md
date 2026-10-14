---
title: 'tensor.polar'
sidebar: function_reference_sidebar
permalink: tensor.polar_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: tensor.polar.html
status: Reference
---
{% raw %}
A method of [tensor](tensor_index_py.html).

factor a rank-two tensor into an orthogonal part and symmetric stretch tensors

## Syntax

<div class="mx-form" markdown="1">

```python
R, SL, SR = T.polar()
```

</div>

## Description

The factors satisfy `T = R * SR = SL * R`. SR acts before the rotation and SL after it.
The decomposition uses a singular value decomposition; for a deformation with positive
determinant R is a proper rotation matrix. Factors retain the tensor frame and array shape.

## Output

| `R` | orthogonal rank-two tensor |
| `SL` | left symmetric stretch tensor |
| `SR` | right symmetric stretch tensor |

## See also

[tensor.svd](tensor.svd_py.html), [deformationGradientTensor](deformationGradientTensor_index_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
tensor.polar(self)
```

</div>

MATLAB's [tensor.polar](tensor.polar.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L642">source</a></font>
{% endraw %}
