---
title: 'orthogonalTransform.unique'
sidebar: function_reference_sidebar
permalink: orthogonalTransform.unique_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [orthogonalTransform](orthogonalTransform_index_py.html).

the disjoint list of orthogonal transforms, those equal up to a tolerance taken as one

## Syntax

<div class="mx-form" markdown="1">

```python
u = unique(T)
```

Sorted, one of each.

</div>

<div class="mx-form" markdown="1">

```python
u = unique(T, stable=True)
```

In the order of first appearance.

</div>

<div class="mx-form" markdown="1">

```python
u, iT, iu = unique(T, return_index=True, return_inverse=True)
```

The index maps.

</div>

## Description

Two transforms are one when their parities agree and their rotational parts agree to tol,
a rotation and its negative counted as one.

## Input

| `T` | orthogonalTransform |

## Keywords

| keyword | default | description |
|---|---|---|
| `tol` | `0.001` | the tolerance in the quaternion coefficients |
| `stable` | `False` | keep the order of first appearance instead of sorting |
| `return_index` | `False` | also return iT |
| `return_inverse` | `False` | also return iu |

## Output

| `u` | orthogonalTransform, a one-dimensional list |
| `iT` | indices with u = T.flatten()[iT] |
| `iu` | indices with T.flatten() = u[iu] |

## See also

[quaternion.unique](quaternion.unique_py.html), [orientation.unique](orientation.unique_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L1284">source</a></font>
{% endraw %}
