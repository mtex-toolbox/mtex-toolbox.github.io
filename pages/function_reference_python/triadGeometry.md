---
title: 'triadGeometry'
sidebar: function_reference_sidebar
permalink: triadGeometry_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the reference frame indicator MTEX draws in the scale bar box, with the text height t as
its unit: an arrow per axis that has a direction on screen, shortened by its tilt out of
the plane, a circle for an axis leaving the plane with its label inside, crossed by four
spokes when it points away from the viewer, and a label beside every arrow. Returns the
arrows as polygons, the symbol as a polyline with NaN breaks, the labels with their
positions, and the bounding box (umin, umax, vmin, vmax)

## Syntax

<div class="mx-form" markdown="1">

```python
arrows, symbol, texts, bbox = triadGeometry(frameOnScreen(pl), ['x', 'y', 'z'])
```

In text heights.

</div>

<div class="mx-form" markdown="1">

```python
arrows, symbol, texts, bbox = triadGeometry(screen, labels, t=2.0)
```

Twice as large.

</div>

## Input

| `screen` | the (right, up, out) triples of the axes, frameOnScreen |
| `labels` | the label of every axis |

## Keywords

| keyword | default | description |
|---|---|---|
| `t` | `1.0` | the height of the text, the unit of the drawing |

## Output

| `arrows` | a list of polygons of shape (7, 2) |
| `symbol` | array of shape (m, 2), the circle and its spokes, NaN rows between pieces |
| `texts` | a list of (position, label) |
| `bbox` | (umin, umax, vmin, vmax) |

## See also

[frameOnScreen](frameOnScreen_py.html), [scaleBar](scaleBar_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/maps.py#L462">source</a></font>
{% endraw %}
