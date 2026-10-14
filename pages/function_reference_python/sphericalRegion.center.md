---
title: 'sphericalRegion.center'
sidebar: function_reference_sidebar
permalink: sphericalRegion.center_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [sphericalRegion](sphericalRegion_index_py.html).

the centre (MATLAB @sphericalRegion/center): the pole of a single circle, the bisector of
the two boundaries furthest apart for a lune, the barycentre of the vertices of a
triangle, and the area centroid of anything larger

## Syntax

<div class="mx-form" markdown="1">

```python
c = sR.center()
```

The centre of the region.

</div>

<div class="mx-form" markdown="1">

```python
c = sR.center(resolution=0.5*degree)
```

The centroid on a finer grid.

</div>

## Description

The whole sphere has its centre at z. The area centroid is the normalised sum of the
points of an equispaced grid inside the region; resolution is its spacing and matters
only there.

## Input

| `sR` | sphericalRegion |

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `1*degree` | the spacing of the grid of the area centroid |

## Output

| `c` | vector3d, a unit vector in the frame of the region |

## See also

[sphericalRegion.vertices](sphericalRegion.vertices_py.html), [sectorCenter](sectorCenter_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/sphericalregion.py#L147">source</a></font>
{% endraw %}
