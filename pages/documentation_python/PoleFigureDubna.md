---
title: 'Reconstructing the Dubna Quartz ODF'
sidebar: documentation_sidebar
permalink: PoleFigureDubna_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: PoleFigureDubna.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/PoleFigureDubna.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/PoleFigureAnalysis/PoleFigureDubna.py">edit page</a></font>

<!--introduction-->

This page follows a three-file subset of the seven bundled Dubna pole figures from their
files to a reconstructed orientation distribution function (ODF), then checks its fit.
Florian Wobbe measured the quartz specimen at Dubna in 2005 using neutron diffraction,
as recorded in the
[original MTEX Dubna example](https://mtex-toolbox.github.io/HomepageOld/files/doc/dubna_demo.html).

The example brings together the import, inspection, reconstruction, and validation steps
developed earlier in this chapter. It assumes the pole-figure idea from
[Pole Figures](PoleFigureAnalysis.html), the import model from
[Import](PoleFigureImport_py.html), and the inversion workflow from
[ODF Reconstruction](PoleFigure2ODF_py.html). The origin of the ghost effect is explained
in [The Ghost Effect](PoleFigure2ODFAmbiguity_py.html).

A plotting convention states how the specimen reference frame is drawn. This data set
uses Y upward and X to the right. The convention does not rotate the specimen directions
or change their intensities.

```python
from mtex import *

plottingConvention.default('y↑→x')
```

## Import the three measurements

Quartz is trigonal. The lattice parameters below define its crystal frame as well as the
metric used to interpret the four-index notation introduced in
[Miller Indices](CrystalDirections_py.html).

```python
CS = crystalFrame('-3m', [4.9, 4.9, 5.4])

dubnaFiles = mtexdatafile('dubna')
fname = [dubnaFiles[1], dubnaFiles[2], dubnaFiles[6]]

# crystal-plane normals, one entry per measured file
h = [Miller(1, 0, -1, 0, CS), Miller([[0, 1, -1, 1], [1, 0, -1, 1]], CS), Miller(1, 1, -2, 2, CS)]

# relative structure coefficients, in the same order as h
c = [1, [0.52, 1.23], 1]
```

The second diffraction peak contains the unresolved $$(01\bar{1}1)$$ and $$(10\bar{1}1)$$
reflections. Its measured intensity is therefore a weighted superposition of two pole
figures, not a fourth measurement. Passing `c` at import makes that same weighted sum
part of the forward model used during reconstruction. See
[Import](PoleFigureImport_py.html) for how the structure coefficients are found.

```python
pf = PoleFigure.load(fname, h, CS, interface='dubna', superposition=c)
pf
```

```text
PoleFigure (3̅m1 → y↑→x)
  h = {101̅0}, r = 72 × 19 points
  h = {011̅1}{101̅1}, r = 72 × 19 points
  h = {112̅2}, r = 72 × 19 points
```

The summary reports three entries on identical $$72 \times 19$$ direction grids. The
double Miller label on the second entry confirms that its two reflections have not been
mistaken for separate measurements.

```python
plot(pf)
mtexColorbar(title='intensity')
```

<center class="mtex-figure"><img class="inline" src="figures/python/PoleFigureDubna-4.png"></center>

The three panels contain sharp maxima in different specimen directions. The second panel
has a much larger raw intensity range, which is why the solver estimates one scale
factor per pole figure. These counts are not yet pole densities in multiples of a random
distribution (mrd); see [ODF Theory](ODFTheory_py.html).

## Inspect the stored data

The object exposes the measured intensities, crystal-plane normals, and specimen
directions as ordinary arrays. Different pole figures can use different direction grids,
so [PoleFigure](PoleFigure.PoleFigure.html) also provides the list-valued properties
`allI`, `allH`, and `allR`.

```python
I = pf.intensities
latticeDirections = pf.h
specimenDirections = pf.r
```

Minimum and maximum intensities give a first scale check. The rows follow the three
entries in the object summary above.

```python
poleFigureLabel = ['(10-10)', '(01-11)+(10-11)', '(11-22)']
print(f'{"":20s}{"minimum":>10s}{"maximum":>10s}')
for label, lo, hi in zip(poleFigureLabel, min(pf), max(pf)):
  print(f'{label:20s}{lo:10.1f}{hi:10.1f}')
```

```text
                       minimum   maximum
(10-10)                    0.0      89.8
(01-11)+(10-11)            0.0    1360.0
(11-22)                    0.0     962.0
```

[isOutlier](PoleFigure.isOutlier.html) compares every measurement with its
neighbourhood. Use it to create a mask for inspection:

    outlierMask = isOutlier(pf)

A flag is a prompt to inspect the experiment, not permission to delete a value
automatically. Background, defocusing, normalization, and an executable outlier example
are in [Data Correction](PoleFigureCorrection_py.html).

## Select a diagnostic band

High-tilt measurements are especially vulnerable to defocusing. The next condition
demonstrates indexed selection by removing only the two rings from 70 through 75
degrees. It deliberately retains directions above 75 degrees, so it is not a recommended
high-tilt correction.

```python
keep = (pf.r.theta < 70 * degree) | (pf.r.theta > 75 * degree)
pf_bandRemoved = pf[keep]
pf_bandRemoved
```

```text
PoleFigure (3̅m1 → y↑→x)
  h = {101̅0}, r = 1224 points
  h = {011̅1}{101̅1}, r = 1224 points
  h = {112̅2}, r = 1224 points
```

---

```python
plot(pf_bandRemoved)
mtexColorbar(title='intensity')
```

<center class="mtex-figure"><img class="inline" src="figures/python/PoleFigureDubna-8.png"></center>

The blank band is the direct visual consequence of the selection. Each entry now
contains 1224 of its original 1368 specimen directions.

## Rotate the measured directions

[rotate](PoleFigure.rotate.html) actively moves every measured specimen direction while
leaving its intensity unchanged. This is not a frame change and not a plotting
convention. If import assigned the wrong specimen reference frame, correct the import
whenever possible.

```python
rot = rotation.byAxisAngle(xvector - yvector, 25 * degree)
pf_rotated = rotate(pf, rot)

plot(pf_rotated)
mtexColorbar(title='intensity')
```

<center class="mtex-figure"><img class="inline" src="figures/python/PoleFigureDubna-9.png"></center>

All three intensity patterns turn together relative to the plotted axes. Their values
and the number of sampled directions do not change.

## Make a coarse reconstruction

A 10 degree orientation grid and at most six solver iterations provide a quick
consistency check.

```python
recCoarse = calcODF(pf, resolution=10 * degree, iterMax=6, silent=False)
recCoarse
```

```text
   0 | 0.93  0.74  0.77
   1 | 0.91  0.62  0.70
   2 | 0.87  0.52  0.64
   3 | 0.83  0.44  0.58
   4 | 0.77  0.38  0.52
   5 | 0.71  0.32  0.47
   6 | 0.67  0.29  0.43
SO3FunRBF (3̅m1 → y↑→x)
  multimodal components
    kernel: de la Vallee Poussin, halfwidth 10°
    center: 2566 orientations
    weight: 1
    Bunge Euler angles in degree
    phi1   Phi  phi2    weight
      90  4.98   210  5.22e-05
      90  4.98   220  7.97e-05
      90  4.98   230   7.1e-05
      90  4.98   240  5.22e-05
      90  4.98   250  4.97e-05
       ⋮     ⋮     ⋮         ⋮
    55.9  94.6   294  0.000148
    55.9  94.6   304  5.42e-05
    65.7  94.6   294  4.81e-05
    65.7  94.6   304   2.2e-05
    75.4  94.6   315  4.38e-06
```

The first check is always the recalculated pole figures against the measured ones above.
Recalculate exactly the three measured entities. The `superposition` option combines the
two unresolved reflections with their imported structure coefficients instead of drawing
them as separate pole figures.

```python
plotPDF(recCoarse, pf.allH, antipodal=True, superposition=pf.c)
mtexColorbar(title='mrd')
```

<center class="mtex-figure"><img class="inline" src="figures/python/PoleFigureDubna-11.png"></center>

The broad maxima occupy the same regions as in the measured panels and have the same
relative order. At this coarse resolution that agreement is only a screening result, not
evidence that the recovered ODF is unique. [ODF Reconstruction](PoleFigure2ODF_py.html)
explains the cost of resolution and iteration count.
[Iterative ODF Reconstruction](PoleFigureRefinement_py.html) shows what successively
narrowing the kernel can gain.

## Reconstruct at the default resolution

The final reconstruction uses the default orientation grid and kernel. Its iteration
trace is suppressed because [ODF Reconstruction](PoleFigure2ODF_py.html) explains that
output in detail.

```python
rec = calcODF(pf)
```

[calcError](PoleFigure.calcError.html) returns one regularised relative residual per
measured pole figure. Label the values so the superposed measurement remains
identifiable.

```python
regularisedRelativeResidual = calcError(pf, rec)
print(f'{"":20s}{"regularisedRelativeResidual":>28s}')
for label, e in zip(poleFigureLabel, regularisedRelativeResidual):
  print(f'{label:20s}{e:28.5f}')
```

```text
                     regularisedRelativeResidual
(10-10)                                  0.42476
(01-11)+(10-11)                          0.18240
(11-22)                                  0.35371
```

The superposed measurement in the middle fits best, at 0.18, and the $$(10\bar{1}0)$$
measurement fits worst, at 0.42. A smaller residual means a better match to the measured
projection. It does not prove that the ODF itself is unique or true.

## Locate the remaining mismatch

[plotDiff](PoleFigure.plotDiff.html) shows the same regularised relative residual at
every measured direction.

```python
plotDiff(pf, rec)
mtexColorbar(title='relative residual')
```

<center class="mtex-figure"><img class="inline" src="figures/python/PoleFigureDubna-14.png"></center>

The mismatch is scattered rather than concentrated in one patch, which is consistent
with measurement noise. It also grows towards the rim, where the high specimen tilt
makes defocusing correction least reliable. Both patterns are diagnostic clues, not
proof of a single cause.

## Exercises

Working through these on the same data set covers the rest of the chapter:

1. inspect the raw pole figures and identify measurements you would not trust;
2. remove only values for which you have a physical reason, reconstruct the ODF, and
   compare the [calcError](PoleFigure.calcError.html) values;
3. reconstruct from fewer pole figures and find the smallest set that still gives a
   recognisable texture; and
4. compare reconstructions with and without
   [ghost correction](PoleFigure2ODFGhostCorrection_py.html). Which fits the pole figures
   better, and why does that comparison not identify the true ODF?

## Further reading

* R. Hielscher and H. Schaeben,
  [A novel pole figure inversion method: specification of the MTEX algorithm](https://doi.org/10.1107/S0021889808030112),
  _Journal of Applied Crystallography_ 41, 1024--1037, 2008. This specifies the
  estimator and numerical reconstruction used here.
* S. Matthies, H.-R. Wenk and G. W. Vinel,
  [Some basic concepts of texture analysis and comparison of three methods to calculate orientation distributions from pole figures](https://doi.org/10.1107/S0021889888000275),
  _Journal of Applied Crystallography_ 21, 285--304, 1988. It motivates using both
  integral errors and difference pole figures to assess an inversion.
* K. Ullemeyer et al.,
  [Neutron time-of-flight texture measurements in Dubna: status and developments](https://doi.org/10.23689/fidgeo-1862),
  in _11. Symposium Tektonik, Struktur- und Kristallgeologie_, 2006. It describes the
  SKAT instrument and why time-of-flight diffraction records several pole figures from
  bulk geological samples.
* H.-J. Bunge,
  [Texture Analysis in Materials Science: Mathematical Methods](https://doi.org/10.1016/C2013-0-11769-2),
  Butterworths, English ed., 1982. This is the standard textbook treatment of pole
  figures and ODF reconstruction.

## Next

[Export](PoleFigureExport_py.html) shows how to write measured and recalculated pole
figures. Continue to [ODF Analysis](ODFAnalysis.html) to quantify the assessed ODF and
derive texture characteristics from it.

## Technical Details

The three files are picked by position out of `mtexdatafile('dubna')`, which fetches the
seven sample files on first use. A boolean mask in brackets selects measurements and
flattens the grid, so the reduced entries display as a list of 1224 directions rather
than a rectangle. `min(pf)` and `max(pf)` give one number per pole figure, and MATLAB's
`table` is a printed loop.
{% endraw %}
