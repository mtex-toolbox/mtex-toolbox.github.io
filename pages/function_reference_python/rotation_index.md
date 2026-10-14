---
title: 'The class rotation'
sidebar: function_reference_sidebar
permalink: rotation_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation_index.html
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
| `dtype` |  | floating-point type of the stored coefficients |

## Properties

| `a, b, c, d` | unit quaternion coefficients, with opposite signs representing the same rotation |
| `data` | coefficient array of shape rot.shape + (4,) |
| `phi1, Phi, phi2` | Bunge Euler angles in radians |
| `shape` | shape of the rotation array |

## See also

[rotation.byEuler](rotation.byEuler_py.html), [rotation.byAxisAngle](rotation.byAxisAngle_py.html), [rotation.byMatrix](rotation.byMatrix_py.html), [quaternion](quaternion_index_py.html)

## Members

| [byAxisAngle](rotation.byAxisAngle_py.html) | construct right-handed rotations about given axes |
| [byCubochoric](rotation.byCubochoric_py.html) | construct rotations from equal-volume cubochoric coordinates |
| [byEuler](rotation.byEuler_py.html) | rotations defined by Euler angles |
| [byHomochoric](rotation.byHomochoric_py.html) | construct rotations from coordinates in the homochoric ball |
| [byMatrix](rotation.byMatrix_py.html) | construct rotations from proper orthogonal matrices |
| [byRodrigues](rotation.byRodrigues_py.html) | construct rotations from dimensionless Rodrigues vectors |
| [calcDensity](rotation.calcDensity_py.html) | estimate a smooth density from orientations, directions, angles or real-valued samples |
| [cat](rotation.cat_py.html) | the list of the operands, MATLAB's [r1, r2] |
| [discrepancy](rotation.discrepancy_py.html) | the discrepancy between two densities and/or weighted point sets on the sphere (S2Fun, vector3d) or on SO(3) (SO3Fun, rotation, orientation), in either order |
| [dot](rotation.dot_py.html) | the inner product up to sign, since q and -q are one rotation |
| [dot_outer](rotation.dot_outer_py.html) | the inner product up to sign, since q and -q are one rotation |
| [double](rotation.double_py.html) | the coordinates of the images of an embedding in their orthonormal basis, one row per orientation, e.double() |
| [fit](rotation.fit_py.html) | the rotation best mapping the list u onto the list v, by Horn's quaternion method or Kabsch's matrix method |
| [id](rotation.id_py.html) | the identity, 1 + 0i + 0j + 0k (MATLAB's id and eye) |
| [interp](rotation.interp_py.html) | interp(ori, values, 'harmonic' \| 'bingham'): a function on SO(3) through values at the rotations, by the function spaces above this layer, MATLAB's rotation/interp |
| [inv](rotation.inv_py.html) | return the rotation that reverses each input rotation |
| [inversion](rotation.inversion_py.html) | the inversion, the orthogonalTransform -I |
| [isclose](rotation.isclose_py.html) | equal within the angular tolerance tol, MATLAB's eq |
| [map](rotation.map_py.html) | the smallest rotation taking u1 to v1, or the one taking u1 to v1 and u2 to v2 |
| [matrix](rotation.matrix_py.html) | return the numeric rotation matrix of each unit quaternion |
| [mtimes](rotation.mtimes_py.html) |  |
| [nan](rotation.nan_py.html) | construct quaternions whose four coefficients are NaN |
| [plotSection](rotation.plotSection_py.html) | plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9) |
| [rand](rotation.rand_py.html) | uniformly distributed rotations, the Haar measure |
| [rotation](rotation.rotation_py.html) | proper rotations represented by unit quaternions, with opposite signs identified |
| [subsref](rotation.subsref_py.html) |  |
| [times](rotation.times_py.html) |  |
| [transpose](rotation.transpose_py.html) | the transpose of the leading axes |
| [uminus](rotation.uminus_py.html) |  |
| [unique](rotation.unique_py.html) | the disjoint list of quaternions, those equal up to a tolerance in the coefficients taken as one |

## Used on

[CrystalSymmetries](CrystalSymmetries_py.html), [MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [EBSDKAM](EBSDKAM_py.html), [RotationDefinition](RotationDefinition_py.html), [RotationImproper](RotationImproper_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [SO3FunOperations](SO3FunOperations_py.html), [SO3FunVectorValued](SO3FunVectorValued_py.html)

MATLAB's [rotation_index](rotation_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L701">source</a></font>
{% endraw %}
