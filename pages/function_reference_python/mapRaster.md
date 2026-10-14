---
title: 'mapRaster'
sidebar: function_reference_sidebar
permalink: mapRaster_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the picture a map on a rigid lattice is drawn as: the rectangle its cells span and, for
every pixel, the measurement whose cell covers it or -1 where none does, as an array of
shape (ny, nx) with the first row at the bottom; None where the map is no picture

## Syntax

<div class="mx-form" markdown="1">

```python
xs, ys, index = mapRaster(ebsd)
```

One pixel per cell.

</div>

<div class="mx-form" markdown="1">

```python
xs, ys, index = mapRaster(ebsd, maxPixels=10000)
```

A coarser picture.

</div>

<div class="mx-form" markdown="1">

```python
xs, ys, index = mapRaster(ebsd, layout=mapLayout('x↑→y'))
```

Turned to another convention.

</div>

## Description

Every pixel of the picture shows the measurement whose site is nearest. Where the lattice
is aligned with the screen the picture has one pixel per cell; elsewhere, as on a turned or
a hexagonal lattice, a quarter of the spacing.

A map whose positions have drifted from their lattice has no picture: the drift is judged
at the scale of the picture, with a hundredth of a cell as the floor. The padding of a grid
shows nothing.

## Input

| `ebsd` | EBSD |

## Keywords

| keyword | default | description |
|---|---|---|
| `maxPixels` | `16000000` | the largest number of pixels; a larger picture is scaled down, its shape kept |
| `layout` | `None` | the 2 x 2 matrix taking the plane to the screen, mapLayout; by default the identity |

## Output

| `xs, ys` | the screen extent (lo, hi) of the picture in x and in y |
| `index` | array of shape (ny, nx), the measurement of every pixel, -1 for none |

## See also

[mapCells](mapCells_py.html), [mapPoints](mapPoints_py.html), [mapLayout](mapLayout_py.html), [plotEBSD](EBSD.plot_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/maps.py#L133">source</a></font>
{% endraw %}
