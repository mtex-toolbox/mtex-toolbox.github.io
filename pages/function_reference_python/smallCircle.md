---
title: 'smallCircle'
sidebar: function_reference_sidebar
permalink: smallCircle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the circle of directions at an angle about a direction, closed; the plane at 90 degrees

## Syntax

The great circle perpendicular to z:

```python
c = smallCircle(zvector)
```

The cone of 30 degree about x:

```python
c = smallCircle(xvector, opening=30*degree, points=91)
```

## Input

| | |
|---|---|
| `n` | vector3d or three numbers, the axis of the circle |

## Output

| | |
|---|---|
| `c` | (points, 3) array, the directions along the circle, the first repeated as the last |

## Keywords

| | default | |
|---|---|---|
| `opening` | `90*degree` | the angle between the axis and the circle |
| `points` | `361` | the number of points |

## See also

[sphereGridLines](sphereGridLines_py.html), [circle](vector3d.circle_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/space.py#L52">source</a></font>
{% endraw %}
