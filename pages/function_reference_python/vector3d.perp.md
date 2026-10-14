---
title: 'vector3d.perp'
sidebar: function_reference_sidebar
permalink: vector3d.perp_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.perp.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the axis best orthogonal to a list of directions, the smallest principal axis

## Syntax

E.g. the zone axis of plane normals:

```python
n = v.perp()
```

Outliers left out:

```python
n = v.perp(robust=True)
```

The eigenvector of the smallest eigenvalue of sum v v^T; NaN vectors are left out. A
robust fit drops the 20 percent of the directions furthest from orthogonal and fits
again, when more than four are given. The result is an axis in the frame of v, in the
other display style, a zone axis of planes.

## Input

| | |
|---|---|
| `v` | vector3d or Miller |

## Output

| | |
|---|---|
| `n` | vector3d or Miller, antipodal |

## Keywords

| | default | |
|---|---|---|
| `robust` | `False` | fit again without the directions furthest from orthogonal |

## See also

[vector3d.eig](vector3d.eig_py.html), [vector3d.cross](vector3d.cross_py.html)

MATLAB's [vector3d.perp](vector3d.perp.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L838">source</a></font>
{% endraw %}
