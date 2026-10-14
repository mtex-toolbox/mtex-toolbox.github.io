---
title: 'tensor.EinsteinSum'
sidebar: function_reference_sidebar
permalink: tensor.EinsteinSum_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: tensor.EinsteinSum.html
status: Reference
---
{% raw %}
the contraction of tensors, vectors, rotations or arrays over the indices they share

## Syntax

<div class="mx-form" markdown="1">

```python
EinsteinSum(C, [1, 2, -1, -2], eps, [-1, -2])     sigma_ij = C_ijkl eps_kl
EinsteinSum(a, [1], b, [2])                        the dyad a_i b_j
EinsteinSum(T, [-1, -2, -1, -2])                   a label twice in one operand is a trace
```

</div>

## Description

Every operand carries one label per index: a positive one is free and orders the result,
a negative one is summed over. Lists of tensors combine elementwise over their leading
dimensions. The result keeps the frame of the first tensor and is a plain tensor, or a
number when no index is free.

## Signature

<div class="mx-form" markdown="1">

```python
EinsteinSum(*args)
```

</div>

## Used on

[AnisotropicTheory](AnisotropicTheory_py.html), [TensorArithmetics](TensorArithmetics_py.html)

MATLAB's [tensor.EinsteinSum](tensor.EinsteinSum.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1031">source</a></font>
{% endraw %}
