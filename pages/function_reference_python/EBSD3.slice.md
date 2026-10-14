---
title: 'EBSD3.slice'
sidebar: function_reference_sidebar
permalink: EBSD3.slice_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD3.slice.html
status: Reference
---
{% raw %}
A method of [EBSD3](EBSD3_index_py.html).

the 2D map of the section of a volume through a plane; MATLAB's slice of EBSD3

## Syntax

<div class="mx-form" markdown="1">

```python
ebsd = ebsd3.slice(plane3d(vector3d.Z, vector3d(0, 0, 2)))
```

A plane3d.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = ebsd3.slice(vector3d(1, 1, 1), vector3d(1, 1, 2))
```

Normal and a point on the plane.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = ebsd3.slice(vector3d.Z, 2.5)
```

Normal and distance from the origin.

</div>

## Description

The volume is sampled on a square grid of the voxel spacing in the plane, spanned by the
edge of the bounding box that lies most in the plane and the direction across it, the
grid covering the section of the box. Every grid point takes the voxel holding it, as
interp does; the points outside the volume are not indexed. The result is a gridded EBSD
map whose positions lie in the plane.

## Input

| `ebsd3` | EBSD3 |
| `plane` | plane3d, or the normal vector3d of the plane |

## Keywords

| keyword | default | description |
|---|---|---|
| `P0` | `None` | with a normal: a point on the plane, a vector3d, or its distance from the origin; by default the plane through the origin |

## Output

| `ebsd` | EBSD, a gridded map in the plane |

## See also

[EBSD3.interp](EBSD3.interp_py.html), [grain3d.slice](grain3d.slice_py.html), [plane3d](plane3d_index_py.html), [EBSD3Plotting](EBSD3Plotting_py.html)

MATLAB's [EBSD3.slice](EBSD3.slice.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/ebsd3.py#L252">source</a></font>
{% endraw %}
