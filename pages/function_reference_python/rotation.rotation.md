---
title: 'rotation.rotation'
sidebar: function_reference_sidebar
permalink: rotation.rotation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.rotation.html
status: Reference
---
{% raw %}
proper rotations represented by unit quaternions, with opposite signs identified.

## Syntax

<div class="mx-form" markdown="1">

```python
rot = rotation(a, b, c, d)
rot = rotation(q)
rot = rotation(cs)
```

</div>

## Description

Numeric coefficients and general quaternions are normalised on construction. A point
group or reference frame supplies its proper rotational parts. Improper orthogonal
transforms cannot be converted to a rotation; use [`orthogonalTransform`](orthogonalTransform_index_py.html) to retain parity.

For vector3d data, `rot*v` rotates each vector. The product `rot1*rot2` applies rot2 first,
then rot1. Array shapes broadcast, while the trailing four coefficients are internal
to each element.

## Keywords

| keyword | default | description |
|---|---|---|
| `dtype` | `None` | floating-point type of the stored coefficients |

## Properties

| `a, b, c, d` | unit quaternion coefficients, with opposite signs representing the same rotation |
| `data` | coefficient array of shape rot.shape + (4,) |
| `phi1, Phi, phi2` | Bunge Euler angles in radians |
| `shape` | shape of the rotation array |

## See also

[rotation.byEuler](rotation.byEuler_py.html), [rotation.byAxisAngle](rotation.byAxisAngle_py.html), [rotation.byMatrix](rotation.byMatrix_py.html), [quaternion](quaternion_index_py.html)

## Used on

[CrystalSymmetries](CrystalSymmetries_py.html), [MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [EBSDKAM](EBSDKAM_py.html), [RotationDefinition](RotationDefinition_py.html), [RotationImproper](RotationImproper_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [SO3FunOperations](SO3FunOperations_py.html), [SO3FunVectorValued](SO3FunVectorValued_py.html)

MATLAB's [rotation.rotation](rotation.rotation.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L701">source</a></font>
{% endraw %}
