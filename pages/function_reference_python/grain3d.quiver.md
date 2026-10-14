---
title: 'grain3d.quiver'
sidebar: function_reference_sidebar
permalink: grain3d.quiver_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain3d.quiver.html
status: Reference
---
{% raw %}
A method of [grain3d](grain3d_index_py.html).

arrows at the centroids of 3D grains or of their boundary faces; MATLAB's
grain3Boundary.quiver and grain3d.quiver

## Syntax

<div class="mx-form" markdown="1">

```python
quiver(gB, gB.N, color='r')
```

The face normals in red.

</div>

<div class="mx-form" markdown="1">

```python
quiver(gB, gB.N, antipodal=True, autoScaleFactor=2)
```

Axes, twice as long.

</div>

<div class="mx-form" markdown="1">

```python
quiver(grains, grains.meanOrientation * Miller(0, 0, 1, cs))
```

A crystal direction per grain.

</div>

## Description

A grain's arrow is as long as its direction, a face's a fifth of the face's diameter,
both times autoScaleFactor. Antipodal directions, axes, are drawn as lines through the
centroid without heads. The plot is a scene3d held by the mtexFigure, shown as the picture PyVista renders offscreen
(matplotlib's 3D axes without PyVista), so hold, setCamera and mtexColorbar act on it as on
any MTEX figure; show3d opens it in a window and exportHTML writes it as an interactive
page.

## Input

| `x` | grain3d or grain3Boundary |
| `d` | vector3d, one direction per grain or face |

## Keywords

| keyword | default | description |
|---|---|---|
| `color` | `(0.0, 0.0, 1.0)` | the RGB colour of the arrows, one for all or one per arrow |
| `autoScaleFactor` | `1.0` | the factor of the arrow lengths |
| `scaling` | `True` | scale the arrows as above; False gives every arrow a quarter of its direction's length |
| `lineWidth` | `1.0` | the width of the shafts |
| `antipodal` | `None` | draw axes, lines without heads; by default d.antipodal |
| `how2plot` | `None` | the plottingConvention of the view, by default plottingConvention.default3D |
| `figSize` | `None` | the size of a new figure, 'small', 'normal', 'large', ..., or (width, height) in inches |

## Output

| `fig` | mtexFigure |

## See also

[grain3Boundary.plot](grain3Boundary.plot_py.html), [grain3d.plot](grain3d.plot_py.html), [quiver3d](S2AxisField.quiver3_py.html)

MATLAB's [grain3d.quiver](grain3d.quiver.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/volumeplot.py#L162">source</a></font>
{% endraw %}
