---
title: 'strainTensor.strainTensor'
sidebar: function_reference_sidebar
permalink: strainTensor.strainTensor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: strainTensor.strainTensor.html
status: Reference
---
{% raw %}
a rank two symmetric strain tensor, in the double convention of the Voigt notation; type= says
whether it refers to the undeformed configuration, 'Lagrange' (the default), or to the deformed
one, 'Euler', MATLAB's strainTensor(M, 'type', 'Euler'), and is kept by everything derived from it

## Syntax

<div class="mx-form" markdown="1">

```python
eps = strainTensor(M)
eps = strainTensor(M, cs)
eps = strainTensor(np.diag([1, 0, -1]))
eps = strainTensor(M, type='Euler')
eps.type
```

</div>

## Signature

<div class="mx-form" markdown="1">

```python
strainTensor(M, *args, type=None, **kwargs)
```

</div>

## Used on

[AnisotropicTheory](AnisotropicTheory_py.html), [SachsModel](SachsModel_py.html), [TaylorHex](TaylorHex_py.html), [TaylorModel](TaylorModel_py.html), [TextureEvolution](TextureEvolution_py.html), [SO3FunVectorField](SO3FunVectorField_py.html), [TensorArithmetics](TensorArithmetics_py.html), [TensorDefinition](TensorDefinition_py.html)

MATLAB's [strainTensor.strainTensor](strainTensor.strainTensor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1298">source</a></font>
{% endraw %}
