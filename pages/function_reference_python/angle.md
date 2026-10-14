---
title: 'angle'
sidebar: function_reference_sidebar
permalink: angle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
angle(x, ...) is x.angle(...), the method of the object passed; NumPy's angle for an array

## Syntax

```python
angle(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [fibre](fibre.angle_py.html) | the angle by which ori * h misses r, the least over both orbits, from the chord of the closest pair |
| [grainBoundary](grainBoundary.angle_py.html) | the angle of every segment to a direction, or to the segments of another boundary, in [0, pi/2], the segments having no sense |
| [orientation](orientation.angle_py.html) | the rotational angle up to symmetry, of the orientation or of the misorientation to other |
| [orthogonalTransform](orthogonalTransform.angle_py.html) | the rotational angle of the rotational part, or the angle between the rotational parts of two |
| [quaternion](quaternion.angle_py.html) | the rotational angle in [0, pi], or the angle between two, both from atan2 forms that keep their digits near 0 and pi |
| [S2AxisFieldHarmonic](S2AxisField.angle_py.html) | the angle between the axes of the field and a constant axis, or another field, as a function on the sphere |
| [S2VectorFieldHarmonic](S2VectorField.angle_py.html) | the angle between two fields at every direction, or between the field and a constant vector, a function on the sphere |
| [SO3TangentVector](SO3TangentVector.angle_py.html) | the angle of the rotation the vector describes, or the angle between two vectors |
| [vector3d](vector3d.angle_py.html) | the angle between two vectors |

## Used on

[CrystalDirections](CrystalDirections_py.html), [CrystalOperations](CrystalOperations_py.html), [CrystalReferenceSystem](CrystalReferenceSystem_py.html), [LatticeMetric](LatticeMetric_py.html), [SymmetryAlignment](SymmetryAlignment_py.html), [DefinitionAsCoordinateTransform](DefinitionAsCoordinateTransform_py.html), [MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [OrientationDefinition](OrientationDefinition_py.html), [OrientationEmbeddings](OrientationEmbeddings_py.html), [OrientationFundamentalRegion](OrientationFundamentalRegion_py.html), [OrientationGrid](OrientationGrid_py.html), [OrientationStandard](OrientationStandard_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
