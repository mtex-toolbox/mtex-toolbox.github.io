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
cross(x, ...) is x.cross(...), the method of the object passed; NumPy's cross for an array

## Syntax

```python
cross(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [S2Grid](S2Grid.cross_py.html) | the cross product of two plane normals is a lattice direction and the one of two directions a plane normal, so the indices switch sides |
| [S2VectorFieldHarmonic](S2VectorFieldHarmonic.cross_py.html) | F x x = -[x]_x F, on the rows of the coefficients F [x]_x |
| [SO3TangentVector](SO3TangentVector.cross_py.html) | the cross product with tangent vectors at the same reference, brought to this side |
| [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic.cross_py.html) | the pointwise cross product with another field, a field of the same side |
| [vector3d](vector3d.cross_py.html) | the cross product of two plane normals is a lattice direction and the one of two directions a plane normal, so the indices switch sides |

## Used on

[CrystalOperations](CrystalOperations_py.html), [DetectionOfSampleSymmetry](DetectionOfSampleSymmetry_py.html), [RotationSpinTensor](RotationSpinTensor_py.html), [S2FunRadon](S2FunRadon_py.html), [S2FunVectorField](S2FunVectorField_py.html), [VectorsOperations](VectorsOperations_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
