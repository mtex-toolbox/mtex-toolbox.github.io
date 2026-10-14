---
title: 'strainRateTensor.strainRateTensor'
sidebar: function_reference_sidebar
permalink: strainRateTensor.strainRateTensor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: strainRateTensor.strainRateTensor.html
status: Reference
---
{% raw %}
a rank two symmetric strain rate tensor, the symmetric part of a velocity gradient, in the
double convention of the Voigt notation

## Syntax

<div class="mx-form" markdown="1">

```python
E = strainRateTensor(M)
```

By its 3 x 3 matrix.

</div>

<div class="mx-form" markdown="1">

```python
E = strainRate(L)
```

The symmetric part of a velocity gradient.

</div>

## Description

Only the symmetric part of the matrix given is kept, as MATLAB's constructor does, so that
strainRateTensor(L) of a velocity gradient is strainRate(L).

## Input

| `M` | 3 x 3 matrix, or an array (..., 3, 3) of them |

## Keywords

| keyword | default | description |
|---|---|---|
| `rank` | `None` | the rank of the tensor; for this class always two |
| `doubleConvention` | `None` | read and write a Voigt matrix with the factors of two off the diagonal |
| `frame` | `None` | the reference frame of the coefficients, instead of giving it positionally |
| `density` | `None` | the mass density of the material, carried along |
| `unit` | `None` | the physical unit of the coefficients, a string carried along |
| `name` | `None` | the name of the tensor, carried along |
| `Kelvin` | `False` | read a 6 x 6 matrix in the Kelvin (Mandel) notation |
| `dtype` | `None` | the NumPy type of the coefficients |

## Output

| `E` | strainRateTensor |

## See also

[tensor](tensor_index_py.html), [velocityGradientTensor](velocityGradientTensor_index_py.html), [strainTensor](strainTensor_index_py.html), [velocityGradientTensor.strainRate](velocityGradientTensor.strainRate_py.html)

## Used on

[SingleSlipModel](SingleSlipModel_py.html)

MATLAB's [strainRateTensor.strainRateTensor](strainRateTensor.strainRateTensor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1316">source</a></font>
{% endraw %}
