---
title: 'vector3d.lineIntersect'
sidebar: function_reference_sidebar
permalink: vector3d.lineIntersect_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.lineIntersect.html
status: Reference
---
{% raw %}
where the segments from a to b cross the planes <n, v> = d, NaN where they do not,
MATLAB's lineIntersect

## Syntax

<div class="mx-form" markdown="1">

```python
v = lineIntersect(a, b, n, d)
```

The crossings of the segments from a to b.

</div>

## Description

The segments and the planes broadcast against each other.

## Input

| `a, b` | vector3d, the starting and end points of the segments |
| `n` | vector3d, the normals of the planes |
| `d` | the distances of the planes, <n, v> = d |

## Keywords

| keyword | default | description |
|---|---|---|
| `tol` | `5.72958e-12*degree` | how far, as a fraction of the segment, a crossing may lie beyond its ends |

## Output

| `v` | vector3d of the crossings |

## See also

[plane3d.intersect](plane3d.intersect_py.html), [intersect](intersect_py.html)

MATLAB's [vector3d.lineIntersect](vector3d.lineIntersect.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/plane.py#L220">source</a></font>
{% endraw %}
