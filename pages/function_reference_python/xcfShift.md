---
title: 'xcfShift'
sidebar: function_reference_sidebar
permalink: xcfShift_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: xcfShift.html
status: Reference
---
{% raw %}
u, peak, pos = xcfShift(A, B, ROISize=64, numROI=(24, 18), XCFMesh=250)

## Syntax

```python
xcfShift(A, B, ROISize=None, numROI=24, XCFMesh=250)
```

The displacement from A to B of every tile of a grid over the region both images are finite
in, to sub pixel accuracy, with the height of its correlation peak, the weight of the tile in
a fit, and its centre in A. Two mapImage on one grid answer in specimen units, two arrays in
pixels, pixel (i, j) at (j, i). ROISize is the tile width in pixels, by default
2^ceil(log2(rows/4)); numROI the tiles across, a scalar scaled by the aspect ratio for those
down; XCFMesh the upsampling of the peak. The outputs run over the tiles down the columns of
the grid first, as MATLAB's.

MATLAB's [xcfShift](xcfShift.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/registration.py#L178">source</a></font>
{% endraw %}
