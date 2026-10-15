---
title: 'EBSD.fill'
sidebar: function_reference_sidebar
permalink: EBSD.fill_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.fill.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the map with every pixel that carries no measurement filled, the measured ones left as
they are

## Syntax

<div class="mx-form" markdown="1">

```python
ebsd_f = fill(ebsd)
```

The holes filled.

</div>

<div class="mx-form" markdown="1">

```python
ebsd_f = fill(ebsd, grains)
```

Filled within the grains only.

</div>

<div class="mx-form" markdown="1">

```python
ebsd_f = fill(ebsd, halfQuadraticFilter(), extrapolate=True)
```

Another filter, up to the outer boundary.

</div>

## Description

A hole is filled with the smooth continuation of the orientations around it, by a
variational filter, l1TVFilter by default; a window filter is refused. Nothing is filled
across a grain boundary, where the map has grain ids, or a phase boundary. MATLAB fills by
the nearest neighbour instead.

The numeric properties are filled by the same solve, the labels (phase, grain id, ...)
copied from the nearest measured pixel. A pixel the outside reaches without crossing a
measurement stays empty, unless extrapolate=True. Only pixels on the lattice are filled: a
gridded map, or the padding gridify adds.

With grains, MATLAB's fill(ebsd, grains), a pixel is filled only from the grain whose
polygon holds it, which needs the grain ids calcGrains writes into the map:

- a pixel inside no grain becomes notIndexed
- a pixel its grain's measurements do not reach over the lattice takes the grain's mean
orientation
- padding a polygon holds becomes a cell of the map

A pixel counts as measured when it is indexed and has an orientation: the notIndexed pixels
calcGrains absorbs into a grain, which carry its phase and a NaN orientation, are filled
from within that grain. The map passed is not changed.

## Input

| `ebsd` | EBSD, the map |
| `F` | EBSDFilter, a variational filter, or grain2d in place of grains |

## Keywords

| keyword | default | description |
|---|---|---|
| `grains` | `None` | grain2d of the map: fill a pixel only from the grain whose polygon holds it |
| `extrapolate` | `False` | fill up to the outer boundary of the map |

## Output

| `ebsd_f` | EBSD, the filled map |

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


## See also

[smooth](smooth_py.html), [interp](interp_py.html), [gridify](gridify_py.html), [calcGrains](EBSD.calcGrains_py.html), [EBSDFilling](EBSDFilling_py.html)

MATLAB's [EBSD.fill](EBSD.fill.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/denoising.py#L380">source</a></font>
{% endraw %}
