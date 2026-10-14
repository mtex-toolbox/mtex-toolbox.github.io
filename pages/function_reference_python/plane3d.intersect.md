---
title: 'plane3d.intersect'
sidebar: function_reference_sidebar
permalink: plane3d.intersect_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: plane3d.intersect.html
status: Reference
---
{% raw %}
A method of [plane3d](plane3d_index_py.html).

where the segments from v1 to v2 cross the plane, NaN where they do not

## Syntax

The crossings of the segments from v1 to v2:

```python
v = plane.intersect(v1, v2)
```

The segments as the pairs V[..., 0], V[..., 1]:

```python
v = plane.intersect(V)
```

## Input

| | |
|---|---|
| `plane` | plane3d |
| `v1` | vector3d, the starting points of the segments |
| `v2` | vector3d, their end points, by default the last axis of v1 holding both |

## Output

| | |
|---|---|
| `v` | vector3d of the crossings |

## Keywords

| | default | |
|---|---|---|
| `tol` | `5.72958e-12*degree` | how far, as a fraction of the segment, a crossing may lie beyond its ends |

## See also

[intersect](intersect_py.html), [lineIntersect](vector3d.lineIntersect_py.html), [plane3d.dist](plane3d.dist_py.html)

MATLAB's [plane3d.intersect](plane3d.intersect.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/plane.py#L126">source</a></font>
{% endraw %}
