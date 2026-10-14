---
title: 'The class quaternion'
sidebar: function_reference_sidebar
permalink: quaternion_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion_index.html
status: Reference
---
{% raw %}
quaternions stored as `a + b*i + c*j + d*k`, with one coefficient tuple per element.

## Syntax

<div class="mx-form" markdown="1">

```python
q = quaternion(a, b, c, d)
q = quaternion(abcd)
```

</div>

## Description

Separate coefficient arrays broadcast together. A coordinate array has shape (..., 4),
or (4, n) for a column-oriented list. Construction preserves the norm and sign;
q and -q are distinct quaternions. Use [`rotation`](rotation_index_py.html) for unit quaternions representing
proper rotations, where opposite signs represent the same rotation.

Quaternion multiplication composes products in the usual order. For unit quaternions,
`q*v` applies the rotation to a vector3d. Indexing and reshaping preserve the container.

## Keywords

| keyword | default | description |
|---|---|---|
| `dtype` |  | floating-point type of the stored coefficients |

## Properties

| `a, b, c, d` | real and imaginary coefficients as arrays of the container shape |
| `data` | numeric coefficient array with a trailing axis of length four |
| `shape` | shape of the quaternion array, excluding the four coefficients |

## See also

[rotation](rotation_index_py.html), [orthogonalTransform](orthogonalTransform_index_py.html), [quaternion.normalize](quaternion.normalize_py.html)

## Members

| [a](quaternion.a_py.html) | the real part a of the quaternions |
| [abcd](quaternion.abcd_py.html) | the coefficients a, b, c, d as one array of shape (..., 4) |
| [angle](quaternion.angle_py.html) | the rotational angle in [0, pi], or the angle between two, both from atan2 forms that keep their digits near 0 and pi |
| [angle_outer](quaternion.angle_outer_py.html) | the rotational angle in [0, pi], or the angle between two, both from atan2 forms that keep their digits near 0 and pi |
| [axis](quaternion.axis_py.html) | return a unit vector along the rotation axis of each quaternion |
| [b](quaternion.b_py.html) | the coefficient b of i |
| [c](quaternion.c_py.html) | the coefficient c of j |
| [cat](quaternion.cat_py.html) | the list of the operands, MATLAB's [a, b] |
| [conj](quaternion.conj_py.html) | return the quaternion conjugate `a - b*i - c*j - d*k` |
| [ctranspose](quaternion.ctranspose_py.html) | the transpose of the leading axes |
| [cubochoric](quaternion.cubochoric_py.html) | express rotations as equal-volume coordinates in a cube |
| [d](quaternion.d_py.html) | the coefficient d of k |
| [dot](quaternion.dot_py.html) | the inner product of the coefficients |
| [dot_outer](quaternion.dot_outer_py.html) | the inner product of the coefficients |
| [double](quaternion.double_py.html) | the coordinates of the images of an embedding in their orthonormal basis, one row per orientation, e.double() |
| [eq](quaternion.eq_py.html) | equal within the angular tolerance tol, MATLAB's eq |
| [Euler](quaternion.Euler_py.html) | the Euler angles (alpha, beta, gamma) in the convention named, the session's by default |
| [export](quaternion.export_py.html) | write a map to the file the extension names |
| [geodesic](quaternion.geodesic_py.html) | interpolate along the shortest rotational path between two rotations |
| [homochoric](quaternion.homochoric_py.html) | express rotations as equal-volume coordinates in a ball |
| [horzcat](quaternion.horzcat_py.html) | the list of the operands, MATLAB's [a, b] |
| [inv](quaternion.inv_py.html) | return the multiplicative inverse of each quaternion |
| [isnan](quaternion.isnan_py.html) | whether a quaternion has a NaN coefficient |
| [log](quaternion.log_py.html) | the tangent vector pointing from the reference, the identity by default, to this rotation |
| [logm](quaternion.logm_py.html) | logm(T) is T.logm(): the matrix logarithm |
| [matrix](quaternion.matrix_py.html) | return the numeric rotation matrix of each unit quaternion |
| [mean](quaternion.mean_py.html) | the mean of a list of quaternions, with the principal moments and axes of inertia |
| [minus](quaternion.minus_py.html) |  |
| [mrdivide](quaternion.mrdivide_py.html) |  |
| [mtimes](quaternion.mtimes_py.html) |  |
| [ne](quaternion.ne_py.html) | Return self!=value |
| [norm](quaternion.norm_py.html) | the norm of the quaternions, sqrt(a^2 + b^2 + c^2 + d^2) |
| [normalize](quaternion.normalize_py.html) | divide each quaternion by its Euclidean coefficient norm |
| [phi1](quaternion.phi1_py.html) | first Bunge Euler angle phi1 in radians, returned in the shape of the rotations |
| [phi2](quaternion.phi2_py.html) | third Bunge Euler angle phi2 in radians, returned in the shape of the rotations |
| [Phi](quaternion.Phi_py.html) | second Bunge Euler angle Phi in radians, returned in the shape of the rotations |
| [plot](quaternion.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [plus](quaternion.plus_py.html) |  |
| [project2EulerFR](quaternion.project2EulerFR_py.html) | the Bunge Euler angles of the representative of every orientation inside the Euler box of its frames, as MATLAB's project2EulerFR: three arrays in the shape of the list |
| [quaternion](quaternion.quaternion_py.html) | quaternions stored as `a + b*i + c*j + d*k`, with one coefficient tuple per element |
| [rdivide](quaternion.rdivide_py.html) |  |
| [Rodrigues](quaternion.Rodrigues_py.html) | express each rotation as an axis scaled by tan(omega/2) |
| [scatter](quaternion.scatter_py.html) | directions or crystal directions drawn as markers on a spherical plot, coloured by data or labelled |
| [std](quaternion.std_py.html) | the mean angular deviation of a list of rotations from their mean |
| [subsref](quaternion.subsref_py.html) |  |
| [sum](quaternion.sum_py.html) | sum(x) of an MTEX object by its own sum, of an array or with an axis as NumPy sums, of any other iterable as Python sums, so that from mtex import * keeps Python's sum |
| [times](quaternion.times_py.html) |  |
| [transpose](quaternion.transpose_py.html) | the transpose of the leading axes |
| [uminus](quaternion.uminus_py.html) |  |
| [unique](quaternion.unique_py.html) | the disjoint list of quaternions, those equal up to a tolerance in the coefficients taken as one |
| [vertcat](quaternion.vertcat_py.html) | the list of the operands, MATLAB's [a, b] |

## Used on

[RotationDefinition](RotationDefinition_py.html)

MATLAB's [quaternion_index](quaternion_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L48">source</a></font>
{% endraw %}
