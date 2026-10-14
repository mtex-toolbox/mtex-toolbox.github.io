---
title: 'grain2d.plot'
sidebar: function_reference_sidebar
permalink: grain2d.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.plot.html
status: Reference
---
{% raw %}
the grains of a map as polygons, coloured by phase, by a value or by orientation, with
their boundaries on top

## Syntax

<div class="mx-form" markdown="1">

```python
plot(grains)
```

Colours by phase.

</div>

<div class="mx-form" markdown="1">

```python
plot(grains, grains.area, colorbar=True)
```

Colours by a value per grain.

</div>

<div class="mx-form" markdown="1">

```python
plot(grains['Forsterite'], grains['Forsterite'].meanOrientation)
```

By mean orientation.

</div>

<div class="mx-form" markdown="1">

```python
plot(grains, ipfDirection=xvector)
```

Every phase by its inverse pole figure key along x.

</div>

<div class="mx-form" markdown="1">

```python
plot(grains, faceColor='none', lineColor='r')
```

The outlines alone, in red.

</div>

<div class="mx-form" markdown="1">

```python
plot(grains, boundary=False, translucent=0.5)
```

No boundary, faded by colour.

</div>

<div class="mx-form" markdown="1">

```python
plot(grains, faceColor='red', displayName='all grains')
```

One colour, in the legend.

</div>

<div class="mx-form" markdown="1">

```python
plot(grains, cS)
```

The crystal shape of every grain.

</div>

<div class="mx-form" markdown="1">

```python
plot(grains, v)
```

An axis per grain as a needle.

</div>

## Description

Every grain is one polygon with its holes, coloured as mapValues colours: by phase, by a
value per grain through a colour map, by orientations through the inverse pole figure key
of their phase, by an orientation colour key, by an RGB colour per grain or in one colour.
The boundary, grains.boundary, is drawn on top in lineColor, else in the face colour, else
black. A crystalShape draws the shape of every grain, rotated by its mean orientation, at
its centroid; a vector3d per grain an axis as a needle through it, its half pointing out of
the screen black and the other white.

translucent=s fades a grain by its colour, as MATLAB's 'translucent': the opacity of a grain
is s (1 - min(r, g, b)) for a colour and s v / max(v) for a value, so that pale grains let
what lies below show.

region=(xmin, xmax, ymin, ymax) shows a part of the map, title= names the axes,
coordinates=True labels the axes with the map coordinates, how2plot= a plottingConvention
other than the map's, parent= the axes to draw into and figSize= the size of a new figure;
every other keyword goes to the matplotlib artist.

## Input

| `grains` | grain2d |
| `color` | the colouring: an array of values or of RGB colours, orientations, an orientationColorKey, a crystalShape, a vector3d per grain, the name of a property or of a measure ('area', 'aspectRatio', ...), 'phase' or one colour |

## Keywords

| keyword | default | description |
|---|---|---|
| `faceColor` | `None` | one colour for every grain; 'none' draws the boundary alone |
| `colormap` | `'viridis'` | the colour map of values |
| `colorRange` | `None` | (lo, hi), the values the colour map spans |
| `colorbar` | `False` | add a colour bar for values |
| `micronbar` | `None` | draw the scale bar; by default the preference showMicronBar |
| `refFrame` | `True` | draw the axes of the specimen frame in the scale bar box |
| `location` | `None` | the corner of the scale bar, 'sw', 'se', 'nw' or 'ne' |
| `ipfDirection` | `None` | vector3d, colour by orientation through the inverse pole figure key along this specimen direction |
| `boundary` | `True` | draw the grain boundary on top, MATLAB's flag noBoundary as boundary=False |
| `lineWidth` | `1.0` | the width of the boundary |
| `lineColor` | `None` | the colour of the boundary |
| `alpha` | `1.0` | the opacity of the grains |
| `legend` | `None` | draw the legend of the phases or the inverse pole figure keys; by default for a phase map |
| `displayName` | `None` | the name in a legend |
| `translucent` | `None` | s, the opacity of a grain following its colour, as above |

## Output

| `h` | the matplotlib collection of the grains |

## See also

[GrainSpatialPlots](GrainSpatialPlots_py.html), [EBSD.plot](EBSD.plot_py.html), [grainBoundary.plot](grainBoundary.plot_py.html), [mapValues](mapValues_py.html), [crystalShape](crystalShape_index_py.html)

MATLAB's [grain2d.plot](grain2d.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L625">source</a></font>
{% endraw %}
