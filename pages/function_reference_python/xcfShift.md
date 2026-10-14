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
how far every part of one image moved against another, by phase correlation of tiles

## Syntax

Two arrays, in pixels:

```python
u, peak, pos = xcfShift(A, B)
```

Two mapImage, in specimen units:

```python
u, peak, pos = xcfShift(mgA, mgB)
```

The tiles given:

```python
u, peak, pos = xcfShift(A, B, ROISize=64, numROI=(24, 18))
```

A transform fitted through the shifts:

```python
T = spatialTransformShift.fit(pos, pos + u, weights=peak)
```

The region where both images are finite is divided into a grid of tiles, and each tile of
A is phase correlated with the same tile of B; the peak of the correlation, upsampled,
gives the displacement to sub pixel accuracy (Guizar-Sicairos et al.). The feature at pos
in A is at pos + u in B. The peak height is the weight of the tile in a fit: a tile on
featureless background correlates weakly. A tile that holds a non finite value or is flat
returns NaN in all three outputs, which every spatialTransform fit drops. Two mapImage on
one grid answer in specimen units, two arrays in pixels, pixel [i, j] at (j, i); a colour
image is averaged over its channels. The outputs run over the tiles down the columns of the
grid first, as MATLAB's.

## Input

| | |
|---|---|
| `A, B` | 2d arrays of the same size, or mapImage on one grid |

## Output

| | |
|---|---|
| `u` | vector3d, the displacement from A to B of every tile |
| `peak` | the correlation peak height of every tile, the weight in a fit |
| `pos` | vector3d, the tile centres in A |

## Keywords

| | default | |
|---|---|---|
| `ROISize` | `None` | the tile width in pixels, at least 8; by default 2^ceil(log2(rows/4)) |
| `numROI` | `24` | the number of tiles across, or (across, down); a single number is scaled by the aspect ratio for the tiles down |
| `XCFMesh` | `250` | the upsampling factor of the correlation peak |

## References

- M. Guizar-Sicairos, S. T. Thurman, J. R. Fienup, Efficient subpixel image registration algorithms, Optics Letters 33 (2008) 156-158

## See also

[pairShifts](pairShifts_index_py.html), [mapImage](mapImage_index_py.html), [spatialTransform](spatialTransform_index_py.html), [trueEbsd](trueEbsd_index_py.html), [EBSDTrueEbsd](EBSDTrueEbsd_py.html)

MATLAB's [xcfShift](xcfShift.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/registration.py#L178">source</a></font>
{% endraw %}
