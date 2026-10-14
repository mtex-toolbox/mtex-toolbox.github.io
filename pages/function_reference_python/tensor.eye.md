---
title: 'tensor.eye'
sidebar: function_reference_sidebar
permalink: tensor.eye_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [tensor](tensor_index_py.html).

the identity tensor, of rank two the unit matrix, of rank four the symmetric identity on
rank two tensors; MATLAB's tensor.eye

## Syntax

The unit matrix in the frame cs:

```python
T = tensor.eye(cs)
```

The identity of rank four:

```python
C = stiffnessTensor.eye()
```

A plain tensor of rank four:

```python
T = tensor.eye(rank=4)
```

With a unit:

```python
T = tensor.eye(cs, unit='GPa')
```

The frame is the reference frame among the arguments; other keywords go to the
constructor of the class (unit, name, density, ...).

## Input

| | |
|---|---|
| `cs` | referenceFrame, the frame, the specimen frame without one |

## Output

| | |
|---|---|
| `T` | a tensor of the class |

## Keywords

| | default | |
|---|---|---|
| `rank` | `None` | 2 or 4, by default the rank of the class, two for a plain tensor |

## See also

[tensor.ones](tensor.ones_py.html), [tensor.zeros](tensor.zeros_py.html), [tensor.rand](tensor.rand_py.html)

## Used on

[OrientationDefinition](OrientationDefinition_py.html), [IsotropicTheory](IsotropicTheory_py.html), [SO3FunHarmonicRepresentation](SO3FunHarmonicRepresentation_py.html), [SO3FunVectorValued](SO3FunVectorValued_py.html), [S2FunHarmonicRepresentation](S2FunHarmonicRepresentation_py.html), [S2FunVectorValued](S2FunVectorValued_py.html), [SphericalHarmonics](SphericalHarmonics_py.html), [TensorDefinition](TensorDefinition_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/tensors/tensor.py#L830">source</a></font>
{% endraw %}
