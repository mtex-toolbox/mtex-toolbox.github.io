---
title: 'KAM'
sidebar: function_reference_sidebar
permalink: KAM_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
measure the mean misorientation angle from each map measurement to its neighbours.

## Syntax

<div class="mx-form" markdown="1">

```python
omega = KAM(ebsd)
```

</div>

## Description

For an MTEX object, KAM(x, ...) calls x.KAM(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Example

Compute nearest-neighbour KAM within reconstructed Forsterite grains. The small
sample is downloaded and cached on first use; all displayed angles are in degrees.


```python
import numpy as np
import matplotlib.pyplot as plt
from mtex import mtexdata, calcGrains, KAM, degree, plot, hold, mtexColorbar

ebsd = mtexdata('small', verbose=False)['Forsterite']
grains = calcGrains(ebsd, angle=10*degree, minPixel=5)
kam = KAM(ebsd, order=1, threshold=2.5*degree)/degree
print('Median KAM (degrees):', round(float(np.nanmedian(kam)), 3))
print('Pixels with no accepted neighbour:', np.count_nonzero(~np.isfinite(kam)))
plot(ebsd, kam, colorRange=(0, 2.5))
mtexColorbar(title='KAM (degrees)')
hold(True)
plot(grains.boundary, lineWidth=1)
hold(False)
plt.show()
```

calcGrains stores grain ids on the map, so comparisons across its grain boundaries are
excluded. The threshold additionally rejects individual neighbour pairs above 2.5 degrees.
KAM depends on scan spacing, neighbourhood and noise; it is not itself a strain measurement.

```text
Median KAM (degrees): 0.509
Pixels with no accepted neighbour: 30
```

![Example output for EBSD.KAM](figures/python_reference/EBSD.KAM-01.png)


## Signature

<div class="mx-form" markdown="1">

```python
KAM(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.KAM_py.html) | the kernel average misorientation: the mean misorientation angle of every pixel to its neighbours |
| [EBSD3](EBSD3.KAM_py.html) | the kernel average misorientation of a volume: the mean misorientation angle of every voxel to its neighbours |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
