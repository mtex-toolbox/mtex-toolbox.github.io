---
title: 'plane3d.dist'
sidebar: function_reference_sidebar
permalink: plane3d.dist_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: plane3d.dist.html
status: Reference
---
{% raw %}
A method of [plane3d](plane3d_index_py.html).

the signed distance of points to the plane, or the distance of two parallel planes,
NaN where the planes meet

## Syntax

The signed distance of points, <N, v> - d:

```python
d = plane.dist(v)
```

The distance of parallel planes:

```python
d = plane.dist(plane2)
```

Two planes count as parallel when their normals agree up to tol; MATLAB requires them to
agree exactly and returns the first plane's d for planes that meet, the port NaN.

## Input

| | |
|---|---|
| `plane` | plane3d |
| `v` | vector3d of points, or a second plane3d |

## Output

| | |
|---|---|
| `d` | the distances, positive on the side the normal points to |

## Keywords

| | default | |
|---|---|---|
| `tol` | `1e-08` | how far the cosine of the normals may stay from 1 for parallel planes |

## See also

[dist](dist_py.html), [plane3d.project](plane3d.project_py.html), [plane3d.intersect](plane3d.intersect_py.html)

MATLAB's [plane3d.dist](plane3d.dist.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/plane.py#L95">source</a></font>
{% endraw %}
