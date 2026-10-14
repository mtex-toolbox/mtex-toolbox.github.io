---
title: 'mapImage.plot'
sidebar: function_reference_sidebar
permalink: mapImage.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mapImage.plot.html
status: Reference
---
{% raw %}
A method of [mapImage](mapImage_index_py.html).

an image, or a list of them, drawn where it sits on the specimen, in the specimen's
coordinates and in the screen orientation of its frame

## Syntax

One image:

```python
plot(mg)
```

One axes per image, titled by its name:

```python
plot(imgList)
```

The edge transform of each:

```python
plot(imgList, edge=True)
```

One channel of a multi-channel image:

```python
plot(mg, channel=1)
```

No scale bar, another colour map:

```python
plot(mg, micronbar=False, colormap='parula')
```

An image over its map:

```python
plot(ebsd, ebsd.bc); hold(True); plot(mg, alpha=0.5)
```

An image is drawn in micrometres, not pixels, in the screen orientation its frame takes,
so that an image and the map it is aligned to lie on top of each other without either
being turned first. One channel is drawn in gray through the colour map, three as RGB. A
list or mapImageList draws one axes per image, the quick check that a sequence covers the
same area the same way up. edge=True draws edgeMap(mg), what a registration matches on,
its contrast stretched over the 2nd to 98th percentile.

## Input

| | |
|---|---|
| `mg` | mapImage, or a list or mapImageList of them |

## Output

| | |
|---|---|
| `h` | the matplotlib image, a list of them for a list |

## Keywords

| | default | |
|---|---|---|
| `channel` | `None` | the channel, or the three channels, to draw; by default all |
| `edge` | `False` | draw the edge transform of the image instead of its values |
| `micronbar` | `None` | draw the scale bar; by default the preference showMicronBar |
| `refFrame` | `True` | draw the axes of the specimen frame in the scale bar box |
| `colormap` | `None` | the colour map of a single channel, gray by default |
| `layout` | `None` | (rows, columns) of the axes of a list |
| `figSize` | `None` | the size of a new figure of a list |

## See also

[mapImage](mapImage_index_py.html), edgeMap, [xcfShift](xcfShift_py.html), [EBSDMapsAndImages](EBSDMapsAndImages_py.html)

MATLAB's [mapImage.plot](mapImage.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mapplot.py#L1301">source</a></font>
{% endraw %}
