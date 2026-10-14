---
title: 'vector3d.eq'
sidebar: function_reference_sidebar
permalink: vector3d.eq_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.eq.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

isclose(v, w), isclose(v, w, antipodal=True, tol=): pointing the same way up to the group
of a crystal frame within the tolerance tol of the cosine, and up to sign when antipodal
(MATLAB's eq)

## Syntax

<div class="mx-form" markdown="1">

```python
b = v.isclose(w)
```

The same direction.

</div>

<div class="mx-form" markdown="1">

```python
b = v.isclose(w, antipodal=True)
```

The same axis.

</div>

<div class="mx-form" markdown="1">

```python
b = v.isclose(w, tol=1e-6)
```

A coarser tolerance.

</div>

## Description

True where <v, w> differs from |v| |w| by less than tol, the product reduced over the
group of a crystal frame; vectors of different frames are never close. The operator ==
compares exactly.

## Input

| `v, w` | vector3d or Miller |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `False` | up to sign, also when neither vector is antipodal |
| `tol` | `1e-10` | the tolerance of the cosine times the lengths |

## Output

| `b` | boolean array |

## See also

[vector3d.angle](vector3d.angle_py.html), [vector3d.dot](vector3d.dot_py.html)

MATLAB's [vector3d.eq](vector3d.eq.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L1117">source</a></font>
{% endraw %}
