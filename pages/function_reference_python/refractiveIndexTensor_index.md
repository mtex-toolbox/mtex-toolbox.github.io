---
title: 'The class refractiveIndexTensor'
sidebar: function_reference_sidebar
permalink: refractiveIndexTensor_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: refractiveIndexTensor_index.html
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
| `rank` |  | the rank of the tensor; for this class always two |
| `doubleConvention` |  | read and write a Voigt matrix with the factors of two off the diagonal |
| `frame` |  | the reference frame of the coefficients, instead of giving it positionally |
| `density` |  | the mass density of the material, carried along |
| `unit` |  | the physical unit of the coefficients, a string carried along |
| `name` |  | the name of the tensor, carried along |
| `Kelvin` |  | read a 6 x 6 matrix in the Kelvin (Mandel) notation |
| `dtype` |  | the NumPy type of the coefficients |

## See also

[tensor](tensor_index_py.html), [refractiveIndexTensor.birefringence](refractiveIndexTensor.birefringence_py.html), [refractiveIndexTensor.opticalAxis](refractiveIndexTensor.opticalAxis_py.html), [refractiveIndexTensor.spectralTransmission](refractiveIndexTensor.spectralTransmission_py.html)

## Members

| | |
|---|---|
| [birefringence](refractiveIndexTensor.birefringence_py.html) | the birefringence for light along vprop: the index difference and the fast and the slow polarisation axis |
| [opticalAxis](refractiveIndexTensor.opticalAxis_py.html) | the optical axes of a refractive index tensor: the directions along which the two indices coincide, one for a uniaxial and two for a biaxial crystal |
| [refractiveIndex](refractiveIndexTensor.refractiveIndex_py.html) | the refractive index in the direction v, n_ij v_i v_j |
| [refractiveIndexTensor](refractiveIndexTensor.refractiveIndexTensor_py.html) | the rank two symmetric refractive index tensor, whose anisotropy makes a crystal birefringent |
| [spectralTransmission](refractiveIndexTensor.spectralTransmission_py.html) | the colour of white light passing a birefringent plate between a polariser and an analyser, as a thin section shows it under the microscope |

## Used on

[BirefringenceDemo](BirefringenceDemo_py.html)

MATLAB's [refractiveIndexTensor_index](refractiveIndexTensor_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L1382">source</a></font>
{% endraw %}
