---
title: 'EBSD.load'
sidebar: function_reference_sidebar
permalink: EBSD.load_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.load.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

read an EBSD map from a supported vendor file or a text table

## Syntax

<div class="mx-form" markdown="1">

```python
ebsd = EBSD.load('map.ang')
ebsd = EBSD.load('map.ctf', grid=False)
```

</div>

## Description

This calls loadEBSD with the same arguments. The file format is selected from the extension
unless interface is given. Phase information, orientations, positions and available pixel
properties are read together; complete scans are returned on their grid by default.
For text-table column definitions and import corrections, consult loadEBSD. Use inspectEBSD
to inspect file metadata before importing.

## Input

| `fname` | input filename |
| `args` | positional options accepted by loadEBSD |
| `kwargs` | keyword options accepted by loadEBSD |

## Output

| `ebsd` | EBSD map |

## Example

Read the Forsterite vendor file directly and draw its phase map. The sample file is
downloaded and cached on first use. The Euler correction shown here is specific to this file.


```python
import matplotlib.pyplot as plt
from mtex import EBSD, mtexdatafile, rotation, vector3d, degree, plot

filename = mtexdatafile('forsterite', verbose=False)
correction = rotation.byAxisAngle(vector3d.X, 180*degree)
ebsd = EBSD.load(filename, eulerCorrection=correction)
print(ebsd)
plot(ebsd, refFrame='on')
plt.show()
```

Inspect the phase list and the reference-frame indicator after import. For another file,
choose the format options and Euler correction from its acquisition convention.

```text
EBSD (y↓→x)
  size: 336 × 732 grid
  Phase  Orientations  Mineral     Color         Symmetry  Crystal reference frame
  0      58485 (24%)   notIndexed
  1      152345 (62%)  Forsterite  LightSkyBlue  mmm       Forsterite
  2      26058 (11%)   Enstatite   DarkSeaGreen  mmm       Enstatite
  3      9064 (3.7%)   Diopside    Goldenrod     12/m1     Diopside
  properties    : bands, bc, bs, error, mad
  scan unit     : um
  X × Y         : [0 → 3.655e+04] × [0 → 1.675e+04]
  square lattice: spacing 50
```

![Example output for EBSD.load](figures/python_reference/EBSD.load-01.png)


## See also

[loadEBSD](loadEBSD_ang_py.html), [inspectEBSD](inspectEBSD_py.html), [EBSD.export](EBSD.export_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
EBSD.load(fname, *args, **kwargs)
```

</div>

MATLAB's [EBSD.load](EBSD.load.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/ebsd.py#L681">source</a></font>
{% endraw %}
