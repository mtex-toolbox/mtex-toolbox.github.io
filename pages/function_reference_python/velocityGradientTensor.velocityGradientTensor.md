---
title: 'velocityGradientTensor.velocityGradientTensor'
sidebar: function_reference_sidebar
permalink: velocityGradientTensor.velocityGradientTensor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: velocityGradientTensor.velocityGradientTensor.html
status: Reference
---
{% raw %}
a velocity gradient tensor L, the rank two tensor of the spatial derivatives of the velocity

## Syntax

By its 3 x 3 matrix:

```python
L = velocityGradientTensor(M)
```

A uniaxial flow along d:

```python
L = velocityGradientTensor.uniaxial(d, q)
```

Simple shear along d on the plane n:

```python
L = velocityGradientTensor.simpleShear(d, n, e)
```

Its symmetric part is the strain rate, strainRate(L), its skew symmetric part the spin,
spin(L). A solid does not compress, so every velocity gradient of one has trace zero.

## Input

| | |
|---|---|
| `M` | 3 x 3 matrix, or an array (..., 3, 3) of them |
| `d, n` | vector3d, the flow direction and the shear plane normal |
| `q` | the share of the contraction across the second axis, 0.5 for an axially symmetric flow |
| `e` | the strain rate |

## Output

| | |
|---|---|
| `L` | velocityGradientTensor |

## Keywords

| | default | |
|---|---|---|
| `rank` | `None` | the rank of the tensor; for this class always two |
| `doubleConvention` | `None` | read and write a Voigt matrix with the factors of two off the diagonal |
| `frame` | `None` | the reference frame of the coefficients, instead of giving it positionally |
| `density` | `None` | the mass density of the material, carried along |
| `unit` | `None` | the physical unit of the coefficients, a string carried along |
| `name` | `None` | the name of the tensor, carried along |
| `Kelvin` | `False` | read a 6 x 6 matrix in the Kelvin (Mandel) notation |
| `dtype` | `None` | the NumPy type of the coefficients |

## See also

[tensor](tensor_index_py.html), [strainRateTensor](strainRateTensor_index_py.html), [spinTensor](spinTensor_index_py.html), [deformationGradientTensor](deformationGradientTensor_index_py.html)

MATLAB's [velocityGradientTensor.velocityGradientTensor](velocityGradientTensor.velocityGradientTensor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1394">source</a></font>
{% endraw %}
