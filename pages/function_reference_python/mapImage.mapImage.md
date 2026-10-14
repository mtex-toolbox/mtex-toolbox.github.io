---
title: 'mapImage.mapImage'
sidebar: function_reference_sidebar
permalink: mapImage.mapImage_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mapImage.mapImage.html
status: Reference
---
{% raw %}
an image that knows where on the specimen it sits: a regular grid of an origin and two
perpendicular steps, d1 from row to row and d2 from column to column; an integer image is
scaled to [0, 1]

## Syntax

```python
mapImage(img=None, ebsd=None, dxy=1.0, origin=None, name='', scanUnit=None)
```

```python
mapImage(img)                          unit step, a frame of its own
mapImage(img, dxy=0.05, name='bse')    square pixels; dxy=(dx, dy) rectangular ones
mapImage(ebsd.bc, ebsd, name='bcImg')  a channel of a gridded square map, the map riding along
```

## Used on

[EBSDMapsAndImages](EBSDMapsAndImages_py.html), [EBSDTrueEbsd](EBSDTrueEbsd_py.html)

MATLAB's [mapImage.mapImage](mapImage.mapImage.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/mapimage.py#L49">source</a></font>
{% endraw %}
