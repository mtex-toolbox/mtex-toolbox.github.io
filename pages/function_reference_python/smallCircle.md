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

<div class="mx-form" markdown="1">

```python
c = smallCircle(zvector)
```

The great circle perpendicular to z.

</div>

<div class="mx-form" markdown="1">

```python
c = smallCircle(xvector, opening=30*degree, points=91)
```

The cone of 30 degree about x.

</div>

## Input

| `n` | vector3d or three numbers, the axis of the circle |

## Keywords

| keyword | default | description |
|---|---|---|
| `opening` | `90*degree` | the angle between the axis and the circle |
| `points` | `361` | the number of points |

## Output

| `c` | (points, 3) array, the directions along the circle, the first repeated as the last |

## See also

[sphereGridLines](sphereGridLines_py.html), [circle](vector3d.circle_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/space.py#L52">source</a></font>
{% endraw %}
