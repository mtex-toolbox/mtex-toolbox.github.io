---
title: 'sphericalRegion.volume'
sidebar: function_reference_sidebar
permalink: sphericalRegion.volume_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: sphericalRegion.volume.html
status: Reference
---
{% raw %}
A method of [sphericalRegion](sphericalRegion_index_py.html).

the fraction of the sphere the region covers, by a quadrature on a fine grid

## Syntax

On a grid of 1 degree:

```python
a = sR.volume()
```

Finer, more accurate:

```python
a = sR.volume(resolution=0.25*degree)
```

The share of the points of a regular grid in polar coordinates inside the region,
weighted by sin(theta); 1 is the whole sphere, so 4 pi times it is the area. Antipodal
regions count -v as well.

## Input

| | |
|---|---|
| `sR` | sphericalRegion |

## Output

| | |
|---|---|
| `a` | the fraction of the sphere, between 0 and 1 |

## Keywords

| | default | |
|---|---|---|
| `resolution` | `1*degree` | the spacing of the quadrature grid |

## See also

[sphericalRegion.checkInside](sphericalRegion.checkInside_py.html), [sphericalRegion.center](sphericalRegion.center_py.html)

MATLAB's [sphericalRegion.volume](sphericalRegion.volume.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/sphericalregion.py#L122">source</a></font>
{% endraw %}
