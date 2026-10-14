---
title: 'plane3d.plane3d'
sidebar: function_reference_sidebar
permalink: plane3d.plane3d_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: plane3d.plane3d.html
status: Reference
---
{% raw %}
planes in three-dimensional space, stored by unit normals and signed offsets

## Syntax

<div class="mx-form" markdown="1">

```python
plane = plane3d(N, d)
```

Planes satisfying dot(N, v) = d.

</div>

<div class="mx-form" markdown="1">

```python
plane = plane3d(N, v0)
```

Planes with normal N through v0.

</div>

<div class="mx-form" markdown="1">

```python
plane = plane3d.byPoints(v)
```

Least-squares plane through a point cloud.

</div>

## Description

Normals are normalised internally. A numeric offset is divided by the original normal
length, so rescaling both N and d describes the same plane. With unit N, d is the signed
distance from the origin, in the units of the positions. Arrays of normals and offsets
represent arrays of planes. The normals carry the coordinate frame.

## Input

| `N` | vector3d plane normals, coordinate arrays, or a plane3d to copy |
| `d` | numeric offsets, or vector3d positions through which the planes pass; default 0 |

## Output

| `plane` | plane3d |

## Properties

| `N` | unit normals as vector3d |
| `d` | signed distances from the origin |
| `frame` | coordinate frame of the normals |
| `shape` | shape of the plane array |

## See also

[plane3d.byPoints](plane3d.byPoints_py.html), [plane3d.dist](plane3d.dist_py.html), [plane3d.project](plane3d.project_py.html), [plane3d.intersect](plane3d.intersect_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
plane3d(N, d=0)
```

</div>

## Used on

[EBSD3Analysis](EBSD3Analysis_py.html), [EBSD3Plotting](EBSD3Plotting_py.html), [Grains3D](Grains3D_py.html), [RotationImproper](RotationImproper_py.html)

MATLAB's [plane3d.plane3d](plane3d.plane3d.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/plane.py#L23">source</a></font>
{% endraw %}
