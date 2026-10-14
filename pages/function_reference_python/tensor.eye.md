---
title: 'tensor.eye'
sidebar: function_reference_sidebar
permalink: tensor.eye_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [tensor](tensor_index_py.html).

the identity tensor, rank two the unit matrix, rank four the symmetric identity on rank two
tensors; the rank of the class unless rank= is given

## Syntax

```python
tensor.eye(*args, rank=None, **kwargs)
```

```python
tensor.eye(cs)
stiffnessTensor.eye()
tensor.eye(rank=4)
```

## Used on

[OrientationDefinition](OrientationDefinition_py.html), [IsotropicTheory](IsotropicTheory_py.html), [SO3FunHarmonicRepresentation](SO3FunHarmonicRepresentation_py.html), [SO3FunVectorValued](SO3FunVectorValued_py.html), [S2FunHarmonicRepresentation](S2FunHarmonicRepresentation_py.html), [S2FunVectorValued](S2FunVectorValued_py.html), [SphericalHarmonics](SphericalHarmonics_py.html), [TensorDefinition](TensorDefinition_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L705">source</a></font>
{% endraw %}
