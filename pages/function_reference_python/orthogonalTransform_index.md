---
title: 'The class orthogonalTransform'
sidebar: function_reference_sidebar
permalink: orthogonalTransform_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
orthogonal transforms, a rotation and a parity as a fifth coordinate, -1 for an improper one,
the rotation followed by the inversion

## Syntax

<div class="mx-form" markdown="1">

```python
orthogonalTransform(rot)
orthogonalTransform(rot, True)       the improper transform -rot
orthogonalTransform(cs)              the elements of a point group
```

</div>

## Members

| [a](orthogonalTransform.a_py.html) | the coefficient a of the rotational part |
| [angle](orthogonalTransform.angle_py.html) | the rotational angle of the rotational part, or the angle between the rotational parts of two |
| [axis](orthogonalTransform.axis_py.html) | the rotational axis of the rotational part |
| [b](orthogonalTransform.b_py.html) | the coefficient b of the rotational part |
| [byAxisAngle](orthogonalTransform.byAxisAngle_py.html) | the proper transforms rotating by omega about the axis v |
| [byEuler](orthogonalTransform.byEuler_py.html) | proper orthogonal transforms defined by Euler angles |
| [byMatrix](orthogonalTransform.byMatrix_py.html) | an orthogonal matrix of either sign |
| [c](orthogonalTransform.c_py.html) | the coefficient c of the rotational part |
| [d](orthogonalTransform.d_py.html) | the coefficient d of the rotational part |
| [dot](orthogonalTransform.dot_py.html) | the inner product of the rotational parts up to sign, zero between transforms of different parity |
| [Euler](orthogonalTransform.Euler_py.html) | the Euler angles of the rotational part, in the convention named or the session's |
| [i](orthogonalTransform.i_py.html) | whether the transform is improper, MATLAB's rot.i |
| [inv](orthogonalTransform.inv_py.html) | the inverse transform, the inverse rotation with the same parity |
| [isclose](orthogonalTransform.isclose_py.html) | equal within the angular tolerance tol and of one parity, MATLAB's eq |
| [isImproper](orthogonalTransform.isImproper_py.html) | whether the transform is improper, its determinant -1 |
| [matrix](orthogonalTransform.matrix_py.html) | the orthogonal matrices, the rotation matrix times the parity |
| [parity](orthogonalTransform.parity_py.html) | the parity, 1 for a proper and -1 for an improper transform |
| [rot](orthogonalTransform.rot_py.html) | the rotational part, a rotation |
| [unique](orthogonalTransform.unique_py.html) | the disjoint list of orthogonal transforms, those equal up to a tolerance taken as one |

## Used on

[CrystalSymmetries](CrystalSymmetries_py.html), [RotationImproper](RotationImproper_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L860">source</a></font>
{% endraw %}
