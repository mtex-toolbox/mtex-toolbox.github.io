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

<div class="mx-form" markdown="1">

```python
L = sphereGridLines()
```

Every 30 degree.

</div>

<div class="mx-form" markdown="1">

```python
L = sphereGridLines(step=15*degree, points=181)
```

A denser grid.

</div>

## Description

The small circles about z at every multiple of step strictly between the poles, then the
meridians from pole to pole at every multiple of step in the azimuth.

## Keywords

| keyword | default | description |
|---|---|---|
| `step` | `30*degree` | the spacing of the circles in the polar angle and of the meridians in the azimuth |
| `points` | `91` | the number of points of a small circle; a meridian takes half as many |

## Output

| `L` | list of (k, 3) arrays, one polyline per circle |

## See also

[smallCircle](smallCircle_py.html), [sphereMesh](sphereMesh_py.html), [regionLines](regionLines_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/space.py#L75">source</a></font>
{% endraw %}
