---
title: 'quaternion.quaternion'
sidebar: function_reference_sidebar
permalink: quaternion.quaternion_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.quaternion.html
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
| `dtype` | `None` | floating-point type of the stored coefficients |

## Properties

| `a, b, c, d` | real and imaginary coefficients as arrays of the container shape |
| `data` | numeric coefficient array with a trailing axis of length four |
| `shape` | shape of the quaternion array, excluding the four coefficients |

## See also

[rotation](rotation_index_py.html), [orthogonalTransform](orthogonalTransform_index_py.html), [quaternion.normalize](quaternion.normalize_py.html)

## Used on

[RotationDefinition](RotationDefinition_py.html)

MATLAB's [quaternion.quaternion](quaternion.quaternion.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L48">source</a></font>
{% endraw %}
