---
title: 'orientationRegion.axisSector'
sidebar: function_reference_sidebar
permalink: orientationRegion.axisSector_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientationRegion.axisSector.html
status: Reference
---
{% raw %}
A method of [orientationRegion](orientationRegion_index_py.html).

the sector of rotation axes the region allows at a fixed rotation angle: a bound with
N = (-sin(w_i/4), cos(w_i/4) a_i) reads for q = (cos(w/2), sin(w/2) v) as
dot(v, a_i) <= cot(w/2) tan(w_i/4), a small circle about the axis

## Syntax

<div class="mx-form" markdown="1">

```python
sR = oR.axisSector(40*degree)
```

The axes of a 40 degree rotation in the region.

</div>

<div class="mx-form" markdown="1">

```python
sR = oR.axisSector(40*degree, sector=None)
```

Without the region's own sector of axes.

</div>

## Description

The bounds whose small circle covers every axis at this angle drop out; the remaining
circles are joined with a sector of axes, by default the region's own, the sector its
symmetry leaves for the axes.

## Input

| `oR` | orientationRegion |
| `omega` | the rotation angle |

## Keywords

| keyword | default | description |
|---|---|---|
| `sector` | `'own'` | the sphericalRegion the axes are restricted to as well, 'own' the region's own sector, None no restriction |

## Output

| `sR` | sphericalRegion of the axes, in the first frame of the region |

## See also

[orientationRegion.maxAngle](orientationRegion.maxAngle_py.html), [sphericalRegion](sphericalRegion_index_py.html)

MATLAB's [orientationRegion.axisSector](orientationRegion.axisSector.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientationregion.py#L138">source</a></font>
{% endraw %}
