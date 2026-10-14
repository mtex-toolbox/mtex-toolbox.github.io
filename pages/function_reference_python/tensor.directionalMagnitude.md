---
title: 'tensor.directionalMagnitude'
sidebar: function_reference_sidebar
permalink: tensor.directionalMagnitude_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: tensor.directionalMagnitude.html
status: Reference
---
{% raw %}
A method of [tensor](tensor_index_py.html).

the magnitude of a tensor in the direction v, the tensor contracted with the unit
direction on every index, T_i1...iR v_i1 ... v_iR; MATLAB's directionalMagnitude

## Syntax

At the directions v:

```python
q = T.directionalMagnitude(v)
```

The function on the sphere:

```python
q = T.directionalMagnitude()
```

Without a direction the function on the sphere, a polynomial of the degree of the rank,
antipodal for an even rank.

## Input

| | |
|---|---|
| `T` | tensor |
| `v` | vector3d or Miller, the directions; left out for the function |

## Output

| | |
|---|---|
| `q` | the magnitudes, or an S2FunHarmonic of the direction |

## See also

[YoungsModulus](complianceTensor.YoungsModulus_py.html), [linearCompressibility](complianceTensor.linearCompressibility_py.html), [EinsteinSum](EinsteinSum_py.html)

## Signature

```python
tensor.directionalMagnitude(self, v=None)
```

## Used on

[SymmetryAlignment](SymmetryAlignment_py.html), [PiezoElectricity](PiezoElectricity_py.html), [TensorVisualisation](TensorVisualisation_py.html)

MATLAB's [tensor.directionalMagnitude](tensor.directionalMagnitude.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L650">source</a></font>
{% endraw %}
