---
title: 'grainMean'
sidebar: function_reference_sidebar
permalink: grainMean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
average a map property separately within each grain.

## Syntax

<div class="mx-form" markdown="1">

```python
values = grainMean(ebsd, propertyValues)
```

</div>

## Description

For an MTEX object, grainMean(x, ...) calls x.grainMean(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

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


## Signature

<div class="mx-form" markdown="1">

```python
grainMean(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.grainMean_py.html) | the average of a property over each grain |

## Used on

[EBSDGROD](EBSDGROD_py.html), [GrainOrientationParameters](GrainOrientationParameters_py.html), [GrainSpatialPlots](GrainSpatialPlots_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
