---
title: 'deformationGradientTensor.deformationGradientTensor'
sidebar: function_reference_sidebar
permalink: deformationGradientTensor.deformationGradientTensor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: deformationGradientTensor.deformationGradientTensor.html
status: Reference
---
{% raw %}
a deformation gradient tensor F, the rank two tensor carrying a line segment dX of the
undeformed body into dx = F dX of the deformed one

## Syntax

<div class="mx-form" markdown="1">

```python
F = deformationGradientTensor(M)
```

By its 3 x 3 matrix.

</div>

<div class="mx-form" markdown="1">

```python
F = deformationGradientTensor.uniaxial(d, rate)
```

A uniaxial deformation along d.

</div>

<div class="mx-form" markdown="1">

```python
F = deformationGradientTensor.simpleShear(d, n, e)
```

Simple shear along d on the plane n.

</div>

<div class="mx-form" markdown="1">

```python
F = deformationGradientTensor.pureShear(ex, comp, lam) # pure shear, extension along ex
```

</div>

## Description

The deformation gradient holds the full local rotation and stretch of the material; a volume
preserving deformation has det F = 1. Its strains are F.GreenStrain() and F.CauchyStrain().

## Input

| `M` | 3 x 3 matrix, or an array (..., 3, 3) of them |
| `d, n` | vector3d, the shear direction and the shear plane normal |
| `rate, e` | the amount of deformation |
| `ex, comp` | vector3d, the extension and the compression direction |
| `lam` | the stretch |

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

| `F` | deformationGradientTensor |

## See also

[tensor](tensor_index_py.html), [velocityGradientTensor](velocityGradientTensor_index_py.html), [strainTensor](strainTensor_index_py.html)

MATLAB's [deformationGradientTensor.deformationGradientTensor](deformationGradientTensor.deformationGradientTensor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1352">source</a></font>
{% endraw %}
