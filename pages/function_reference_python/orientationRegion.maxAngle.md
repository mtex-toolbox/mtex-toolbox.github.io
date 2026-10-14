---
title: 'orientationRegion.maxAngle'
sidebar: function_reference_sidebar
permalink: orientationRegion.maxAngle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientationRegion.maxAngle.html
status: Reference
---
{% raw %}
A method of [orientationRegion](orientationRegion_index_py.html).

the largest rotation angle inside the region, at a vertex of it in Rodrigues space, or
about a given axis

## Syntax

The largest angle in the region:

```python
omega = oR.maxAngle()
```

The largest angle about an axis:

```python
omega = oR.maxAngle(vector3d(1, 1, 1))
```

Without an axis the angle is found exactly at the vertices of the region in Rodrigues
space; only a region whose sector of axes has caps is sampled, by random rotations until
hits of them fall inside. About an axis it is the least angle at which a bound is met, 0
for an axis outside the region's sector of axes, where MATLAB first projects the axis into
the sector.

## Input

| | |
|---|---|
| `oR` | orientationRegion |
| `v` | vector3d, a single rotation axis |

## Output

| | |
|---|---|
| `omega` | the angle in radians |

## Keywords

| | default | |
|---|---|---|
| `hits` | `2000` | the number of random rotations inside the region the sampling waits for |

## See also

[maxAngle](symmetry.maxAngle_py.html), [orientationRegion.axisSector](orientationRegion.axisSector_py.html)

MATLAB's [orientationRegion.maxAngle](orientationRegion.maxAngle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientationregion.py#L171">source</a></font>
{% endraw %}
