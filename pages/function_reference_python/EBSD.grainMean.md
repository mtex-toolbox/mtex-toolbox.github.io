---
title: 'EBSD.grainMean'
sidebar: function_reference_sidebar
permalink: EBSD.grainMean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.grainMean.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the average of a property over each grain; MATLAB's grainMean

## Syntax

<div class="mx-form" markdown="1">

```python
meanG = grainMean(ebsd, ebsd.ci, grains)
```

One value per grain.

</div>

<div class="mx-form" markdown="1">

```python
meanE = grainMean(ebsd, ebsd.ci)
```

The value of its grain at every pixel.

</div>

<div class="mx-form" markdown="1">

```python
maxG = grainMean(ebsd, ebsd.ci, grains, np.max)
```

The maximum instead of the mean.

</div>

<div class="mx-form" markdown="1">

```python
meanG = grainMean(ebsd, ebsd.ci, grains, llim=0.1)
```

Only the values above 0.1.

</div>

## Description

The grains are those of the grain ids the map carries, which calcGrains stores with it.
A pixel without a grain and a grain without a value in the range are NaN.

## Input

| `ebsd` | EBSD with grain ids |
| `prop` | array of a value per pixel, of the shape of the map |
| `grains` | grain2d, for one value per grain in its order; without it one value per pixel |
| `method` | the reduction of the values of a grain, a function of an array |

## Keywords

| keyword | default | description |
|---|---|---|
| `ulim` | `inf` | the largest value taken into the average |
| `llim` | `-inf` | the smallest value taken into the average |

## Output

| `meanProp` | array, a value per grain, or one per pixel of the shape of the map |

## Example

Average the GROD angle once per grain and map the same averages back to the pixels.
The small Forsterite sample is downloaded and cached on first use.


```python
import numpy as np
import matplotlib.pyplot as plt
from mtex import mtexdata, calcGrains, calcGROD, grainMean, degree, plot, mtexColorbar

ebsd = mtexdata('small', verbose=False)['Forsterite']
grains = calcGrains(ebsd, angle=10*degree, minPixel=5)
omega = calcGROD(ebsd, grains).angle()/degree
perGrain = grainMean(ebsd, omega, grains)
perPixel = grainMean(ebsd, omega)
print('Per-grain shape:', perGrain.shape, 'Per-pixel shape:', perPixel.shape)
print('First five grain means (degrees):', np.round(perGrain[:5], 3))
plot(grains, perGrain, colorRange=(0, 5))
mtexColorbar(title='Mean GROD angle (degrees)')
plt.show()
```

With grains supplied, the output follows grains.id; without it, each pixel receives its
grain average. Averaging the deviation angle gives an angular spread, not a mean orientation.
Use orientation.mean to average orientations with crystal symmetry.

```text
Per-grain shape: (15,) Per-pixel shape: (1952,)
First five grain means (degrees): [0.632 1.407 0.406 1.394 3.378]
```

![Example output for EBSD.grainMean](figures/python_reference/EBSD.grainMean-01.png)


## See also

[calcGrains](EBSD.calcGrains_py.html), [calcGROD](calcGROD_py.html), [grain2d.meanOrientation](grain2d.meanOrientation_py.html), [GrainOrientationParameters](GrainOrientationParameters_py.html), [GrainSpatialPlots](GrainSpatialPlots_py.html)

MATLAB's [EBSD.grainMean](EBSD.grainMean.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L637">source</a></font>
{% endraw %}
