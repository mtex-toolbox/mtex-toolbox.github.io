---
title: 'The class mapImage'
sidebar: function_reference_sidebar
permalink: mapImage_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
an image that knows where on the specimen it sits: a regular grid of an origin and two
perpendicular steps, d1 from row to row and d2 from column to column; an integer image is
scaled to [0, 1]

```python
mapImage(img)                          unit step, a frame of its own
mapImage(img, dxy=0.05, name='bse')    square pixels; dxy=(dx, dy) rectangular ones
mapImage(ebsd.bc, ebsd, name='bcImg')  a channel of a gridded square map, the map riding along
```

## Members

| | |
|---|---|
| [char](mapImage.char_py.html) | the image as one line of text: its size, channels, steps, name and whether a map rides along |
| [copy](mapImage.copy_py.html) | a copy of the image with its own pixel array |
| [d1](mapImage.d1_py.html) | the step from one row to the next |
| [d2](mapImage.d2_py.html) | the step from one column to the next |
| [dx](mapImage.dx_py.html) | the column step, the length of d2 |
| [dy](mapImage.dy_py.html) | the row step, the length of d1 |
| [edgeMap](mapImage.edgeMap_py.html) | the edge transform: how unlike its eight neighbours at padWidth pixels each pixel is, every channel contrast normalised over its 2nd to 98th percentile, a neighbour off the image differenced against zero |
| [extent](mapImage.extent_py.html) | [xmin, xmax, ymin, ymax, zmin, zmax] of the pixel centres |
| [gridCoordinates](mapImage.gridCoordinates_py.html) | where positions sit in grid coordinates, fractional rows and columns from zero |
| [gridSize](mapImage.gridSize_py.html) | the number of rows and columns of the image |
| [how2plot](mapImage.how2plot_py.html) | the plotting convention of the image's frame, None without a frame |
| [imboxfilt](mapImage.imboxfilt_py.html) | a box filter of k pixels, or (rows, cols), odd: the window shrinks at the border and around a missing value, so a NaN padding neither spreads nor darkens the frame (MATLAB's own, movmean down the columns and then along the rows) |
| [interp](mapImage.interp_py.html) | the image values at positions: bilinear on the grid by default, 'nearest' or 'cubic' |
| [isempty](mapImage.isempty_py.html) | whether the image has no pixel |
| [layout](mapImage.layout_py.html) | the gridLayout of the image, the directions its rows and columns advance along |
| [mapImage](mapImage.mapImage_py.html) | an image that knows where on the specimen it sits: a regular grid of an origin and two perpendicular steps, d1 from row to row and d2 from column to column |
| [nChannel](mapImage.nChannel_py.html) | the number of channels, 1 for a two dimensional image |
| [origin](mapImage.origin_py.html) | the centre of pixel (0, 0) |
| [plot](mapImage.plot_py.html) | plot(mg), plot(imgList), plot(imgList, edge=True), plot(mg, channel=1) |
| [pos2ind](mapImage.pos2ind_py.html) | the pixel covering each position: row and column, not clipped, and whether it lies on the grid |
| [pos](mapImage.pos_py.html) | the centre of every pixel, (rows, cols) |
| [rescale](mapImage.rescale_py.html) | the values stretched to [lo, hi], all channels of an image together or each on its own |
| [subGrid](mapImage.subGrid_py.html) | a rectangle cut out, rows and cols contiguous and ascending, or the box round a mask |
| [transformReferenceFrame](mapImage.transformReferenceFrame_py.html) | the images stated in a frame and laid out that way: a layout reindexes and nothing else, a frame restates where they sit by the orientation given, by 'byScreenAlignment', the assertion that the frames were drawn the same way up, or by nothing where the frames are already related |

## Used on

[EBSDMapsAndImages](EBSDMapsAndImages_py.html), [EBSDTrueEbsd](EBSDTrueEbsd_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/mapimage.py#L49">source</a></font>
{% endraw %}
