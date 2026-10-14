---
title: 'grainBoundary.calcMeanDirection'
sidebar: function_reference_sidebar
permalink: grainBoundary.calcMeanDirection_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.calcMeanDirection.html
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

the direction of a segment averaged over 2n + 1 of them along the chain: the chord
across a window, clamped at the end of an open chain and shorter than a closed one;
MATLAB's grainBoundary.calcMeanDirection

## Syntax

Across three segments:

```python
d = gB.calcMeanDirection()
```

Across five:

```python
d = gB.calcMeanDirection(2)
```

The same as gB.direction but over a window of segments, which averages out the staircase
of a pixel grid. The window never crosses a junction.

## Input

| | |
|---|---|
| `gB` | grainBoundary |

## Output

| | |
|---|---|
| `d` | vector3d, antipodal, one per segment, not normalised |

## Keywords

| | default | |
|---|---|---|
| `n` | `1` | the number of neighbouring segments on either side |

## See also

[grainBoundary.curvature](grainBoundary.curvature_py.html), [grainBoundary.angle](grainBoundary.angle_py.html)

## Used on

[BoundaryProperties](BoundaryProperties_py.html)

MATLAB's [grainBoundary.calcMeanDirection](grainBoundary.calcMeanDirection.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L504">source</a></font>
{% endraw %}
