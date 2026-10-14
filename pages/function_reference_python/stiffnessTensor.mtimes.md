---
title: 'stiffnessTensor.mtimes'
sidebar: function_reference_sidebar
permalink: stiffnessTensor.mtimes_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: stiffnessTensor.mtimes.html
status: Reference
---
{% raw %}
A method of [stiffnessTensor](stiffnessTensor_index_py.html).

scale a tensor, multiply rank-two tensors, or contract an elastic tensor with a strain

## Syntax

<div class="mx-form" markdown="1">

```python
scaled = T * a
product = A * B
image = A * v
sigma = C * eps
```

</div>

## Description

A numeric operand scales every coefficient. Two rank-two tensors use matrix multiplication;
a rank-two tensor times vector3d gives its vector image. Rank four times rank two performs
a double contraction, with stiffness times strain giving stress. Operands with frames must
be expressed in compatible frames. Leading array dimensions follow NumPy broadcasting.
For a product of corresponding coefficients use T.times(other); for other contractions use
EinsteinSum.

## See also

[tensor.times](tensor.times_py.html), [colon](complianceTensor.colon_py.html), [EinsteinSum](EinsteinSum_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
a * b
```

</div>

MATLAB's [stiffnessTensor.mtimes](stiffnessTensor.mtimes.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L380">source</a></font>
{% endraw %}
