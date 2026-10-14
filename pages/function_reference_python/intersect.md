---
title: 'intersect'
sidebar: function_reference_sidebar
permalink: intersect_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
intersect(plane, v1, v2): where the segments cross the plane

## Syntax

<div class="mx-form" markdown="1">

```python
v = intersect(plane, v1, v2)
```

The crossings of the segments from v1 to v2.

</div>

## Input

| `plane` | plane3d |
| `v1` | vector3d, the starting points of the segments |
| `v2` | vector3d, their end points, by default the last axis of v1 holding both |

## Output

| `v` | vector3d of the crossings, NaN where a segment misses the plane |

## See also

[plane3d.intersect](plane3d.intersect_py.html), [lineIntersect](vector3d.lineIntersect_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
intersect(plane, v1, v2=None)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/plane.py#L253">source</a></font>
{% endraw %}
