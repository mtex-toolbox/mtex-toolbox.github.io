---
title: 'tensor.colon'
sidebar: function_reference_sidebar
permalink: tensor.colon_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: tensor.colon.html
status: Reference
---
{% raw %}
the double contraction A : B, the last two indices of A against the first two of B,
MATLAB's A:B

## Syntax

A stiffness and a strain give a stress:

```python
sigma = colon(C, eps)
```

Two rank two tensors a number:

```python
s = colon(sigma, eps)
```

## Signature

```python
colon(A, B)
```

## Used on

[AnisotropicTheory](AnisotropicTheory_py.html), [IsotropicTheory](IsotropicTheory_py.html), [SingleSlipModel](SingleSlipModel_py.html), [TensorArithmetics](TensorArithmetics_py.html)

MATLAB's [tensor.colon](tensor.colon.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1003">source</a></font>
{% endraw %}
