---
title: 'EBSD.findByLocation'
sidebar: function_reference_sidebar
permalink: EBSD.findByLocation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.findByLocation.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the measurements closest to positions, or within a radius of them; MATLAB's
EBSD.findByLocation

## Syntax

<div class="mx-form" markdown="1">

```python
e = ebsd.findByLocation([10000, 5000])
```

The nearest measurement.

</div>

<div class="mx-form" markdown="1">

```python
e = ebsd.findByLocation([[10000, 5000], [20000, 7000]])
```

One per position.

</div>

<div class="mx-form" markdown="1">

```python
e = ebsd.findByLocation([10000, 5000], radius=100)
```

All within 100 map units.

</div>

## Description

A position is (x, y), (x, y, z) or a vector3d. Without a radius every position gives its
nearest measurement, in the order of the positions; with one the measurements within it
of any position are returned once each, in the order of the map.

## Input

| `ebsd` | EBSD |
| `xy` | the positions, (n, 2), (n, 3) or vector3d |

## Keywords

| keyword | default | description |
|---|---|---|
| `radius` | `None` | the distance within which every measurement is taken; the nearest one only when not given |

## Output

| `e` | EBSD, the measurements found as a list |

## Example

Find the nearest measurement to a position and every measurement within a specified
radius. The small sample is downloaded and cached on first use.


```python
import numpy as np
from mtex import mtexdata, findByLocation

ebsd = mtexdata('small', verbose=False)['Forsterite']
query = np.array([np.mean(ebsd.x), np.mean(ebsd.y)])
nearest = findByLocation(ebsd, query)
nearby = findByLocation(ebsd, query, radius=30)
print('Query (um):', np.round(query, 2))
print('Nearest position (um):', np.round(nearest.pos.data.reshape(-1, 3)[0, :2], 2))
print('Measurements within 30 um:', nearby.size)
```

The result is an EBSD selection. Without radius the nearest measurement is returned even
when the query is outside the scan; specify a radius when distance should limit the selection.

```text
Query (um): [34329.76  5797.87]
Nearest position (um): [34350.  5800.]
Measurements within 30 um: 2
```


## See also

[EBSD.findByOrientation](EBSD.findByOrientation_py.html), [EBSD.inpolygon](EBSD.inpolygon_py.html)

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [MaParentGrainReconstructionAdvanced](MaParentGrainReconstructionAdvanced_py.html)

MATLAB's [EBSD.findByLocation](EBSD.findByLocation.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/ebsd.py#L432">source</a></font>
{% endraw %}
