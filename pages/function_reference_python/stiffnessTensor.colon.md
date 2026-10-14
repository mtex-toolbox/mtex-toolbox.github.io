---
title: 'stiffnessTensor.colon'
sidebar: function_reference_sidebar
permalink: stiffnessTensor.colon_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: stiffnessTensor.colon.html
status: Reference
---
{% raw %}
the double contraction A : B, the last two indices of A against the first two of B,
MATLAB's A:B

## Syntax

```python
colon(A, B)
```

```python
sigma = colon(C, eps)       # a stiffness and a strain give a stress
s = colon(sigma, eps)       # two rank two tensors a number
```

## Used on

[AnisotropicTheory](AnisotropicTheory_py.html), [IsotropicTheory](IsotropicTheory_py.html), [SingleSlipModel](SingleSlipModel_py.html), [TensorArithmetics](TensorArithmetics_py.html)

MATLAB's [stiffnessTensor.colon](stiffnessTensor.colon.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L937">source</a></font>
{% endraw %}
