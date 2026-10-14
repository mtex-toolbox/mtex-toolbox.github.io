---
title: 'SO3Fun.calcPoleFigure'
sidebar: function_reference_sidebar
permalink: SO3Fun.calcPoleFigure_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.calcPoleFigure.html
status: Reference
---
{% raw %}
the pole figures an ODF predicts: simulated diffraction intensities, superposed pole
figures and any specimen directions

## Syntax

<div class="mx-form" markdown="1">

```python
pf = calcPoleFigure(odf, h, r)
```

One pole figure per element of h.

</div>

<div class="mx-form" markdown="1">

```python
pf = calcPoleFigure(odf, h, resolution=5*degree)
```

On a regular grid of the upper hemisphere.

</div>

<div class="mx-form" markdown="1">

```python
pf = calcPoleFigure(odf, h, resolution=5*degree, complete=True)
```

On a regular grid of the whole sphere.

</div>

<div class="mx-form" markdown="1">

```python
pf = calcPoleFigure(odf, [h1, h2], [r1, r2])
```

One set of specimen directions per pole figure.

</div>

<div class="mx-form" markdown="1">

```python
pf = calcPoleFigure(odf, [h1, h23], r, superposition=[1, [0.2, 0.8]])
```

H23 two superposed directions.

</div>

<div class="mx-form" markdown="1">

```python
pf = calcPoleFigure(odf, pfMeasured)
```

On the directions of a measurement.

</div>

## Description

The intensity of the crystal direction h at the specimen direction r is the mean of the ODF
over all orientations that take h to r, its radon transform. Where the specimen directions
are axes, as on the default grid of the upper hemisphere, it is the mean of r and -r.

A Python list of crystal directions makes one pole figure per entry. An entry of several
directions is their superposition, weighted by the superposition coefficients, as the
overlapping reflections a diffractometer measures together.

Without specimen directions the pole figures are evaluated on regularS2Grid, which takes
the remaining keywords. noisepf turns the intensities into counts.

## Input

| `odf` | SO3Fun |
| `h` | Miller or vector3d in the crystal frame of the ODF, or a list of them, one per pole figure |

## Keywords

| keyword | default | description |
|---|---|---|
| `r` | `None` | vector3d, the specimen directions, or a list of them, one per pole figure; by default a regular grid |
| `superposition` | `None` | the weights of the superposed directions, a list with one entry per pole figure |
| `complete` | `False` | the whole sphere instead of the upper hemisphere, the directions without antipodal symmetry (MATLAB's flag complete) |

## Output

| `pf` | PoleFigure |

## See also

[PoleFigure.noisepf](PoleFigure.noisepf_py.html), [calcODF](calcODF_py.html), [regularS2Grid](regularS2Grid_py.html), [PoleFigureSimulation](PoleFigureSimulation_py.html)

## Used on

[ColorMaps](ColorMaps_py.html), [PlotTypes](PlotTypes_py.html), [PoleFigure2ODFAmbiguity](PoleFigure2ODFAmbiguity_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html), [PoleFigureExport](PoleFigureExport_py.html), [PoleFigureRefinement](PoleFigureRefinement_py.html), [PoleFigureSantaFe](PoleFigureSantaFe_py.html), [PoleFigureSimulation](PoleFigureSimulation_py.html)

MATLAB's [SO3Fun.calcPoleFigure](SO3Fun.calcPoleFigure.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L942">source</a></font>
{% endraw %}
