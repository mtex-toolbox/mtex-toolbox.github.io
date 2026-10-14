---
title: 'refractiveIndexTensor.refractiveIndexTensor'
sidebar: function_reference_sidebar
permalink: refractiveIndexTensor.refractiveIndexTensor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: refractiveIndexTensor.refractiveIndexTensor.html
status: Reference
---
{% raw %}
the rank two symmetric refractive index tensor, whose anisotropy makes a crystal
birefringent

## Syntax

By its 3 x 3 matrix in a crystal frame:

```python
rI = refractiveIndexTensor(M, cs)
```

The tensor says how light of a given propagation direction is slowed down by the crystal:
rI.refractiveIndex(v) the indices of the two waves along v, rI.birefringence(v) their
difference, rI.opticalAxis() the directions without birefringence, and
rI.spectralTransmission(v, thickness) the colour of a thin section between crossed
polarisers.

## Input

| | |
|---|---|
| `M` | 3 x 3 symmetric matrix, or an array (..., 3, 3) of them |
| `cs` | crystalFrame the coefficients refer to |

## Output

| | |
|---|---|
| `rI` | refractiveIndexTensor |

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

[tensor](tensor_index_py.html), [refractiveIndexTensor.birefringence](refractiveIndexTensor.birefringence_py.html), [refractiveIndexTensor.opticalAxis](refractiveIndexTensor.opticalAxis_py.html), [refractiveIndexTensor.spectralTransmission](refractiveIndexTensor.spectralTransmission_py.html)

## Used on

[BirefringenceDemo](BirefringenceDemo_py.html)

MATLAB's [refractiveIndexTensor.refractiveIndexTensor](refractiveIndexTensor.refractiveIndexTensor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1535">source</a></font>
{% endraw %}
