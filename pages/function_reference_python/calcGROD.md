---
title: 'calcGROD'
sidebar: function_reference_sidebar
permalink: calcGROD_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
compare every measurement with the reference orientation of its grain.

## Syntax

<div class="mx-form" markdown="1">

```python
mis2mean = calcGROD(ebsd, grains)
```

</div>

## Description

For an MTEX object, calcGROD(x, ...) calls x.calcGROD(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Example

Compare each Forsterite orientation with the mean of its reconstructed grain.
The small sample is downloaded and cached on first use.


```python
import numpy as np
import matplotlib.pyplot as plt
from mtex import mtexdata, calcGrains, calcGROD, degree, plot, hold, mtexColorbar

ebsd = mtexdata('small', verbose=False)['Forsterite']
grains = calcGrains(ebsd, angle=10*degree, minPixel=5)
grod = calcGROD(ebsd, grains)
omega = grod.angle()/degree
print('Median deviation from grain mean (degrees):', round(float(np.nanmedian(omega)), 3))
plot(ebsd, omega, colorRange=(0, 5))
mtexColorbar(title='GROD angle (degrees)')
hold(True)
plot(grains.boundary, lineWidth=1)
hold(False)
plt.show()
```

The result contains misorientations; angle extracts their magnitudes. GROD uses a grain
reference, while KAM uses local neighbours. Select one indexed phase before calculating GROD;
pixels without a reconstructed grain have no grain reference and give NaN.

```text
Median deviation from grain mean (degrees): 1.266
```

![Example output for EBSD.calcGROD](figures/python_reference/EBSD.calcGROD-01.png)


## Signature

<div class="mx-form" markdown="1">

```python
calcGROD(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.calcGROD_py.html) | the grain reference orientation deviation, mis2mean: the misorientation of every pixel from the mean orientation of its grain, or from a given reference |

## Used on

[GrainOrientationParameters](GrainOrientationParameters_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
