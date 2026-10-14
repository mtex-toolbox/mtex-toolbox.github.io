---
title: 'tensor.tensor'
sidebar: function_reference_sidebar
permalink: tensor.tensor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: tensor.tensor.html
status: Reference
---
{% raw %}
a tensor of rank R in a reference frame, or a list of them

## Syntax

<div class="mx-form" markdown="1">

```python
T = tensor(M, cs)
```

The coefficients in a crystal frame.

</div>

<div class="mx-form" markdown="1">

```python
T = tensor(M, cs, rank=2, name='strain', unit='%')
```

The rank, a name and a unit.

</div>

<div class="mx-form" markdown="1">

```python
T = tensor(v)
```

A vector as a tensor of rank one.

</div>

<div class="mx-form" markdown="1">

```python
T = tensor(rot)
```

A rotation as its matrix, rank two.

</div>

<div class="mx-form" markdown="1">

```python
C = tensor(V, rank=4)
```

A 6 x 6 Voigt matrix.

</div>

<div class="mx-form" markdown="1">

```python
S = tensor(V, rank=4, doubleConvention=True)
```

With the factors of two of the compliance.

</div>

<div class="mx-form" markdown="1">

```python
C = tensor(V, rank=4, Kelvin=True)
```

A matrix in the Kelvin notation.

</div>

## Description

The coefficients M are an array whose last R indices have dimension three, the dimensions
in front of them the shape of the list; the rank, when not given, is the number of trailing
dimensions of size three. A 6 x 6 matrix is read as the Voigt matrix of a rank four tensor,
a 3 x 6 matrix as that of a rank three one. Rotating the tensor, or an orientation acting on
it, `ori * T`, transforms the coefficients, which is what the texture averages build on.

The frame is a crystalFrame or a specimenFrame, given positionally or as frame=; without one
the tensor is in the default specimen frame. T.M gives the coefficients back, T.rank,
T.frame (T.CS) and T.isSymmetric what they say. The physical tensors, stiffnessTensor,
complianceTensor, strainTensor, stressTensor, ..., are subclasses fixing the rank and the
Voigt convention.

## Input

| `M` | array of the coefficients, (..., 3, ..., 3), a Voigt matrix (..., 6, 6), a vector3d or a rotation |
| `cs` | crystalFrame or specimenFrame the coefficients refer to |

## Keywords

| keyword | default | description |
|---|---|---|
| `rank` | `None` | the rank of the tensor, read from the shape of M when not given |
| `doubleConvention` | `None` | read and write a Voigt matrix with the factors of two off the diagonal, as is usual for the compliance |
| `frame` | `None` | the reference frame of the coefficients, instead of giving it positionally |
| `density` | `None` | the mass density of the material, carried along (the wave velocities use it) |
| `unit` | `None` | the physical unit of the coefficients, a string carried along |
| `name` | `None` | the name of the tensor, carried along |
| `Kelvin` | `False` | read a 6 x 6 matrix in the Kelvin (Mandel) notation |
| `dtype` | `None` | the NumPy type of the coefficients |

## Output

| `T` | tensor |

## Properties

| `M` | full Cartesian coefficient array with rank trailing axes of length three |
| `rank` | number of tensor indices, independent of the number of tensors in a list |
| `frame` | reference frame of the coefficients |
| `CS` | alias for the tensor reference frame |
| `doubleConvention` | Voigt convention used for shear-component factors |
| `density` | material mass density, when provided |
| `unit` | physical unit label carried by the tensor |
| `name` | descriptive tensor label |
| `shape` | shape of the tensor list, excluding tensor-component axes |

## See also

[stiffnessTensor](stiffnessTensor_index_py.html), [strainTensor](strainTensor_index_py.html), [stressTensor](stressTensor_index_py.html), [tensor.rotate](tensor.rotate_py.html), [TensorDefinition](TensorDefinition_py.html)

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html), [TensorArithmetics](TensorArithmetics_py.html), [TensorDefinition](TensorDefinition_py.html), [TensorVisualisation](TensorVisualisation_py.html)

MATLAB's [tensor.tensor](tensor.tensor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L161">source</a></font>
{% endraw %}
