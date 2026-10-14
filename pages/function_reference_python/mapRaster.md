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

```python
mapRaster(ebsd, maxPixels=16000000, layout=None)
```

A pixel belongs to the cell of the nearest site: by rounding the lattice coordinates where
the lattice is aligned with the screen and the parallelogram is the cell, and otherwise
among the four corners of the lattice parallelogram it lies in, since on a hexagonal
lattice the parallelogram is a rhombus and not the cell. One pixel per cell where the
lattice is aligned with the screen, a quarter of the spacing elsewhere. A lattice the measurements
have drifted from has no picture, judged at the scale of the picture with a hundredth of
a cell as the floor.

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/maps.py#L117">source</a></font>
{% endraw %}
