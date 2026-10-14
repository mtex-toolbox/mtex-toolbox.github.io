---
title: 'dislocationDensityTensor.dislocationDensityTensor'
sidebar: function_reference_sidebar
permalink: dislocationDensityTensor.dislocationDensityTensor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: dislocationDensityTensor.dislocationDensityTensor.html
status: Reference
---
{% raw %}
the dislocation density or Nye tensor, the rank two tensor derived from the curvature
tensor of an orientation field

## Syntax

By its 3 x 3 matrix in a crystal frame:

```python
alpha = dislocationDensityTensor(M, cs)
```

From a curvature tensor:

```python
alpha = dislocationDensity(kappa)
```

Fitting it against a list of dislocationSystem gives the densities of the geometrically
necessary dislocations, calcGND. Constructed from a curvatureTensor, the coefficients are
taken over as they are; dislocationDensity(kappa) computes the tensor from the curvature.

## Input

| | |
|---|---|
| `M` | 3 x 3 matrix, or an array (..., 3, 3) of them |
| `cs` | crystalFrame the coefficients refer to |

## Output

| | |
|---|---|
| `alpha` | dislocationDensityTensor |

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

[tensor](tensor_index_py.html), [curvatureTensor](curvatureTensor_index_py.html), [dislocationSystem](dislocationSystem_index_py.html), [calcGND](calcGND_py.html)

MATLAB's [dislocationDensityTensor.dislocationDensityTensor](dislocationDensityTensor.dislocationDensityTensor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1336">source</a></font>
{% endraw %}
