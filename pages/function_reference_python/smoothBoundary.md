---
title: 'smoothBoundary'
sidebar: function_reference_sidebar
permalink: smoothBoundary_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
smooth grain boundary curves or surfaces.

## Syntax

<div class="mx-form" markdown="1">

```python
smoothed = smoothBoundary(grains)
```

</div>

## Description

For an MTEX object, smoothBoundary(x, ...) calls x.smoothBoundary(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Example

Compare reconstructed and smoothed boundaries on the small Forsterite sample.
The sample file is downloaded and cached on first use.


```python
import matplotlib.pyplot as plt
from mtex import mtexdata, calcGrains, smoothBoundary, degree, plot, hold

ebsd = mtexdata('small', verbose=False)['Forsterite']
grains = calcGrains(ebsd, angle=10*degree, minPixel=5)
smoothed = smoothBoundary(grains, 5)
plot(grains.boundary, lineColor='black', lineWidth=2, displayName='Reconstructed')
hold(True)
plot(smoothed.boundary, lineColor='red', lineWidth=1, displayName='Smoothed')
hold(False)
print('Grains before and after:', grains.size, smoothed.size)
plt.show()
```

Black shows the pixel-derived outlines and red the smoothed geometry. Smoothing changes
the curves, while the pixel grain ids and the grain membership remain those of the reconstruction.

```text
Grains before and after: 15 15
```

![Example output for grain2d.smoothBoundary](figures/python_reference/grain2d.smoothBoundary-01.png)


## Signature

<div class="mx-form" markdown="1">

```python
smoothBoundary(x, *args, **kwargs)
```

</div>

## Methods it calls

| [grain2d](grain2d.smoothBoundary_py.html) | the grains with the pixel staircase of their boundaries turned into smooth curves |
| [grain3d](grain3d.smoothBoundary_py.html) | the grains with their boundary surfaces smoothed, hierarchically: the triple lines along themselves first, then the faces |

## Used on

[CrystalShapes](CrystalShapes_py.html), [EBSD3Analysis](EBSD3Analysis_py.html), [Grains3DBoundaries](Grains3DBoundaries_py.html), [Grains3DSmoothing](Grains3DSmoothing_py.html), [EBSDDenoising](EBSDDenoising_py.html), [EBSDFilling](EBSDFilling_py.html), [EBSDGROD](EBSDGROD_py.html), [EBSDGrid](EBSDGrid_py.html), [EBSDIPFMap](EBSDIPFMap_py.html), [EBSDKAM](EBSDKAM_py.html), [EBSDSharpPlot](EBSDSharpPlot_py.html), [BoundaryCurvature](BoundaryCurvature_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
