---
title: 'orientationRegion.checkInside'
sidebar: function_reference_sidebar
permalink: orientationRegion.checkInside_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientationRegion.checkInside.html
status: Reference
---
{% raw %}
A method of [orientationRegion](orientationRegion_index_py.html).

whether orientations lie inside the region, up to the tolerance, as a boolean array

## Syntax

The orientations inside the region:

```python
inside = oR.checkInside(ori)
```

A wider margin at the boundary:

```python
inside = oR.checkInside(ori, tol=1*degree)
```

A point counts as inside when it violates no bound of the region by more than half the
tolerance, an angle; the sector of axes, where the region has one, is checked with the
same tolerance.

## Input

| | |
|---|---|
| `oR` | orientationRegion |
| `o` | orientation, rotation or quaternions as an (..., 4) array |

## Output

| | |
|---|---|
| `inside` | boolean array in the shape of o |

## Keywords

| | default | |
|---|---|---|
| `tol` | `0.002` | the tolerance at the boundary of the region, MATLAB's 'tolerance' |

## See also

[orientationRegion](orientationRegion_index_py.html), [fundamentalRegion](fundamentalRegion_py.html), [projectIntoFundamentalRegion](projectIntoFundamentalRegion_py.html)

MATLAB's [orientationRegion.checkInside](orientationRegion.checkInside.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientationregion.py#L111">source</a></font>
{% endraw %}
