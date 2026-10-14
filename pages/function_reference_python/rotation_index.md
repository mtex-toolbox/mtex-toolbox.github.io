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
rotations, unit quaternions with q and -q one rotation; numbers are normalised, a point group
or a frame gives its elements, an improper orthogonalTransform is refused

## Syntax

<div class="mx-form" markdown="1">

```python
rotation(a, b, c, d)
rotation(q)
rotation(cs)
```

</div>

## Members

| [byAxisAngle](rotation.byAxisAngle_py.html) | the rotations by the angle omega about the axis v |
| [byCubochoric](rotation.byCubochoric_py.html) | the rotations of cubochoric vectors |
| [byEuler](rotation.byEuler_py.html) | rotations defined by Euler angles |
| [byHomochoric](rotation.byHomochoric_py.html) | the rotations of homochoric vectors |
| [byMatrix](rotation.byMatrix_py.html) | a proper orthogonal matrix, or a list of them on the leading axes |
| [byRodrigues](rotation.byRodrigues_py.html) | the rotations of Rodrigues vectors, the axes scaled by tan(omega/2) |
| [calcDensity](rotation.calcDensity_py.html) | the density estimate of a sample: an ODF of orientations, a function on the sphere of directions or axes, a function on the circle of angles or a density of real values |
| [cat](rotation.cat_py.html) | the list of the operands, MATLAB's [r1, r2] |
| [discrepancy](rotation.discrepancy_py.html) | the discrepancy between two densities and/or weighted point sets on the sphere (S2Fun, vector3d) or on SO(3) (SO3Fun, rotation, orientation), in either order |
| [dot](rotation.dot_py.html) | the inner product up to sign, since q and -q are one rotation |
| [dot_outer](rotation.dot_outer_py.html) | the inner product up to sign, since q and -q are one rotation |
| [double](rotation.double_py.html) | the coordinates of the images of an embedding in their orthonormal basis, one row per orientation, e.double() |
| [fit](rotation.fit_py.html) | the rotation best mapping the list u onto the list v, by Horn's quaternion method or Kabsch's matrix method |
| [id](rotation.id_py.html) | a property of the class itself, vector3d.X |
| [interp](rotation.interp_py.html) | interp(ori, values, 'harmonic' \| 'bingham'): a function on SO(3) through values at the rotations, by the function spaces above this layer, MATLAB's rotation/interp |
| [inv](rotation.inv_py.html) | the inverse rotation, the conjugate quaternion |
| [inversion](rotation.inversion_py.html) | a property of the class itself, vector3d.X |
| [isclose](rotation.isclose_py.html) | equal within the angular tolerance tol, MATLAB's eq |
| [line](rotation.line_py.html) | a polyline in the coordinates of the current map, drawn under its layout, MATLAB's line |
| [map](rotation.map_py.html) | the smallest rotation taking u1 to v1, or the one taking u1 to v1 and u2 to v2 |
| [matrix](rotation.matrix_py.html) | the rotation matrices, of shape (..., 3, 3) |
| [mtimes](rotation.mtimes_py.html) |  |
| [nan](rotation.nan_py.html) | quaternions of NaN coefficients, of the shape given |
| [plotSection](rotation.plotSection_py.html) | plotSection(odf), plotSection(odf, 'sigma'), plotSection(ori, oS, sections=9) |
| [rand](rotation.rand_py.html) | uniformly distributed rotations, the Haar measure |
| [rotation](rotation.rotation_py.html) | rotations, unit quaternions with q and -q one rotation |
| [subsref](rotation.subsref_py.html) |  |
| [times](rotation.times_py.html) |  |
| [transpose](rotation.transpose_py.html) | the transpose of the leading axes |
| [uminus](rotation.uminus_py.html) |  |
| [unique](rotation.unique_py.html) | the disjoint list of quaternions, those equal up to a tolerance in the coefficients taken as one |

## Used on

[CrystalSymmetries](CrystalSymmetries_py.html), [MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [EBSDKAM](EBSDKAM_py.html), [RotationDefinition](RotationDefinition_py.html), [RotationImproper](RotationImproper_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [SO3FunOperations](SO3FunOperations_py.html), [SO3FunVectorValued](SO3FunVectorValued_py.html)

MATLAB's [rotation_index](rotation_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L600">source</a></font>
{% endraw %}
