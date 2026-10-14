---
title: 'grain3d.intersected'
sidebar: function_reference_sidebar
permalink: grain3d.intersected_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain3d.intersected.html
status: Reference
---
{% raw %}
A method of [grain3d](grain3d_index_py.html).

whether a plane runs through a grain; MATLAB's intersected of grain3d

## Syntax

<div class="mx-form" markdown="1">

```python
ind = grains.intersected(vector3d(1, 1, 1), vector3d(1, 1, 1))
```

Normal and a point on the plane.

</div>

<div class="mx-form" markdown="1">

```python
ind = grains.intersected(vector3d.X, 1.4)
```

Normal and distance from the origin.

</div>

<div class="mx-form" markdown="1">

```python
grains = grains[grains.intersected(plane3d(vector3d.Z, vector3d(0, 0, 2)))]
```

The grains a plane cuts.

</div>

## Description

A grain is intersected when the vertices of its boundary lie on both sides of the plane,
strictly; a plane through vertices alone does not intersect.

## Input

| `grains` | grain3d |
| `plane` | plane3d, or the normal vector3d of the plane |

## Keywords

| keyword | default | description |
|---|---|---|
| `P0` | `None` | with a normal: a point on the plane, a vector3d, or its distance from the origin; by default the plane through the origin |

## Output

| `ind` | boolean mask of the grains |

## See also

[grain3d.slice](grain3d.slice_py.html), [plane3d](plane3d_index_py.html)

## Used on

[NeperInterface](NeperInterface_py.html)

MATLAB's [grain3d.intersected](grain3d.intersected.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/grain3d.py#L465">source</a></font>
{% endraw %}
