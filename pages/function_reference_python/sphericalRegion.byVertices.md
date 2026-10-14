---
title: 'sphericalRegion.byVertices'
sidebar: function_reference_sidebar
permalink: sphericalRegion.byVertices_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: sphericalRegion.byVertices.html
status: Reference
---
{% raw %}
A method of [sphericalRegion](sphericalRegion_index_py.html).

the region bounded by the great circles through consecutive vertices V, taken counterclockwise

## Syntax

A triangle:

```python
sR = sphericalRegion.byVertices(vector3d([[0, 0, 1], [1, 0, 1], [1, 1, 1]]))
```

In a crystal frame:

```python
sR = sphericalRegion.byVertices(V, frame=cs)
```

The normal of every side is the cross product of two consecutive vertices, the last
joined to the first, so the region lies to the left when walking along the vertices.

## Input

| | |
|---|---|
| `V` | vector3d, the vertices in counterclockwise order |

## Output

| | |
|---|---|
| `sR` | sphericalRegion |

## Keywords

| | default | |
|---|---|---|
| `frame` | `None` | the frame the region is written in |

## See also

[sphericalRegion](sphericalRegion_index_py.html), [sphericalRegion.vertices](sphericalRegion.vertices_py.html)

MATLAB's [sphericalRegion.byVertices](sphericalRegion.byVertices.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/sphericalregion.py#L71">source</a></font>
{% endraw %}
