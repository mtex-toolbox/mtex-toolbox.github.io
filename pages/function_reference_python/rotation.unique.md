---
title: 'rotation.unique'
sidebar: function_reference_sidebar
permalink: rotation.unique_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.unique.html
status: Reference
---
{% raw %}
A method of [rotation](rotation_index_py.html).

the disjoint list of quaternions, those equal up to a tolerance in the coefficients taken
as one

## Syntax

<div class="mx-form" markdown="1">

```python
u = unique(q)
```

Sorted, one of each.

</div>

<div class="mx-form" markdown="1">

```python
u = unique(q, tol=0.01)
```

A coarser tolerance.

</div>

<div class="mx-form" markdown="1">

```python
u = unique(q, stable=True)
```

In the order of first appearance.

</div>

<div class="mx-form" markdown="1">

```python
u, iq, iu = unique(q, return_index=True, return_inverse=True)
```

The index maps.

</div>

## Description

Two quaternions are one when their coefficients agree to tol after rounding to multiples
of it, so two close quaternions on either side of a rounding step stay apart. A quaternion
and its negative, one rotation, are kept apart unless antipodal is set; orientation.unique
takes them as one.

## Input

| `q` | quaternion |

## Keywords

| keyword | default | description |
|---|---|---|
| `tol` | `0.001` | the tolerance in the coefficients |
| `antipodal` | `False` | take q and -q as one |
| `stable` | `False` | keep the order of first appearance instead of sorting |
| `return_index` | `False` | also return iq |
| `return_inverse` | `False` | also return iu |

## Output

| `u` | quaternion, a one-dimensional list |
| `iq` | indices with u = q.flatten()[iq] |
| `iu` | indices with q.flatten() = u[iu] |

## See also

[orientation.unique](orientation.unique_py.html), [vector3d.unique](vector3d.unique_py.html)

MATLAB's [rotation.unique](rotation.unique.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L420">source</a></font>
{% endraw %}
