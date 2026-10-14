---
title: 'EBSD.plot'
sidebar: function_reference_sidebar
permalink: EBSD.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.plot.html
status: Reference
---
{% raw %}
a spatial EBSD map, coloured by phase, by a value, by orientation or by colours given

## Syntax

Colours by phase, with a legend:

```python
plot(ebsd)
```

Colours by a value, here MAD:

```python
plot(ebsd, ebsd.mad)
```

With a colour bar of a fixed range:

```python
plot(ebsd, ebsd.mad, colorbar=True, colorRange=(0, 1))
```

Colours by orientation:

```python
plot(ebsd['Forsterite'], ebsd['Forsterite'].orientations)
```

Every phase by its inverse pole figure key along x:

```python
plot(ebsd, ipfDirection=xvector)
```

By an orientation colour key:

```python
plot(ebsd['Forsterite'], key)
```

By colours of one's own, n x 3:

```python
plot(ebsd['Forsterite'], rgb)
```

One colour, in the legend:

```python
plot(ebsd[ebsd.mad > 1], faceColor='black', displayName='bad values')
```

A part of the map:

```python
plot(ebsd, region=(0, 400, 0, 200))
```

The measurements as dots:

```python
plot(ebsd, backend='scatter', markerSize=2)
```

The map is drawn in the plotting convention of its frame (ebsd.how2plot), with a scale bar
and the axes of the specimen frame in one corner. The colouring follows mapValues: the
phases by default, a value per measurement through a colour map, orientations through the
inverse pole figure key of their phase, an orientation colour key, an RGB colour per
measurement, or one colour for all. Measurements without an orientation are drawn as
nothing.

A map on a rigid lattice is drawn as an image of at most maxPixels pixels, twice the
resolution of the axes by default, so that a large map draws fast; a smaller one, or one
whose cells are outlined, as one polygon per cell; a map without a lattice as dots.
backend chooses: 'imagesc' the image, 'patch' the cells, 'scatter' the dots. MATLAB's flag
'points' is backend='scatter', its 'exact' a larger maxPixels or backend='patch'.

region=(xmin, xmax, ymin, ymax) shows a part of the map, title= names the axes,
coordinates=True labels the axes with the map coordinates, how2plot= a plottingConvention
other than the map's, parent= the axes to draw into and figSize= the size of a new figure;
every other keyword goes to the matplotlib artist.

## Input

| | |
|---|---|
| `ebsd` | EBSD, a map of the plane |
| `color` | the colouring: an array of values or of RGB colours, orientations, an orientationColorKey, a crystalShape drawn at every measurement, a property name, 'phase', 'orientation' or one colour |

## Output

| | |
|---|---|
| `h` | the matplotlib image, collection or scatter drawn; MATLAB's second output, the map plot, is h.axes' mapPlot |

## Keywords

| | default | |
|---|---|---|
| `faceColor` | `None` | one colour for every measurement; 'none' outlines the cells |
| `backend` | `None` | 'imagesc', 'patch' or 'scatter', as above |
| `colormap` | `'viridis'` | the colour map of values, a name of MTEX's or matplotlib's |
| `colorRange` | `None` | (lo, hi), the values the colour map spans |
| `colorbar` | `False` | add a colour bar for values |
| `micronbar` | `None` | draw the scale bar; by default the preference showMicronBar |
| `refFrame` | `True` | draw the axes of the specimen frame in the scale bar box |
| `location` | `None` | the corner of the scale bar, 'sw', 'se', 'nw' or 'ne' |
| `ipfDirection` | `None` | vector3d, colour by orientation through the inverse pole figure key along this specimen direction |
| `maxPixels` | `None` | the most pixels of the image drawn of a map on a rigid lattice |
| `edgeColor` | `None` | outline every cell in this colour |
| `lineWidth` | `0.5` | the width of the cell outlines |
| `alpha` | `1.0` | the opacity, one for all or one per measurement |
| `legend` | `None` | draw the legend of the phases or the inverse pole figure keys; by default for a phase map |
| `displayName` | `None` | the name in a legend |
| `markerSize` | `4` | the size of the dots of backend='scatter' |

## See also

[EBSDPlotting](EBSDPlotting_py.html), [EBSDIPFMap](EBSDIPFMap_py.html), [EBSDAdvancedMaps](EBSDAdvancedMaps_py.html), [grain2d.plot](grain2d.plot_py.html), [grainBoundary.plot](grainBoundary.plot_py.html), [mapValues](mapValues_py.html), [ipfColorKey](ipfColorKey_index_py.html)

MATLAB's [EBSD.plot](EBSD.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L377">source</a></font>
{% endraw %}
