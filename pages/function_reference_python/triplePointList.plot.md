---
title: 'triplePointList.plot'
sidebar: function_reference_sidebar
permalink: triplePointList.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: triplePointList.plot.html
status: Reference
---
{% raw %}
the triple points of a boundary network as circles, open or filled by a value

## Syntax

Black circles:

```python
plot(grains.triplePoints)
```

Red circles:

```python
plot(grains.triplePoints, color='r')
```

Filled by a value per point:

```python
plot(tP, values, colorbar=True)
```

Filled in one colour:

```python
plot(tP, markerFaceColor='b', markerEdgeColor='w', markerSize=4)
```

A triple point list drawn on its own opens a map of its own; drawn into a held map plot it
marks the points of that map. Without values the circles are open, edged in the colour
given, else black; values fill them through a colour map.

region=(xmin, xmax, ymin, ymax) shows a part of the map, title= names the axes,
coordinates=True labels the axes with the map coordinates, how2plot= a plottingConvention
other than the map's, parent= the axes to draw into and figSize= the size of a new figure;
every other keyword goes to the matplotlib artist.

## Input

| | |
|---|---|
| `tP` | triplePointList |
| `color` | a value per triple point, or the name of a colour |

## Output

| | |
|---|---|
| `h` | the matplotlib scatter, None when there are no points |

## Keywords

| | default | |
|---|---|---|
| `markerFaceColor` | `None` | the fill of the circles without values |
| `markerEdgeColor` | `None` | the edge colour of the circles |
| `markerSize` | `6` | the size of the circles, in points |
| `lineWidth` | `1.0` | the width of the circles' edge |
| `colormap` | `'viridis'` | the colour map of values |
| `colorRange` | `None` | (lo, hi), the values the colour map spans |
| `colorbar` | `False` | add a colour bar for values |
| `micronbar` | `None` | draw the scale bar; by default the preference showMicronBar |
| `refFrame` | `True` | draw the axes of the specimen frame in the scale bar box |
| `displayName` | `None` | the name in a legend, which joins the legend of the map |

## See also

[TriplePoints](TriplePoints_py.html), [grainBoundary.plot](grainBoundary.plot_py.html), [grain2d.plot](grain2d.plot_py.html)

MATLAB's [triplePointList.plot](triplePointList.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L855">source</a></font>
{% endraw %}
