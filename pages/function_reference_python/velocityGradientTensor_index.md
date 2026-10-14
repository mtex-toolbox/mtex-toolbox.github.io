---
title: 'The class velocityGradientTensor'
sidebar: function_reference_sidebar
permalink: velocityGradientTensor_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: velocityGradientTensor_index.html
status: Reference
---
{% raw %}
a velocity gradient tensor L, the rank two tensor of the spatial derivatives of the velocity

## Syntax

<div class="mx-form" markdown="1">

```python
L = velocityGradientTensor(M)
```

By its 3 x 3 matrix.

</div>

<div class="mx-form" markdown="1">

```python
L = velocityGradientTensor.uniaxial(d, q)
```

A uniaxial flow along d.

</div>

<div class="mx-form" markdown="1">

```python
L = velocityGradientTensor.simpleShear(d, n, e)
```

Simple shear along d on the plane n.

</div>

## Description

Its symmetric part is the strain rate, strainRate(L), its skew symmetric part the spin,
spin(L). A solid does not compress, so every velocity gradient of one has trace zero.

## Input

| `M` | 3 x 3 matrix, or an array (..., 3, 3) of them |
| `d, n` | vector3d, the flow direction and the shear plane normal |
| `q` | the share of the contraction across the second axis, 0.5 for an axially symmetric flow |
| `e` | the strain rate |

## Keywords

| keyword | default | description |
|---|---|---|
| `rank` |  | the rank of the tensor; for this class always two |
| `doubleConvention` |  | read and write a Voigt matrix with the factors of two off the diagonal |
| `frame` |  | the reference frame of the coefficients, instead of giving it positionally |
| `density` |  | the mass density of the material, carried along |
| `unit` |  | the physical unit of the coefficients, a string carried along |
| `name` |  | the name of the tensor, carried along |
| `Kelvin` |  | read a 6 x 6 matrix in the Kelvin (Mandel) notation |
| `dtype` |  | the NumPy type of the coefficients |

## Output

| `L` | velocityGradientTensor |

## See also

[tensor](tensor_index_py.html), [strainRateTensor](strainRateTensor_index_py.html), [spinTensor](spinTensor_index_py.html), [deformationGradientTensor](deformationGradientTensor_index_py.html)

## Members

| [angularVelocityVector](velocityGradientTensor.angularVelocityVector_py.html) | the angular velocity of a velocity gradient, the axial vector of its antisymmetric part |
| [axisRatios](velocityGradientTensor.axisRatios_py.html) | the differences of the principal values, largest first |
| [calcTaylor](velocityGradientTensor.calcTaylor_py.html) | the Taylor factor, the shears of the slip systems and the plastic spin of a strain the crystal accommodates by slip alone |
| [equivalentStrain](velocityGradientTensor.equivalentStrain_py.html) | the von Mises equivalent strain, sqrt(2/3 e:e) of the deviatoric strain e |
| [expm](velocityGradientTensor.expm_py.html) | the matrix exponential of a rank two tensor, or of a rank four one through its Kelvin matrix, the class kept |
| [polar](velocityGradientTensor.polar_py.html) | the polar decomposition T = R SR = SL R of a rank two tensor, R orthogonal, SL and SR symmetric |
| [rotationRate](velocityGradientTensor.rotationRate_py.html) | the rotation rate of a velocity gradient, the length of its angular velocity vector |
| [simpleShear](velocityGradientTensor.simpleShear_py.html) | the velocity gradient of a simple shear along d on the plane n, 2 e d n^T |
| [spin](velocityGradientTensor.spin_py.html) | the spin tensor of a velocity gradient, its antisymmetric part |
| [strainRate](velocityGradientTensor.strainRate_py.html) | the symmetric part of a velocity gradient is the strain rate, the antisymmetric one the spin, whose axial vector is the angular velocity |
| [uniaxial](velocityGradientTensor.uniaxial_py.html) | the velocity gradient of a uniaxial tension along d, of unit rate along it |
| [velocityGradientTensor](velocityGradientTensor.velocityGradientTensor_py.html) | a velocity gradient tensor L, the rank two tensor of the spatial derivatives of the velocity |
| [vorticity](velocityGradientTensor.vorticity_py.html) | the vorticity of a velocity gradient, its rotation rate over the magnitude of its strain rate |

MATLAB's [velocityGradientTensor_index](velocityGradientTensor_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1405">source</a></font>
{% endraw %}
