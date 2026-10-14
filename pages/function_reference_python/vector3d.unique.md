---
title: 'vector3d.unique'
sidebar: function_reference_sidebar
permalink: vector3d.unique_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.unique.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the disjoint list of vectors, equal ones within a tolerance taken once

## Syntax

<div class="mx-form" markdown="1">

```python
u = unique(v)
```

Sorted, each vector once.

</div>

<div class="mx-form" markdown="1">

```python
u = unique(v, tol=0.01)
```

A larger tolerance.

</div>

<div class="mx-form" markdown="1">

```python
u = unique(v, antipodal=True)
```

V and -v the same.

</div>

<div class="mx-form" markdown="1">

```python
u = unique(v, stable=True)
```

In the order of their first appearance.

</div>

<div class="mx-form" markdown="1">

```python
u, iv, iu = unique(v, return_index=True, return_inverse=True)
```

U = v[iv], v = u[iu].

</div>

## Description

Axes are equal up to sign; antipodal=True takes them so always, antipodal=False never.
Crystal directions in a frame with symmetry are equal when they are symmetrically
equivalent: they are projected to the fundamental sector first.

## Input

| `v` | vector3d |

## Keywords

| keyword | default | description |
|---|---|---|
| `tol` | `1e-06` | the tolerance of the coordinates within which vectors are equal |
| `antipodal` | `None` | take the vectors as axes: True always, False never; by default where they are axes |
| `symmetry` | `True` | take the symmetric equivalents of crystal directions into account |
| `stable` | `False` | keep the order of the first appearances rather than sorting |
| `return_index` | `False` | also return the indices iv of the kept vectors |
| `return_inverse` | `False` | also return the indices iu reconstructing the list |

## Output

| `u` | vector3d, one dimensional |
| `iv` | array, the indices with u = v.flat[iv], with return_index=True |
| `iu` | array, the indices with v.flat = u[iu], with return_inverse=True |

## See also

[vector3d.symmetrise](vector3d.symmetrise_py.html), [vector3d.mean](vector3d.mean_py.html)

MATLAB's [vector3d.unique](vector3d.unique.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L959">source</a></font>
{% endraw %}
