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

<div class="mx-form" markdown="1">

```python
plot(grains.boundary)
```

All boundaries in black.

</div>

<div class="mx-form" markdown="1">

```python
plot(grains.innerBoundary, lineColor='r', lineWidth=2)
```

The subgrain boundaries in red.

</div>

<div class="mx-form" markdown="1">

```python
plot(gB, gB.misorientation.angle() / degree, colorbar=True)
```

By misorientation angle.

</div>

<div class="mx-form" markdown="1">

```python
plot(gB, rgb)
```

By an RGB colour per segment, n x 3.

</div>

<div class="mx-form" markdown="1">

```python
plot(gB, edgeAlpha=a)
```

A transparency per segment.

</div>

<div class="mx-form" markdown="1">

```python
plot(gB, lineWidth=4, smooth=True)
```

The chains with rounded joins.

</div>

## Description

Without values the boundary is drawn as joined chains in one colour; a value per segment
colours it through a colour map, an RGB triple per segment directly, both segment by
segment with round caps, so that a staircase reads as one line. A boundary draws no phase
legend. MATLAB's edgeColor is a synonym of lineColor here too. smooth=True rounds the joins
and the ends of the lines, which shows on thick ones.

region=(xmin, xmax, ymin, ymax) shows a part of the map, title= names the axes,
coordinates=True labels the axes with the map coordinates, how2plot= a plottingConvention
other than the map's, parent= the axes to draw into and figSize= the size of a new figure;
every other keyword goes to the matplotlib artist.

## Input

| `gB` | grainBoundary |
| `color` | an array of a value or of an RGB colour per segment |

## Keywords

| keyword | default | description |
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
| `smooth` | `False` | draw the chains with round joins and ends |

## Output

| `h` | the matplotlib line or line collection |

## See also

[BoundaryPlots](BoundaryPlots_py.html), [grain2d.plot](grain2d.plot_py.html), [EBSD.plot](EBSD.plot_py.html), [triplePointList.plot](triplePointList.plot_py.html)

MATLAB's [grainBoundary.plot](grainBoundary.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L818">source</a></font>
{% endraw %}
