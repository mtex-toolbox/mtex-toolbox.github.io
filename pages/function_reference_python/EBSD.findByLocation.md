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

The nearest measurement:

```python
e = ebsd.findByLocation([10000, 5000])
```

One per position:

```python
e = ebsd.findByLocation([[10000, 5000], [20000, 7000]])
```

All within 100 map units:

```python
e = ebsd.findByLocation([10000, 5000], radius=100)
```

A position is (x, y), (x, y, z) or a vector3d. Without a radius every position gives its
nearest measurement, in the order of the positions; with one the measurements within it
of any position are returned once each, in the order of the map.

## Input

| | |
|---|---|
| `ebsd` | EBSD |
| `xy` | the positions, (n, 2), (n, 3) or vector3d |

## Output

| | |
|---|---|
| `e` | EBSD, the measurements found as a list |

## Keywords

| | default | |
|---|---|---|
| `radius` | `None` | the distance within which every measurement is taken; the nearest one only when not given |

## See also

[EBSD.findByOrientation](EBSD.findByOrientation_py.html), [EBSD.inpolygon](EBSD.inpolygon_py.html)

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [MaParentGrainReconstructionAdvanced](MaParentGrainReconstructionAdvanced_py.html)

MATLAB's [EBSD.findByLocation](EBSD.findByLocation.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/ebsd.py#L419">source</a></font>
{% endraw %}
