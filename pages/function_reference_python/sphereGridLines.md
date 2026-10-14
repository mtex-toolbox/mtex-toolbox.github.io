---
title: 'sphereGridLines'
sidebar: function_reference_sidebar
permalink: sphereGridLines_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the small circles about the pole and the meridians, as polylines of directions

## Syntax

Every 30 degree:

```python
L = sphereGridLines()
```

A denser grid:

```python
L = sphereGridLines(step=15*degree, points=181)
```

The small circles about z at every multiple of step strictly between the poles, then the
meridians from pole to pole at every multiple of step in the azimuth.

## Output

| | |
|---|---|
| `L` | list of (k, 3) arrays, one polyline per circle |

## Keywords

| | default | |
|---|---|---|
| `step` | `30*degree` | the spacing of the circles in the polar angle and of the meridians in the azimuth |
| `points` | `91` | the number of points of a small circle; a meridian takes half as many |

## See also

[smallCircle](smallCircle_py.html), [sphereMesh](sphereMesh_py.html), [regionLines](regionLines_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/space.py#L75">source</a></font>
{% endraw %}
