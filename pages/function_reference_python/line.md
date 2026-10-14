---
title: 'line'
sidebar: function_reference_sidebar
permalink: line_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a polyline in the coordinates of the current map, drawn under its layout, MATLAB's line

## Syntax

<div class="mx-form" markdown="1">

```python
plot(ebsd)
```

</div>

<div class="mx-form" markdown="1">

```python
line([0, 10000], [0, 5000], lineStyle=':', lineWidth=4, color='w')
```

A dotted white line across the map.

</div>

<div class="mx-form" markdown="1">

```python
line(x, y, z)
```

A polyline in a 3D scene.

</div>

## Description

The points are given in the map's coordinates and placed on the screen as the map is,
whatever its plotting convention; without a map the line goes into the current axes as
given. The line is black, solid and 0.5 wide unless the keywords say otherwise; the other
keywords are matplotlib's. With z the polyline goes into the current 3D scene, NaN
separating its pieces.

## Input

| `x, y` | the coordinates of the points |

## Keywords

| keyword | default | description |
|---|---|---|
| `z` | `None` | the third coordinates, a polyline in space |

## Output

| `h` | the matplotlib line, or the scene object of a line in space |

## See also

[scatterXY](scatterXY_py.html), [text](EBSD.text_py.html), [quiver](ODFSections.quiver_py.html)

## Used on

[Grains3DBoundaries](Grains3DBoundaries_py.html), [BoundaryIntersections](BoundaryIntersections_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L997">source</a></font>
{% endraw %}
