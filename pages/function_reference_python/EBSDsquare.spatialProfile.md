---
title: 'EBSDsquare.spatialProfile'
sidebar: function_reference_sidebar
permalink: EBSDsquare.spatialProfile_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSDsquare.spatialProfile.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the measurements along a polyline, in the order they are met, and the distance along the
line of each of them; MATLAB's spatialProfile

## Syntax

<div class="mx-form" markdown="1">

```python
ebsdLine, dist = spatialProfile(ebsd, [15.5, 27], [20.5, 11])
```

One segment, x and y.

</div>

<div class="mx-form" markdown="1">

```python
ebsdLine, dist = spatialProfile(ebsd, xy)
```

A polyline, (N, 2) points.

</div>

<div class="mx-form" markdown="1">

```python
ebsdLine, dist = spatialProfile(ebsd, xy, radius=1)
```

A wider band.

</div>

## Description

A pixel belongs to the line when it lies within radius of one of its segments, half a step
by default; a pixel at the joint of two segments is met once.

## Input

| `ebsd` | EBSD |
| `lineXY` | (N, 2) array of the points of the line, or their x coordinates |
| `y` | the y coordinates, when lineXY gives x |

## Keywords

| keyword | default | description |
|---|---|---|
| `radius` | `None` | the half width of the band around the line, in the scan unit |

## Output

| `ebsdLine` | EBSD, the measurements along the line |
| `dist` | array, the distance of each along the line from its first point |

## Example

Extract a horizontal profile through the small Forsterite map and plot its
misorientation relative to the first selected orientation. The sample is cached after its first download.


```python
import numpy as np
import matplotlib.pyplot as plt
from mtex import mtexdata, spatialProfile, degree

ebsd = mtexdata('small', verbose=False)['Forsterite']
y = float(np.median(ebsd.y))
line = [[float(np.min(ebsd.x)), y], [float(np.max(ebsd.x)), y]]
profile, distance = spatialProfile(ebsd, line)
omega = profile.orientations.angle(profile.orientations[0])/degree
print('Selected measurements:', profile.size)
print('Distance increases:', bool(np.all(np.diff(distance) >= 0)))
plt.plot(distance, omega, '.')
plt.xlabel('Distance along profile (um)')
plt.ylabel('Misorientation to first orientation (degrees)')
plt.show()
```

Distances use the scan unit and start at the first line endpoint. The default band extends
half a lattice step on either side of the line; radius changes that band. Large jumps can
mark different grains. This extracts measured pixels rather than interpolating an orientation field.

```text
Selected measurements: 38
Distance increases: True
```

![Example output for EBSD.spatialProfile](figures/python_reference/EBSD.spatialProfile-01.png)


## See also

[EBSD.findByLocation](EBSD.findByLocation_py.html), [EBSDProfile](EBSDProfile_py.html)

MATLAB's [EBSDsquare.spatialProfile](EBSDsquare.spatialProfile.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L712">source</a></font>
{% endraw %}
