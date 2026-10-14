---
title: 'The class plane3d'
sidebar: function_reference_sidebar
permalink: plane3d_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: plane3d_index.html
status: Reference
---
{% raw %}
a plane <N, v> = d, or a list of them

## Syntax

<div class="mx-form" markdown="1">

```python
plane = plane3d(N, d)
```

<N, v> = d.

</div>

<div class="mx-form" markdown="1">

```python
plane = plane3d(N, v0)
```

Through the point v0.

</div>

<div class="mx-form" markdown="1">

```python
plane = plane3d.byPoints(v)
```

Fitted through the points v.

</div>

## Members

| [byPoints](plane3d.byPoints_py.html) | the plane through points: the least squares fit through their centroid, the normal the smallest principal axis of the cloud |
| [cat](plane3d.cat_py.html) | cat(a, b, ...) is type(a).cat(a, b, ...): the list of the operands, MATLAB's [a, b], the carried attributes joined |
| [clip](plane3d.clip_py.html) | the polygon the plane cuts out of the box from lo to hi, its corners in order around the normal |
| [dist](plane3d.dist_py.html) | the signed distance of points to the plane, or the distance of two parallel planes, NaN where the planes meet |
| [fit](plane3d.fit_py.html) | the plane through points: the least squares fit through their centroid, the normal the smallest principal axis of the cloud |
| [frame](plane3d.frame_py.html) | the frame of the planes, that of their normals |
| [intersect](plane3d.intersect_py.html) | where the segments from v1 to v2 cross the plane, NaN where they do not |
| [plane3d](plane3d.plane3d_py.html) | a plane <N, v> = d, or a list of them |
| [plot](plane3d.plot_py.html) | planes in space drawn as polygons, each clipped by the bounds of the 3D axes |
| [project](plane3d.project_py.html) | the orthogonal projection of points onto the plane |
| [rotate](plane3d.rotate_py.html) | a rotation turns the normal, the distance stays |
| [shape](plane3d.shape_py.html) | the shape of the list of planes |
| [size](plane3d.size_py.html) | the number of planes |
| [subsref](plane3d.subsref_py.html) |  |

## Used on

[EBSD3Analysis](EBSD3Analysis_py.html), [EBSD3Plotting](EBSD3Plotting_py.html), [Grains3D](Grains3D_py.html), [RotationImproper](RotationImproper_py.html)

MATLAB's [plane3d_index](plane3d_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/plane.py#L23">source</a></font>
{% endraw %}
