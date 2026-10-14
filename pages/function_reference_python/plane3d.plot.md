---
title: 'plane3d.plot'
sidebar: function_reference_sidebar
permalink: plane3d.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: plane3d.plot.html
status: Reference
---
{% raw %}
A method of [plane3d](plane3d_index_py.html).

planes in space drawn as polygons, each clipped by the bounds of the 3D axes

## Syntax

<div class="mx-form" markdown="1">

```python
plot(plane)
```

Into the current box, translucent.

</div>

<div class="mx-form" markdown="1">

```python
plot(plane, faceColor='red', faceAlpha=0.3)
```

Coloured.

</div>

## Description

Every plane is cut by the box of the current axes and drawn as the polygon that remains;
the box stays as it was, so draw what defines it first. A plane cannot be drawn into a map.

## Input

| `plane` | plane3d, one or several |

## Keywords

| keyword | default | description |
|---|---|---|
| `faceColor` | `None` | one colour, or one per plane |
| `faceAlpha` | `0.5` | the opacity of the polygons |
| `edgeColor` | `'k'` | the colour of their edges |
| `lineWidth` | `0.8` | the width of their edges |
| `displayName` | `None` | the label in a legend |

## Output

| `h` | the matplotlib collection of the polygons, None when no plane meets the box |

## See also

[plane3d](plane3d_index_py.html), [crystalShape.plot](crystalShape.plot_py.html), [plot3d](S2Fun.plot3d_py.html)

MATLAB's [plane3d.plot](plane3d.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/shapeplot.py#L382">source</a></font>
{% endraw %}
