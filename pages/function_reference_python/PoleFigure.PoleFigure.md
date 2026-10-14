---
title: 'PoleFigure.PoleFigure'
sidebar: function_reference_sidebar
permalink: PoleFigure.PoleFigure_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PoleFigure.PoleFigure.html
status: Reference
---
{% raw %}
measured pole figure intensities with their crystal and specimen directions

## Syntax

<div class="mx-form" markdown="1">

```python
pf = PoleFigure(h, r, I)
pf = PoleFigure([h1, h23], [r1, r2], [I1, I2])
pf = PoleFigure(h, r, I, cs, ss, superposition=c, complete=True)
```

</div>

## Description

Each pole figure records intensities for one crystal direction, or for several superposed
reflections, at a set of specimen directions. Store several pole figures as parallel lists
of crystal directions, specimen directions and intensity arrays. An intensity array must
have one value per specimen direction; all pole figures share their crystal and specimen
frames.

By default specimen directions are antipodal axes because diffraction does not distinguish
r and -r. Use complete=True for directional measurements that do distinguish them.
Index by a pole-figure number to select a reflection, or use a measurement mask to filter
its measured directions. Angles and corrections use radians unless stated otherwise.

## Input

| `h` | Miller crystal direction or directions contributing to one pole figure; a list supplies one direction set per pole figure |
| `r` | vector3d specimen directions, or a list of direction sets |
| `intensities` | numeric intensity array, or a list with one array per pole figure |
| `frames` | optional crystalFrame and specimenFrame overriding the direction frames |

## Keywords

| keyword | default | description |
|---|---|---|
| `superposition` | `None` | coefficients for superposed crystal directions, or one coefficient array per pole figure; default equal coefficients summing to one within each figure |
| `complete` | `False` | keep specimen directions oriented rather than antipodal; default False |

## Output

| `pf` | PoleFigure data set |

## Properties

| `allH` | list of Miller direction sets, one per pole figure |
| `allR` | list of specimen direction sets |
| `allI` | list of intensity arrays matching allR |
| `c` | superposition coefficients for each entry of allH |
| `CS, SS` | crystal and specimen reference frames |
| `numPF` | number of pole figures |
| `antipodal` | whether specimen directions identify r with -r |

## See also

[loadPoleFigure](loadPoleFigure_aachen_py.html), [calcODF](calcODF_py.html), [PoleFigure.normalize](PoleFigure.normalize_py.html), [PoleFigure.correct](PoleFigure.correct_py.html)

MATLAB's [PoleFigure.PoleFigure](PoleFigure.PoleFigure.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L110">source</a></font>
{% endraw %}
