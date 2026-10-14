---
title: 'SO3TangentVector.unique'
sidebar: function_reference_sidebar
permalink: SO3TangentVector.unique_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3TangentVector.unique.html
status: Reference
---
{% raw %}
A method of [SO3TangentVector](SO3TangentVector_index_py.html).

the disjoint list of tangent vectors at one shared reference

## Syntax

One of each:

```python
u = unique(v)
```

A coarser tolerance:

```python
u = unique(v, tol=1e-3)
```

The index maps:

```python
u, iv, iu = unique(v, return_index=True, return_inverse=True)
```

Two tangent vectors are one when their components agree to tol after rounding to multiples
of it. The vectors must share one reference and one side, which the result keeps. The
order is that of first appearance, where MATLAB sorts unless 'stable' is given.

## Input

| | |
|---|---|
| `v` | SO3TangentVector |

## Output

| | |
|---|---|
| `u` | SO3TangentVector, a one-dimensional list at the reference of v |
| `iv` | indices with u = v.flatten()[iv] |
| `iu` | indices with v.flatten() = u[iu] |

## Keywords

| | default | |
|---|---|---|
| `tol` | `1e-06` | the tolerance in the components, in radians |
| `return_index` | `False` | also return iv |
| `return_inverse` | `False` | also return iu |

## See also

[vector3d.unique](vector3d.unique_py.html), [orientation.unique](orientation.unique_py.html), [orientation.log](orientation.log_py.html)

MATLAB's [SO3TangentVector.unique](SO3TangentVector.unique.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/tangent.py#L430">source</a></font>
{% endraw %}
