---
title: 'grain3Boundary.plot'
sidebar: function_reference_sidebar
permalink: grain3Boundary.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain3Boundary.plot.html
status: Reference
---
{% raw %}
A method of [grain3Boundary](grain3Boundary_index_py.html).

the faces of a 3D grain boundary, light blue, in one colour, or coloured by a value or a
colour per face; MATLAB's grain3Boundary.plot

## Syntax

Light blue faces:

```python
plot(gB)
```

Coloured by a value per face:

```python
plot(gB, gB.area)
```

One colour, faint edges:

```python
plot(gB, faceColor='r', edgeAlpha=0.2)
```

Values are mapped by the colour map, parula as MATLAB's patches. The options of the
drawing are keywords too: faceColor, faceAlpha, edgeColor, edgeAlpha, lineWidth, colormap
and colorRange; lineStyle='none' draws no edges. The plot is a scene3d held by the mtexFigure, shown as the picture PyVista renders offscreen
(matplotlib's 3D axes without PyVista), so hold, setCamera and mtexColorbar act on it as on
any MTEX figure; show3d opens it in a window and exportHTML writes it as an interactive
page.

## Input

| | |
|---|---|
| `gB` | grain3Boundary |
| `color` | a value or an RGB colour per face |

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

[grain3d.plot](grain3d.plot_py.html), [grain3Boundary.quiver](grain3Boundary.quiver_py.html), [Grains3DOperations](Grains3DOperations_py.html)

MATLAB's [grain3Boundary.plot](grain3Boundary.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/volumeplot.py#L91">source</a></font>
{% endraw %}
