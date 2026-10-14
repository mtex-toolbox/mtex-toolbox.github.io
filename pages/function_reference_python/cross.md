---
title: 'cross'
sidebar: function_reference_sidebar
permalink: cross_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
form the cross product of vectors or vector fields.

## Syntax

<div class="mx-form" markdown="1">

```python
normal = cross(v, w)
```

</div>

## Description

For an MTEX object, cross(x, ...) calls x.cross(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

For numeric arrays without an MTEX method, this calls numpy.cross.

## Signature

<div class="mx-form" markdown="1">

```python
cross(x, *args, **kwargs)
```

</div>

## Methods it calls

| [S2Grid](S2Grid.cross_py.html) | the cross product of two plane normals is a lattice direction and the one of two directions a plane normal, so the indices switch sides |
| [S2VectorFieldHarmonic](S2VectorFieldHarmonic.cross_py.html) | F x x = -[x]_x F, on the rows of the coefficients F [x]_x |
| [SO3TangentVector](SO3TangentVector.cross_py.html) | the cross product with tangent vectors at the same reference, brought to this side |
| [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic.cross_py.html) | the pointwise cross product with another field, a field of the same side |
| [vector3d](vector3d.cross_py.html) | the cross product of two plane normals is a lattice direction and the one of two directions a plane normal, so the indices switch sides |

## Used on

[CrystalOperations](CrystalOperations_py.html), [DetectionOfSampleSymmetry](DetectionOfSampleSymmetry_py.html), [RotationSpinTensor](RotationSpinTensor_py.html), [S2FunRadon](S2FunRadon_py.html), [S2FunVectorField](S2FunVectorField_py.html), [VectorsOperations](VectorsOperations_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
