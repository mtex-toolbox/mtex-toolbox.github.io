---
title: 'vector3d.orthProj'
sidebar: function_reference_sidebar
permalink: vector3d.orthProj_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.orthProj.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

project each vector onto the plane perpendicular to a normal.

## Syntax

<div class="mx-form" markdown="1">

```python
inPlane = v.orthProj(normal)
```

</div>

## Description

Compute `v - dot(v, n)*n` with n the unit normal. This uses Cartesian dot products,
without crystal symmetry or identification of opposite directions. Inputs broadcast.

## Input

| `N` | nonzero vector3d normal to the projection plane |

## Output

| `inPlane` | vector3d in the frame of v, with its original length component in the plane |

## See also

[vector3d.orth](vector3d.orth_py.html), [vector3d.dot](vector3d.dot_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
vector3d.orthProj(self, N)
```

</div>

MATLAB's [vector3d.orthProj](vector3d.orthProj.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L880">source</a></font>
{% endraw %}
