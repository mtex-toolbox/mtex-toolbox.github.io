---
title: 'stressTensor.stressTensor'
sidebar: function_reference_sidebar
permalink: stressTensor.stressTensor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: stressTensor.stressTensor.html
status: Reference
---
{% raw %}
a rank two symmetric stress tensor, or a list of them

## Syntax

By its 3 x 3 matrix:

```python
sigma = stressTensor(M)
```

The uniaxial tension along a direction:

```python
sigma = stressTensor.uniaxial(vector3d.X)
```

Of a given magnitude:

```python
sigma = stressTensor.uniaxial(v, 2)
```

The stress is a symmetric tensor of rank two in the frame given, by default the specimen
frame; the resolved shear stress on a slip system, SchmidFactor, and the equivalent stress
are computed from it.

## Input

| | |
|---|---|
| `M` | 3 x 3 symmetric matrix, or an array (..., 3, 3) of them |
| `v` | vector3d, the direction of a uniaxial tension |

## Output

| | |
|---|---|
| `sigma` | stressTensor |

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

[tensor](tensor_index_py.html), [strainTensor](strainTensor_index_py.html), [slipSystem.SchmidFactor](slipSystem.SchmidFactor_py.html), [stressTensor.equivalentStress](stressTensor.equivalentStress_py.html)

## Used on

[IsotropicTheory](IsotropicTheory_py.html)

MATLAB's [stressTensor.stressTensor](stressTensor.stressTensor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1101">source</a></font>
{% endraw %}
