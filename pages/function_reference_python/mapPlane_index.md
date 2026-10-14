---
title: 'The class mapPlane'
sidebar: function_reference_sidebar
permalink: mapPlane_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the plane of a set of positions with an orthonormal frame: the normal fitted and pointing up,
e1 the given direction projected into the plane, the origin the specimen origin's foot on it

## Syntax

<div class="mx-form" markdown="1">

```python
plane = mapPlane(pos)
plane.to2d(xyz), plane.from2d(xy)
```

</div>

## Input

| `pts` | Cartesian positions as an (n, 3) array, defining the fitted map plane |
| `e1` | preferred first in-plane direction, projected onto the plane; default x direction |

## Members

| [dtype](mapPlane.dtype_py.html) | the floating point type the plane computes in |
| [from2d](mapPlane.from2d_py.html) | the positions of plane coordinates of shape (..., 2) |
| [normal](mapPlane.normal_py.html) | the unit normal of the plane, e1 x e2 |
| [to2d](mapPlane.to2d_py.html) | the coordinates in the plane of positions of shape (..., 3), as (..., 2) |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/lattice.py#L40">source</a></font>
{% endraw %}
