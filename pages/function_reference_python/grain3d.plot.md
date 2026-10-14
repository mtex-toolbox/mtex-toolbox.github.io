---
title: 'grain3d.plot'
sidebar: function_reference_sidebar
permalink: grain3d.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain3d.plot.html
status: Reference
---
{% raw %}
A method of [grain3d](grain3d_index_py.html).

the 3D grains drawn by their faces, coloured by phase, by a value or an orientation per
grain, or in one colour; MATLAB's grain3d.plot

## Syntax

Coloured by phase:

```python
plot(grains)
```

Coloured by a value per grain:

```python
plot(grains, grains.volume)
```

By the orientation, no edges:

```python
plot(grains, grains.meanOrientation, lineStyle='none')
```

One translucent colour:

```python
plot(grains, faceColor='r', faceAlpha=0.5)
```

Only the outer faces of the set are drawn, each in the colour of the grain it bounds; a
face between two grains of the set is inside and is drawn grey only where the faces are
translucent. Values are mapped by the colour map, parula as MATLAB's patches, and
orientations by an ipfColorKey of their phase.

The options of the drawing are keywords too: faceColor, faceAlpha, edgeColor, edgeAlpha,
lineWidth, colormap, colorRange and ipfDirection; lineStyle='none' draws no edges.
The plot is a scene3d held by the mtexFigure, shown as the picture PyVista renders offscreen
(matplotlib's 3D axes without PyVista), so hold, setCamera and mtexColorbar act on it as on
any MTEX figure; show3d opens it in a window and exportHTML writes it as an interactive
page.

## Input

| | |
|---|---|
| `grains` | grain3d |
| `color` | a value, an orientation or an RGB colour per grain; by default the phase colours |

## Output

| | |
|---|---|
| `fig` | mtexFigure |

## Keywords

| | default | |
|---|---|---|
| `how2plot` | `None` | the plottingConvention of the view, by default plottingConvention.default3D |
| `figSize` | `None` | the size of a new figure, 'small', 'normal', 'large', ..., or (width, height) in inches |

## See also

[grain3Boundary.plot](grain3Boundary.plot_py.html), [EBSD3.plot](EBSD3.plot_py.html), [grain2d.plot](grain2d.plot_py.html), [plotEllipsoid](plotEllipsoid_py.html), [Grains3DOperations](Grains3DOperations_py.html)

MATLAB's [grain3d.plot](grain3d.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/volumeplot.py#L53">source</a></font>
{% endraw %}
