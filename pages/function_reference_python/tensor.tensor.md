---
title: 'tensor.tensor'
sidebar: function_reference_sidebar
permalink: tensor.tensor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: tensor.tensor.html
status: Reference
---
{% raw %}
a tensor of rank R in a reference frame, or a list of them

## Syntax

```python
tensor(M, *args, rank=None, doubleConvention=None, frame=None, density=None, unit=None, name=None, Kelvin=False, dtype=None)
```

frame= gives the frame as a keyword, name=, unit= and density= are carried along, and
Kelvin=True reads a 6 x 6 matrix in the Kelvin (Mandel) notation.


```python
T = tensor(M, cs)                         # the coefficients, the list dimensions in front
T = tensor(M, cs, rank=2, name='strain', unit='%')
T = tensor(v), tensor(rot)                # a vector as a rank one, a rotation as a rank two
T = tensor(V, rank=4)                     # a 6 x 6 Voigt matrix
T = tensor(V, rank=4, doubleConvention=True)   # with the factors of two of the compliance
T.M, T.rank, T.frame, T.CS, T.isSymmetric
```

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html), [TensorArithmetics](TensorArithmetics_py.html), [TensorDefinition](TensorDefinition_py.html), [TensorVisualisation](TensorVisualisation_py.html)

MATLAB's [tensor.tensor](tensor.tensor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L134">source</a></font>
{% endraw %}
