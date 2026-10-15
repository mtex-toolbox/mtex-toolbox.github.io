---
title: 'EBSD3.smooth'
sidebar: function_reference_sidebar
permalink: EBSD3.smooth_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD3.smooth.html
status: Reference
---
{% raw %}
A method of [EBSD3](EBSD3_index_py.html).

the map with its orientations denoised, every one replaced by one computed from its
neighbours, within the grains where the map knows them and within the phases otherwise

## Syntax

<div class="mx-form" markdown="1">

```python
ebsd_s = smooth(ebsd)
```

The default filter, total variation.

</div>

<div class="mx-form" markdown="1">

```python
ebsd_s = smooth(ebsd, halfQuadraticFilter())
```

Another filter.

</div>

<div class="mx-form" markdown="1">

```python
ebsd_s = smooth(ebsd, F, fill=True)
```

The pixels without a measurement solved for as well.

</div>

<div class="mx-form" markdown="1">

```python
ebsd_s = smooth(ebsd, F, fill=grains)
```

Only those inside a grain.

</div>

<div class="mx-form" markdown="1">

```python
ebsd_s = smooth(ebsd, F, props=('bc',))
```

A numeric property smoothed along.

</div>

## Description

The orientations are turned into a field of tangent vectors per connected component of
the map (a grain, if calcGrains has written the grain ids, else a phase) and the filter
acts on that field: a variational filter (splineFilter, halfQuadraticFilter, l1TVFilter,
infimalConvolutionFilter) solves for the smoothed field, a window filter (meanFilter,
medianFilter, KuwaharaFilter) replaces each pixel by its neighbourhood. Nothing is mixed
across a grain boundary or a phase boundary.

With fill the pixels that carry no measurement are solved for too (this is not the same as
notIndexed); fill=grains fills a pixel only from the grain whose polygon holds it, so
pixels between grains stay empty. A window filter solves for nothing, so with it the holes
are closed by fill first. The map passed is not changed; MATLAB's second output, the
filter, is the F passed.

## Input

| `ebsd` | EBSD, the map |
| `F` | EBSDFilter, the filter; by default l1TVFilter() |

## Keywords

| keyword | default | description |
|---|---|---|
| `fill` | `False` | True to fill the pixels without a measurement, or grain2d to fill only those inside a grain |
| `extrapolate` | `False` | fill up to the outer boundary of the map, the pixels the outside reaches without crossing a measurement included |
| `props` | `()` | the names of numeric properties of the map smoothed with the orientations, by a variational filter |

## Output

| `ebsd_s` | EBSD, the smoothed map |

## Example

Denoise a synthetic map containing two grains and reproducible orientation noise.
Reconstruct the grains first so the filter respects their boundary.


```python
import numpy as np
import matplotlib.pyplot as plt
from mtex import (EBSD, crystalFrame, phaseList, rotation, vector3d, degree,
                  calcGrains, smooth, meanFilter, KAM, plot, mtexColorbar, mtexTitle, newMtexFigure)

x, y = np.meshgrid(np.arange(20), np.arange(12))
base = np.where(x < 10, 0.0, 20.0)
noise = np.random.default_rng(7).normal(0, 0.4, x.shape)
rot = rotation.byAxisAngle(vector3d.Z, (base + noise).ravel()*degree)
cs = crystalFrame('m-3m')
ebsd = EBSD(np.c_[x.ravel(), y.ravel()], rot, np.ones(x.size, dtype=int), phaseList(cs))
grains = calcGrains(ebsd, angle=10*degree)
filtered = smooth(ebsd, meanFilter(numNeighbours=1))
for data, title in ((ebsd, 'Before smoothing'), (filtered, 'After smoothing')):
    newMtexFigure()
    kam = KAM(data)/degree
    print(title, 'median KAM (degrees):', round(float(np.nanmedian(kam)), 3))
    plot(data, kam, colorRange=(0, 1.5), micronbar=False)
    mtexColorbar(title='KAM (degrees)')
    mtexTitle(title)
print('Grain ids unchanged:', np.array_equal(filtered.grainId, ebsd.grainId))
plt.show()
```

The returned map has new orientations and retains the original segmentation. Lower KAM
shows reduced local variation in this synthetic example; it is not a general measure of
denoising quality. Choose a filter and length scale appropriate to the features to retain.

```text
Before smoothing median KAM (degrees): 0.373
After smoothing median KAM (degrees): 0.141
Grain ids unchanged: True
```

![Example output for EBSD.smooth](figures/python_reference/EBSD.smooth-01.png)

![Example output for EBSD.smooth](figures/python_reference/EBSD.smooth-02.png)


## See also

[fill](fill_py.html), [interp](interp_py.html), [halfQuadraticFilter](halfQuadraticFilter_index_py.html), [splineFilter](splineFilter_index_py.html), [meanFilter](meanFilter_index_py.html), [EBSDDenoising](EBSDDenoising_py.html), [EBSDFilling](EBSDFilling_py.html)

MATLAB's [EBSD3.smooth](EBSD3.smooth.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/denoising.py#L263">source</a></font>
{% endraw %}
