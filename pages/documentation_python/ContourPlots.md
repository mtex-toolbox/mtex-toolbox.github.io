---
title: 'Contour Plots'
sidebar: documentation_sidebar
permalink: ContourPlots_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: ContourPlots.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/ContourPlots.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/Plotting/ContourPlots.py">edit page</a></font>

<!--introduction-->

A contour line joins points with the same value. It lets a reader take a
number from a figure instead of guessing it from a colour. Add contours
when a value will be quoted in the text. Label them when more than one
level matters.

[Color Mapping](ColorMaps_py.html) defines a contour level and explains why
separate plots need the same explicit levels. This page shows how to draw,
overlay, and label those levels. [Plot Types](PlotTypes_py.html) compares
contour plots with scatter and smooth plots.

## Start with a smooth spherical function

The function used here has no physical meaning. It stands in for a pole
figure, an inverse pole figure, a Schmid factor map, a Taylor factor map,
or any other [function defined on the sphere](SphericalFunctions.html).

```python
import matplotlib.pyplot as plt
import numpy as np

from mtex import *

plottingConvention.default('y↑→x')
sF = 0.01 + 10 * S2Fun.smiley()
levels = np.arange(-4, 6)

sF
```

```text
S2FunHarmonic
  bandwidth: 128
  mean     : 0.07417
```

---

```python
plot(sF, upper=True)
mtexColorMap('blue2red')
mtexColorbar()
```

<center class="mtex-figure"><img class="inline" src="figures/python/ContourPlots-2.png"></center>

The smooth colours make the face easy to recognize, and the colour bar
gives the approximate values. They do not mark the exact positions where
the function reaches an integer level.

## Choose filled bands or lines

`contourf` replaces smooth shading by filled bands. Every value between
two neighboring levels receives one colour. The bands are easy to scan,
but they deliberately hide variation within each interval.

```python
plot(sF, contourf=levels, upper=True)
mtexColorMap('blue2red')
mtexColorbar()
```

<center class="mtex-figure"><img class="inline" src="figures/python/ContourPlots-3.png"></center>

The face is now quantized into one-unit bands from -4 to 5. Use
`contour` instead when only the boundaries are needed. The explicit
`levels` vector also makes this plot comparable with another figure using
the same vector.

## Overlay contour lines on smooth colours

Contour lines can be laid over a smooth plot instead of replacing it. This
keeps the continuous colour variation while making exact levels visible.

```python
plt.close('all')
plot(sF, upper=True)
mtexColorMap('blue2red')
mtexColorbar()

hold(True)

hContour = plot(sF, contour=levels, lineWidth=2, lineColor='k')

hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/ContourPlots-4.png"></center>

The black curves outline the same integer bands without covering the
smooth field. The red and blue regions remain visible between the lines.

## Label selected contours

A single-axis contour plot returns a list holding one matplotlib contour set.
It can be passed to matplotlib's `clabel` command. Label the levels needed for the
reading instead of every line, because repeated labels quickly obscure the
map.

```python
levels2label = [-2, 0, 1, 2, 3, 4, 5]
plt.clabel(hContour[0], levels2label, fontsize=15)
```

<center class="mtex-figure"><img class="inline" src="figures/python/ContourPlots-5.png"></center>

The labels now make the sign and size of the main features readable. The
unlabelled contours still show their shapes without adding more text.

## Label contours on several axes

The same method applies to real pole figures. A multi-axis plotting command
returns several contour handles, so there is no single handle to pass to
`clabel`. `showText='on'` labels the drawn levels on every axis without
requiring a loop over those handles.

```python
pf = mtexdata('dubna')
odf = calcODF(pf, verbose=False)

pf
```

```text
PoleFigure (Quartz → y↑→x)
  h = {022̅1}, r = 72 × 19 points
  h = {101̅0}, r = 72 × 19 points
  h = {101̅1}{011̅1}, r = 72 × 19 points
  h = {101̅2}, r = 72 × 19 points
  h = {112̅0}, r = 72 × 19 points
  h = {112̅1}, r = 72 × 19 points
  h = {112̅2}, r = 72 × 19 points
```

---

```python
odf
```

```text
SO3FunRBF (Quartz → y↑→x)
  multimodal components
    kernel: de la Vallee Poussin, halfwidth 5°
    center: 20040 orientations
    weight: 1
    Bunge Euler angles in degree
    phi1   Phi  phi2    weight
      90  2.49   210   3.2e-06
      90  2.49   215  4.22e-06
      90  2.49   220  5.37e-06
      90  2.49   225  5.75e-06
      90  2.49   230   5.4e-06
       ⋮     ⋮     ⋮         ⋮
     7.5  97.1   7.5  1.58e-06
    52.5  97.1   292  1.21e-05
    57.5  97.1   298  8.61e-06
    62.5  97.1   302   6.1e-06
    67.5  97.1   308  5.68e-06
```

---

```python
h = pf[3:5].h
plotPF(odf, h)
mtexColorMap('LaboTeX')
mtexColorbar()

hold(True)
plotPF(odf, h, contour=np.arange(1, 16, 2), lineColor='black', lineWidth=2, showText='on')
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/ContourPlots-8.png"></center>

The two requested pole-figure entries expand under crystal symmetry to
three plotted panels. Every panel carries the same levels from 1 to 15 in
steps of 2, so the fields can be compared line by line. Explicit levels
prevent each panel from choosing a different numerical scale.

## References

* S. R. Midway,
  [Principles of Effective Data Visualization](https://doi.org/10.1016/j.patter.2020.100141),
  _Patterns_ 1 (2020), 100141, explains how direct labels
  and consistent visual scales support comparisons between plots.

## Next

Continue with [Transparency](TransparencyDemo_py.html) to reveal overlapping
markers and superposed maps without hiding either layer.

## Technical Details

MATLAB prints the contour handle `hContour`; a plot returns matplotlib's `ContourSet` in a
list here, which the page does not print. The reconstructed ODF has 20040 centres where
MATLAB's has 19848, since `calcODF` builds its SO(3) grid on its own (the pole figures
agree line by line). Filled bands keep a discrete colour bar with MATLAB's colours.
{% endraw %}
