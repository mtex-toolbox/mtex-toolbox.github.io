---
title: 'normalize'
sidebar: function_reference_sidebar
permalink: normalize_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
normalize(x, ...) is x.normalize(...), the method of the object passed

## Syntax

<div class="mx-form" markdown="1">

```python
normalize(x, *args, **kwargs)
```

</div>

## Methods it calls

| [PoleFigure](PoleFigure.normalize_py.html) | the pole figures scaled to mean one, or to the pole figures an ODF predicts |
| [quaternion](quaternion.normalize_py.html) | the quaternions divided by their norm |
| [S2VectorFieldHarmonic](S2VectorField.normalize_py.html) | the field scaled to unit length at every direction |
| [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic.normalize_py.html) | the field of unit vectors in the directions of the field, by quadrature at twice the bandwidth |
| [SO3VectorFieldRBF](SO3VectorFieldRBF.normalize_py.html) | the field of unit vectors in the directions of the field, by quadrature at twice the bandwidth |
| [stressTensor](stressTensor.normalize_py.html) | the tensors divided by their Frobenius norms |
| [tensor](tensor.normalize_py.html) | the tensors divided by their Frobenius norms |
| [vector3d](vector3d.normalize_py.html) | the vectors scaled to unit length |

## Used on

[QuasiCrystals](QuasiCrystals_py.html), [DefinitionAsCoordinateTransform](DefinitionAsCoordinateTransform_py.html), [MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [NotationAndConventions](NotationAndConventions_py.html), [DislocationSystems](DislocationSystems_py.html), [SchmidFactor](SchmidFactor_py.html), [PoleFigureCorrection](PoleFigureCorrection_py.html), [RotationDefinition](RotationDefinition_py.html), [RotationImproper](RotationImproper_py.html), [RotationOperations](RotationOperations_py.html), [RotationSpinTensor](RotationSpinTensor_py.html), [S2FunRadon](S2FunRadon_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
