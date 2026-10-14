---
title: 'rotation.byMatrix'
sidebar: function_reference_sidebar
permalink: rotation.byMatrix_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.byMatrix.html
status: Reference
---
{% raw %}
A method of [rotation](rotation_index_py.html).

construct rotations from proper orthogonal matrices.

## Syntax

<div class="mx-form" markdown="1">

```python
rot = rotation.byMatrix(M)
```

</div>

## Input

| `M` | numeric array of shape (..., 3, 3), with orthogonal columns and determinant +1 |

## Output

| `rot` | rotation with shape M.shape[:-2] Matrices of negative determinant are refused. To retain a reflection or inversion, use orthogonalTransform.byMatrix. This constructor assumes the supplied matrices are orthogonal; it is not a least-squares fit to arbitrary matrices. |

## See also

[rotation.matrix](rotation.matrix_py.html), [orthogonalTransform.byMatrix](orthogonalTransform.byMatrix_py.html), [rotation.fit](rotation.fit_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
rotation.byMatrix(M)
```

</div>

MATLAB's [rotation.byMatrix](rotation.byMatrix.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L800">source</a></font>
{% endraw %}
