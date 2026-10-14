---
title: 'grainBoundary.plot'
sidebar: function_reference_sidebar
permalink: grainBoundary.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.plot.html
status: Reference
---
{% raw %}
the grain boundary segments, in one colour or coloured segment by segment

## Syntax

All boundaries in black:

```python
plot(grains.boundary)
```

The subgrain boundaries in red:

```python
plot(grains.innerBoundary, lineColor='r', lineWidth=2)
```

By misorientation angle:

```python
plot(gB, gB.misorientation.angle() / degree, colorbar=True)
```

By an RGB colour per segment, n x 3:

```python
plot(gB, rgb)
```

A transparency per segment:

```python
plot(gB, edgeAlpha=a)
```

Without values the boundary is drawn as joined chains in one colour; a value per segment
colours it through a colour map, an RGB triple per segment directly, both segment by
segment with round caps, so that a staircase reads as one line. A boundary draws no phase
legend. MATLAB's edgeColor is a synonym of lineColor here too.

region=(xmin, xmax, ymin, ymax) shows a part of the map, title= names the axes,
coordinates=True labels the axes with the map coordinates, how2plot= a plottingConvention
other than the map's, parent= the axes to draw into and figSize= the size of a new figure;
every other keyword goes to the matplotlib artist.

## Input

| | |
|---|---|
| `gB` | grainBoundary |
| `color` | an array of a value or of an RGB colour per segment |

## Output

| | |
|---|---|
| `h` | the matplotlib line or line collection |

## Keywords

| | default | |
|---|---|---|
| `lineColor` | `'k'` | the colour of the boundary without values |
| `lineWidth` | `1.0` | the width of the lines |
| `colormap` | `'viridis'` | the colour map of values |
| `colorRange` | `None` | (lo, hi), the values the colour map spans |
| `colorbar` | `False` | add a colour bar for values |
| `edgeAlpha` | `1.0` | the opacity, one for all or one per segment between 0 and 1 |
| `micronbar` | `None` | draw the scale bar; by default the preference showMicronBar |
| `refFrame` | `True` | draw the axes of the specimen frame in the scale bar box |
| `displayName` | `None` | the name in a legend |

## See also

[BoundaryPlots](BoundaryPlots_py.html), [grain2d.plot](grain2d.plot_py.html), [EBSD.plot](EBSD.plot_py.html), [triplePointList.plot](triplePointList.plot_py.html)

MATLAB's [grainBoundary.plot](grainBoundary.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L767">source</a></font>
{% endraw %}
