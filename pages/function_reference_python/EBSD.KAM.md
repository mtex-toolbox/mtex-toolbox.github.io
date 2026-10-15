---
title: 'EBSD.KAM'
sidebar: function_reference_sidebar
permalink: EBSD.KAM_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.KAM.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the kernel average misorientation: the mean misorientation angle of every pixel to its
neighbours; MATLAB's KAM

## Syntax

<div class="mx-form" markdown="1">

```python
kam = ebsd['Forsterite'].KAM()
```

The nearest neighbours.

</div>

<div class="mx-form" markdown="1">

```python
kam = KAM(ebsd, threshold=10*degree)
```

Misorientations above 10 degree left out.

</div>

<div class="mx-form" markdown="1">

```python
kam = KAM(ebsd, order=2)
```

The neighbours up to the second order.

</div>

<div class="mx-form" markdown="1">

```python
kam = KAM(ebsd, radius=3*ebsd.lattice.dxy)
```

The neighbours within a distance.

</div>

<div class="mx-form" markdown="1">

```python
kam = KAM(ebsd, order=3, weights=lambda d: np.exp(-(d / dxy)**2))
```

Weighted by the distance.

</div>

<div class="mx-form" markdown="1">

```python
kam = KAM(ebsd, max=True)
```

The largest angle instead of the mean.

</div>

## Description

The neighbours of a pixel are those within order steps over the stencil of the lattice,
square or hexagonal, or within a physical radius. Only neighbours of the same phase, both
indexed, count, and on a map that carries grain ids (after calcGrains) only those of the
same grain, so the grain boundaries are left out. A pixel with no neighbour to compare with
is NaN. The map needs no grid: the lattice of a list is used too. The angles are in radian.

## Input

| `ebsd` | EBSD |

## Keywords

| keyword | default | description |
|---|---|---|
| `order` | `1` | the neighbours up to this many steps over the lattice |
| `radius` | `None` | the neighbours up to this distance, in the scan unit, instead of order |
| `threshold` | `inf` | a misorientation angle above it is left out |
| `max` | `False` | the largest misorientation angle instead of the mean |
| `weights` | `None` | a function of the distance of a neighbour, its weight in the mean |

## Output

| `kam` | array of the shape of the map, the angles in radian |

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


## See also

[calcGROD](calcGROD_py.html), [gradient](gradient_py.html), [calcGrains](EBSD.calcGrains_py.html), [EBSDKAM](EBSDKAM_py.html), [EBSD3.KAM](EBSD3.KAM_py.html)

MATLAB's [EBSD.KAM](EBSD.KAM.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L465">source</a></font>
{% endraw %}
