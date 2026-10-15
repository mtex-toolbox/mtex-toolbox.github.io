---
title: 'The class pairShifts'
sidebar: function_reference_sidebar
permalink: pairShifts_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: pairShifts_index.html
status: Reference
---
{% raw %}
the shifts one cross correlation pass measured between two images

## Syntax

<div class="mx-form" markdown="1">

```python
ps = pairShifts(pos, u, peak, roiSize)
```

The tile centres, their shifts, peaks and width.

</div>

<div class="mx-form" markdown="1">

```python
v = ps.meanShift(px)
```

[mean length, mean x, mean y] in pixels of size px.

</div>

<div class="mx-form" markdown="1">

```python
ps.isempty
```

Whether nothing was measured.

</div>

## Description

What the trueEbsd job keeps of every pass of xcfShift between a pair of images: the tile
centres, how far each tile of the test image has to move to sit on the reference, the
correlation peak height of every tile, the weight of the measurement, and the tile size.
meanShift states the mean shift over the tiles measured in pixels.

## Input

| `pos` | vector3d, the tile centres |
| `u` | vector3d, the shift of every tile |
| `peak` | the correlation peak height of every tile |
| `roiSize` | the tile size in pixels |

## Output

| `ps` | pairShifts |

## See also

[xcfShift](xcfShift_py.html), [trueEbsd](trueEbsd_index_py.html), [trueEbsd.calcDistortion](trueEbsd.calcDistortion_py.html)

## Members

| [isempty](pairShifts.isempty_py.html) | whether no shift was measured |
| [meanShift](pairShifts.meanShift_py.html) | the mean shift in pixels of size px over the tiles measured, [mean length, mean x, mean y] |
| [pairShifts](pairShifts.pairShifts_py.html) | the shifts one cross correlation pass measured between two images |

MATLAB's [pairShifts_index](pairShifts_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/registration.py#L248">source</a></font>
{% endraw %}
