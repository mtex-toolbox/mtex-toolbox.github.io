---
title: 'fill'
sidebar: function_reference_sidebar
permalink: fill_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
fill missing measurements in a map using nearby data or grain information.

## Syntax

<div class="mx-form" markdown="1">

```python
filled = fill(ebsd)
```

</div>

## Description

For an MTEX object, fill(x, ...) calls x.fill(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Example

Fill a three-by-three hole in a synthetic orientation gradient. The missing cells
exist on the grid and have phase zero and NaN rotations; no data file is needed.


```python
import numpy as np
import matplotlib.pyplot as plt
from mtex import (EBSD, crystalFrame, phaseList, rotation, vector3d, degree,
                  gridify, fill, plot, mtexColorbar, mtexTitle, newMtexFigure)

x, y = np.meshgrid(np.arange(11), np.arange(11))
rot = rotation.byAxisAngle(vector3d.Z, (0.3*x + 0.2*y).ravel()*degree)
hole = ((x >= 4) & (x <= 6) & (y >= 4) & (y <= 6)).ravel()
rot.data[hole] = np.nan
phase = np.where(hole, 0, 1)
ebsd = gridify(EBSD(np.c_[x.ravel(), y.ravel()], rot, phase, phaseList(crystalFrame('m-3m'))))
filled = fill(ebsd)
print('Indexed cells before and after:', np.count_nonzero(ebsd.isIndexed), np.count_nonzero(filled.isIndexed))
measured = ebsd.isIndexed
change = filled.rotations[measured].angle(ebsd.rotations[measured])/degree
print('Largest change at measured cells (degrees):', round(float(np.max(change)), 6))
for data, title in ((ebsd, 'Before filling'), (filled, 'After filling')):
    newMtexFigure()
    plot(data, data.rotations.angle()/degree, colorRange=(0, 5), micronbar=False)
    mtexColorbar(title='Rotation about z (degrees)')
    mtexTitle(title)
plt.show()
```

Only missing orientations are solved for; the measured orientations stay fixed. The
default uses a variational continuation, whereas MATLAB fill uses nearest neighbours.
A gap connected to the outer edge remains empty unless extrapolate=True is requested.

```text
Indexed cells before and after: 112 121
Largest change at measured cells (degrees): 0.0
```

![Example output for EBSD.fill](figures/python_reference/EBSD.fill-01.png)

![Example output for EBSD.fill](figures/python_reference/EBSD.fill-02.png)


## Signature

<div class="mx-form" markdown="1">

```python
fill(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.fill_py.html) | the map with every pixel that carries no measurement filled, the measured ones left as they are |
| [EBSD3](EBSD3.fill_py.html) | the empty voxels of a volume filled from their nearest measured voxel |

## Used on

[EBSDFilling](EBSDFilling_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
