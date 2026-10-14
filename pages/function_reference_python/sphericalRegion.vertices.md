---
title: 'sphericalRegion.vertices'
sidebar: function_reference_sidebar
permalink: sphericalRegion.vertices_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [sphericalRegion](sphericalRegion_index_py.html).

the corners of the region: the intersections of its circles that lie inside

## Syntax

The corners, each once:

```python
V = sR.vertices()
```

## Input

| | |
|---|---|
| `sR` | sphericalRegion |

## Output

| | |
|---|---|
| `V` | vector3d of unit vectors in the frame of the region |

## Keywords

| | default | |
|---|---|---|
| `tol` | `1e-08` | the margin by which an intersection may lie outside the other circles |

## See also

[sphericalRegion.boundary](sphericalRegion.boundary_py.html), [sphericalRegion.byVertices](sphericalRegion.byVertices_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/sphericalregion.py#L265">source</a></font>
{% endraw %}
