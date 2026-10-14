---
title: 'curvatureTensor.curvatureTensor'
sidebar: function_reference_sidebar
permalink: curvatureTensor.curvatureTensor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: curvatureTensor.curvatureTensor.html
status: Reference
---
{% raw %}
the lattice curvature tensor, the rank two tensor of the spatial derivatives of the
orientation field

## Syntax

<div class="mx-form" markdown="1">

```python
kappa = curvatureTensor(M, cs)
```

By its 3 x 3 matrix in a crystal frame.

</div>

<div class="mx-form" markdown="1">

```python
kappa = ebsd.curvature()
```

From the orientation gradients of a map.

</div>

## Description

The curvature is what the dislocation density tensor is derived from,
dislocationDensity(kappa). A map of the plane gives no derivative along z, so the third
column of a curvature computed from it is NaN.

## Input

| `M` | 3 x 3 matrix, or an array (..., 3, 3) of them |
| `cs` | crystalFrame the coefficients refer to |

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

| `kappa` | curvatureTensor |

## See also

[tensor](tensor_index_py.html), [dislocationDensityTensor](dislocationDensityTensor_index_py.html), [EBSD.curvature](EBSD.curvature_py.html), [curvatureTensor.dislocationDensity](curvatureTensor.dislocationDensity_py.html)

MATLAB's [curvatureTensor.curvatureTensor](curvatureTensor.curvatureTensor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1466">source</a></font>
{% endraw %}
