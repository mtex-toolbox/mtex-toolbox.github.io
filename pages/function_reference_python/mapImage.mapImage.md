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
an image that knows where on the specimen it sits: a raster of values on a regular grid of
an origin and two perpendicular steps; MATLAB's mapImage

## Syntax

<div class="mx-form" markdown="1">

```python
mg = mapImage(img)
```

Unit step, a frame of its own.

</div>

<div class="mx-form" markdown="1">

```python
mg = mapImage(img, dxy=0.05, name='bse')
```

Square pixels of 0.05.

</div>

<div class="mx-form" markdown="1">

```python
mg = mapImage(img, dxy=(0.05, 0.1))
```

Rectangular pixels.

</div>

<div class="mx-form" markdown="1">

```python
mg = mapImage(ebsd.bc, ebsd, name='bcImg')
```

A channel of a gridded map, the map along.

</div>

<div class="mx-form" markdown="1">

```python
mg = mapImage(img, ebsd)
```

An image on the grid of the map.

</div>

## Description

A forescatter or backscatter image, a band contrast map or any other value per pixel,
together with the part of the specimen each pixel covers, which makes an image and an EBSD
map comparable.

The grid is regular: d1 is the step from row to row, d2 from column to column, and the
positions follow from them. A distortion is applied by resampling, never by moving the
pixels. An image with a map carries the map along, on the same grid, which must be square;
a map that is not gridded is gridified first. An integer image is divided by the largest
value of its type, so an unsigned one lies in [0, 1].

## Input

| `img` | array of rows x columns, or rows x columns x channels |
| `ebsd` | EBSD, gridded and square, on the grid of the image |

## Keywords

| keyword | default | description |
|---|---|---|
| `dxy` | `1.0` | the pixel size, one number or (dx, dy), for an image without a map |
| `origin` | `None` | vector3d, the position of pixel (0, 0) |
| `name` | `''` | an identifier, the property of the EBSD map an aligned image is written into |
| `scanUnit` | `None` | the unit of the positions, by default the map's or 'um' |

## Output

| `mg` | mapImage |

## See also

[mapImageList](mapImageList_index_py.html), [trueEbsd](trueEbsd_index_py.html), [mapImage.rescale](mapImage.rescale_py.html), [xcfShift](xcfShift_py.html), [gridLayout](gridLayout_index_py.html), [EBSDMapsAndImages](EBSDMapsAndImages_py.html), [EBSDTrueEbsd](EBSDTrueEbsd_py.html)

## Used on

[EBSDMapsAndImages](EBSDMapsAndImages_py.html), [EBSDTrueEbsd](EBSDTrueEbsd_py.html)

MATLAB's [mapImage.mapImage](mapImage.mapImage.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/mapimage.py#L49">source</a></font>
{% endraw %}
