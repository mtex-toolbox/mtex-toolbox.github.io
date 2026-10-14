---
title: 'The class strainTensor'
sidebar: function_reference_sidebar
permalink: strainTensor_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: strainTensor_index.html
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

## Input

| `M` | symmetric rank-two coefficients or six-component Voigt vectors, or another tensor |
| `args` | optional reference frame |
| `type` | 'Lagrange' for the reference configuration or 'Euler' for the current configuration |
| `kwargs` | tensor constructor options; engineering Voigt convention is used by default |

## Members

| [axisRatios](strainTensor.axisRatios_py.html) | return signed differences between the principal values of a rank-two tensor |
| [calcTaylor](strainTensor.calcTaylor_py.html) | the Taylor factor, the shears of the slip systems and the plastic spin of a strain the crystal accommodates by slip alone |
| [deviatoricStrain](strainTensor.deviatoricStrain_py.html) | remove the isotropic part of a rank-two stress or strain tensor |
| [equivalentStrain](strainTensor.equivalentStrain_py.html) | compute the von Mises equivalent strain |
| [maxStrain](strainTensor.maxStrain_py.html) | return the largest absolute principal strain of each tensor |
| [norm](strainTensor.norm_py.html) | the Frobenius norm of every tensor, over all its coefficients |
| [octahedralStrain](strainTensor.octahedralStrain_py.html) | compute octahedral shear and normal strain from Green–Lagrange strain |
| [strainTensor](strainTensor.strainTensor_py.html) | a rank two symmetric strain tensor, in the double convention of the Voigt notation |

## Used on

[AnisotropicTheory](AnisotropicTheory_py.html), [SachsModel](SachsModel_py.html), [TaylorHex](TaylorHex_py.html), [TaylorModel](TaylorModel_py.html), [TextureEvolution](TextureEvolution_py.html), [SO3FunVectorField](SO3FunVectorField_py.html), [TensorArithmetics](TensorArithmetics_py.html), [TensorDefinition](TensorDefinition_py.html)

MATLAB's [strainTensor_index](strainTensor_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1451">source</a></font>
{% endraw %}
