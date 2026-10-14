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

<div class="mx-form" markdown="1">

```python
d = gB.calcMeanDirection()
```

Across three segments.

</div>

<div class="mx-form" markdown="1">

```python
d = gB.calcMeanDirection(2)
```

Across five.

</div>

## Description

The same as gB.direction but over a window of segments, which averages out the staircase
of a pixel grid. The window never crosses a junction.

## Input

| `gB` | grainBoundary |

## Keywords

| keyword | default | description |
|---|---|---|
| `n` | `1` | the number of neighbouring segments on either side |

## Output

| `d` | vector3d, antipodal, one per segment, not normalised |

## See also

[grainBoundary.curvature](grainBoundary.curvature_py.html), [grainBoundary.angle](grainBoundary.angle_py.html)

## Used on

[BoundaryProperties](BoundaryProperties_py.html)

MATLAB's [grainBoundary.calcMeanDirection](grainBoundary.calcMeanDirection.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L549">source</a></font>
{% endraw %}
