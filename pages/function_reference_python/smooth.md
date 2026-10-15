---
title: 'smooth'
sidebar: function_reference_sidebar
permalink: smooth_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
smooth sampled orientations, boundaries or harmonic functions.

## Syntax

<div class="mx-form" markdown="1">

```python
smoothed = smooth(x)
```

</div>

## Description

For an MTEX object, smooth(x, ...) calls x.smooth(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

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


## Signature

<div class="mx-form" markdown="1">

```python
smooth(x, *args, **kwargs)
```

</div>

## Methods it calls

| [boundaryFilter](boundaryFilter.smooth_py.html) | V are the vertices (n, 2) of the network, h the spacing they are sampled at |
| [curvatureFilter](curvatureFilter.smooth_py.html) | the minimiser of \|V - V0\|^2 + alpha \|L V\|^2 over the free vertices, one sparse system |
| [EBSD](EBSD.smooth_py.html) | the map with its orientations denoised, every one replaced by one computed from its neighbours, within the grains where the map knows them and within the phases otherwise |
| [EBSD3](EBSD3.smooth_py.html) | the map with its orientations denoised, every one replaced by one computed from its neighbours, within the grains where the map knows them and within the phases otherwise |
| [huberFilter](huberFilter.smooth_py.html) | the minimiser of \|V - V0\|^2 plus alpha times the Huber penalty of the curvature L V, by reweighting the sparse system until nothing moves, the fixed vertices kept |
| [laplaceFilter](laplaceFilter.smooth_py.html) | the vertices after iter steps of local averaging at the rate lambda_ / 2, the fixed ones kept |
| [S1FunHarmonic](S1Fun.smooth_py.html) | the convolution with a de la Vallee Poussin kernel, 2.9 degree unless a kernel or a halfwidth is given |
| [taubinFilter](taubinFilter.smooth_py.html) | the vertices after iter pairs of a smoothing step lambda_ and an unshrinking step mu, the fixed ones kept |
| [vector3d](vector3d.smooth_py.html) | pcolor(sF), pcolor(v), pcolor(v, data): a coloured surface |

## Used on

[EBSDDenoising](EBSDDenoising_py.html), [EBSDFilling](EBSDFilling_py.html), [EBSDGROD](EBSDGROD_py.html), [EBSDKAM](EBSDKAM_py.html), [EBSDSharpPlot](EBSDSharpPlot_py.html), [LowLevelParentGrainReconstruction](LowLevelParentGrainReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [GND](GND_py.html), [WBV](WBV_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
