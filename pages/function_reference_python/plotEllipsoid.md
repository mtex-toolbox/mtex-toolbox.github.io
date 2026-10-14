---
title: 'plotEllipsoid'
sidebar: function_reference_sidebar
permalink: plotEllipsoid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: plotEllipsoid.html
status: Reference
---
{% raw %}
ellipsoids with the half axes a, b, c about their centres, in a 3D scene; MATLAB's
plotEllipsoid

## Syntax

<div class="mx-form" markdown="1">

```python
a, b, c = grains.principalComponents()
```

</div>

<div class="mx-form" markdown="1">

```python
plotEllipsoid(grains.centroid, a, b, c, faceColor='r')
```

The ellipsoids of the grains.

</div>

<div class="mx-form" markdown="1">

```python
plotEllipsoid(grains.centroid, a, b, c, faceColor=rgb, edgeAlpha=0)
```

A colour each, no edges.

</div>

## Description

Every ellipsoid is a surface on a grid of 24 longitudes and 12 latitudes. With hold on it
joins the grains of the scene drawn before. The plot is a scene3d held by the mtexFigure, shown as the picture PyVista renders offscreen
(matplotlib's 3D axes without PyVista), so hold, setCamera and mtexColorbar act on it as on
any MTEX figure; show3d opens it in a window and exportHTML writes it as an interactive
page.

## Input

| `center` | vector3d, the centres |
| `a` | vector3d, the first half axis of every ellipsoid |
| `b` | vector3d, the second half axis |
| `c` | vector3d, the third half axis |

## Keywords

| keyword | default | description |
|---|---|---|
| `faceColor` | `'lightblue'` | the colour of the ellipsoids, one for all or an (n, 3) array of RGB values one per ellipsoid |
| `edgeAlpha` | `0.25` | the opacity of the grid lines on the surfaces |
| `how2plot` | `None` | the plottingConvention of the view, by default plottingConvention.default3D |
| `figSize` | `None` | the size of a new figure, 'small', 'normal', 'large', ..., or (width, height) in inches |

## Output

| `fig` | mtexFigure |

## See also

[grain3d.principalComponents](grain3d.principalComponents_py.html), [grain3d.centroid](grain3d.centroid_py.html), [grain3d.plot](grain3d.plot_py.html)

## Used on

[Grains3DProperties](Grains3DProperties_py.html)

MATLAB's [plotEllipsoid](plotEllipsoid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/volumeplot.py#L214">source</a></font>
{% endraw %}
