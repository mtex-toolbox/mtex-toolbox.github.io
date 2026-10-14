---
title: 'grain3d.slice'
sidebar: function_reference_sidebar
permalink: grain3d.slice_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain3d.slice.html
status: Reference
---
{% raw %}
A method of [grain3d](grain3d_index_py.html).

the 2D grains a plane cuts from 3D grains; MATLAB's slice of grain3d

## Syntax

<div class="mx-form" markdown="1">

```python
grains2 = grains.slice(plane3d(vector3d.Z, vector3d(0, 0, 2.2)))
```

A plane3d.

</div>

<div class="mx-form" markdown="1">

```python
grains2 = grains.slice(vector3d(1, 1, 1), vector3d(1, 1, 2))
```

Normal and a point on the plane.

</div>

<div class="mx-form" markdown="1">

```python
grains2 = grains.slice(vector3d.Z, 2.2)
```

Normal and distance from the origin.

</div>

## Description

Every grain the plane intersects contributes the polygons of its section, which become
grains of a grain2d in the plane; grains2.prop['Id3d'] names the 3D grain every section
came from, and the sections keep its phase, mean orientation and GOS. The plane is moved
by 0.001 towards the origin, as MATLAB's, so that it runs through no vertex. A plane that
cuts no grain gives an empty grain2d.

## Input

| `grains` | grain3d |
| `plane` | plane3d, or the normal vector3d of the plane |

## Keywords

| keyword | default | description |
|---|---|---|
| `P0` | `None` | with a normal: a point on the plane, a vector3d, or its distance from the origin; by default the plane through the origin |

## Output

| `grains2` | grain2d |

## See also

[grain3d.intersected](grain3d.intersected_py.html), [EBSD3.slice](EBSD3.slice_py.html), [grain2d](grain2d_index_py.html)

MATLAB's [grain3d.slice](grain3d.slice.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/grain3d.py#L472">source</a></font>
{% endraw %}
