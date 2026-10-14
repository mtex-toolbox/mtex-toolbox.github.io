---
title: 'pairShifts.pairShifts'
sidebar: function_reference_sidebar
permalink: pairShifts.pairShifts_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: pairShifts.pairShifts.html
status: Reference
---
{% raw %}
the shifts one cross correlation pass measured between two images

## Syntax

The tile centres, their shifts, peaks and width:

```python
ps = pairShifts(pos, u, peak, roiSize)
```

[mean length, mean x, mean y] in pixels of size px:

```python
v = ps.meanShift(px)
```

Whether nothing was measured:

```python
ps.isempty
```

What the trueEbsd job keeps of every pass of xcfShift between a pair of images: the tile
centres, how far each tile of the test image has to move to sit on the reference, the
correlation peak height of every tile, the weight of the measurement, and the tile size.
meanShift states the mean shift over the tiles measured in pixels.

## Input

| | |
|---|---|
| `pos` | vector3d, the tile centres |
| `u` | vector3d, the shift of every tile |
| `peak` | the correlation peak height of every tile |
| `roiSize` | the tile size in pixels |

## Output

| | |
|---|---|
| `ps` | pairShifts |

## See also

[xcfShift](xcfShift_py.html), [trueEbsd](trueEbsd_index_py.html), [trueEbsd.calcDistortion](trueEbsd.calcDistortion_py.html)

## Signature

```python
pairShifts(pos=None, u=None, peak=None, roiSize=None)
```

MATLAB's [pairShifts.pairShifts](pairShifts.pairShifts.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/registration.py#L245">source</a></font>
{% endraw %}
