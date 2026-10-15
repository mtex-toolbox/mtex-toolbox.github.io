---
title: 'spatialProfile'
sidebar: function_reference_sidebar
permalink: spatialProfile_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
sample map measurements along a spatial polyline.

## Syntax

<div class="mx-form" markdown="1">

```python
profile, distance = spatialProfile(ebsd, points)
```

</div>

## Description

For an MTEX object, spatialProfile(x, ...) calls x.spatialProfile(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

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


## Signature

<div class="mx-form" markdown="1">

```python
spatialProfile(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.spatialProfile_py.html) | the measurements along a polyline, in the order they are met, and the distance along the line of each of them |
| [EBSD3](EBSD3.spatialProfile_py.html) | the voxels along a polyline, sampled at the voxel spacing, and their distance along it |

## Used on

[EBSDProfile](EBSDProfile_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
