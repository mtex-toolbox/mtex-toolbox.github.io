---
title: 'The class deformationGradientTensor'
sidebar: function_reference_sidebar
permalink: deformationGradientTensor_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: deformationGradientTensor_index.html
status: Reference
---
{% raw %}
a deformation gradient tensor F, the rank two tensor carrying a line segment dX of the
undeformed body into dx = F dX of the deformed one

## Syntax

By its 3 x 3 matrix:

```python
F = deformationGradientTensor(M)
```

A uniaxial deformation along d:

```python
F = deformationGradientTensor.uniaxial(d, rate)
```

Simple shear along d on the plane n:

```python
F = deformationGradientTensor.simpleShear(d, n, e)
```

```python
F = deformationGradientTensor.pureShear(ex, comp, lam) # pure shear, extension along ex
```

The deformation gradient holds the full local rotation and stretch of the material; a volume
preserving deformation has det F = 1. Its strains are F.GreenStrain() and F.CauchyStrain().

## Input

| | |
|---|---|
| `M` | 3 x 3 matrix, or an array (..., 3, 3) of them |
| `d, n` | vector3d, the shear direction and the shear plane normal |
| `rate, e` | the amount of deformation |
| `ex, comp` | vector3d, the extension and the compression direction |
| `lam` | the stretch |

## Output

| | |
|---|---|
| `F` | deformationGradientTensor |

## Keywords

| | default | |
|---|---|---|
| `rank` |  | the rank of the tensor; for this class always two |
| `doubleConvention` |  | read and write a Voigt matrix with the factors of two off the diagonal |
| `frame` |  | the reference frame of the coefficients, instead of giving it positionally |
| `density` |  | the mass density of the material, carried along |
| `unit` |  | the physical unit of the coefficients, a string carried along |
| `name` |  | the name of the tensor, carried along |
| `Kelvin` |  | read a 6 x 6 matrix in the Kelvin (Mandel) notation |
| `dtype` |  | the NumPy type of the coefficients |

## See also

[tensor](tensor_index_py.html), [velocityGradientTensor](velocityGradientTensor_index_py.html), [strainTensor](strainTensor_index_py.html)

## Members

| | |
|---|---|
| [CauchyStrain](deformationGradientTensor.CauchyStrain_py.html) | the Cauchy (small) strain of a deformation gradient, its symmetric part less the identity |
| [deformationGradientTensor](deformationGradientTensor.deformationGradientTensor_py.html) | a deformation gradient tensor F, the rank two tensor carrying a line segment dX of the undeformed body into dx = F dX of the deformed one |
| [GreenStrain](deformationGradientTensor.GreenStrain_py.html) | the Green-Lagrange strain of a deformation gradient, (F^T F - I) / 2 |
| [logm](deformationGradientTensor.logm_py.html) | the matrix logarithm of a rank two tensor, or of a rank four one through its Kelvin matrix, the class kept |
| [pureShear](deformationGradientTensor.pureShear_py.html) | the deformation gradient of a pure shear, stretched by lam along ext and shortened by 1 / lam along comp |
| [simpleShear](deformationGradientTensor.simpleShear_py.html) | the deformation gradient of a simple shear along d on the plane n by the angle gamma, I + tan(gamma) d n^T |
| [uniaxial](deformationGradientTensor.uniaxial_py.html) | the deformation gradient of a uniaxial stretch along d, the volume kept |

MATLAB's [deformationGradientTensor_index](deformationGradientTensor_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1352">source</a></font>
{% endraw %}
