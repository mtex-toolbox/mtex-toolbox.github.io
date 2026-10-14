---
title: 'EBSD.spatialProfile'
sidebar: function_reference_sidebar
permalink: EBSD.spatialProfile_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.spatialProfile.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the measurements along a polyline, in the order they are met, and the distance along the
line of each of them; MATLAB's spatialProfile

## Syntax

One segment, x and y:

```python
ebsdLine, dist = spatialProfile(ebsd, [15.5, 27], [20.5, 11])
```

A polyline, (N, 2) points:

```python
ebsdLine, dist = spatialProfile(ebsd, xy)
```

A wider band:

```python
ebsdLine, dist = spatialProfile(ebsd, xy, radius=1)
```

A pixel belongs to the line when it lies within radius of one of its segments, half a step
by default; a pixel at the joint of two segments is met once.

## Input

| | |
|---|---|
| `ebsd` | EBSD |
| `lineXY` | (N, 2) array of the points of the line, or their x coordinates |
| `y` | the y coordinates, when lineXY gives x |

## Output

| | |
|---|---|
| `ebsdLine` | EBSD, the measurements along the line |
| `dist` | array, the distance of each along the line from its first point |

## Keywords

| | default | |
|---|---|---|
| `radius` | `None` | the half width of the band around the line, in the scan unit |

## See also

[EBSD.findByLocation](EBSD.findByLocation_py.html), [EBSDProfile](EBSDProfile_py.html)

MATLAB's [EBSD.spatialProfile](EBSD.spatialProfile.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L616">source</a></font>
{% endraw %}
