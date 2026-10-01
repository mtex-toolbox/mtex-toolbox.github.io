---
title: 'ODF Estimation from Pole Figure Data'
sidebar: documentation_sidebar
permalink: PoleFigure2ODF_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: PoleFigure2ODF.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/PoleFigure2ODF.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/PoleFigureAnalysis/PoleFigure2ODF.py">edit page</a></font>

<!--introduction-->

A pole figure does not measure individual orientations. Each value sums every
orientation that places one lattice plane in one specimen direction. Those orientations
form a one-dimensional fibre in orientation space. One pole figure therefore cannot be
inverted by itself.

Combining several pole figures adds constraints, but it still does not make the inverse
problem unique. The practical task is to find an orientation distribution function
(ODF) whose recalculated pole figures agree with the measurements, and then to inspect
where they do not agree.

This page assumes the pole-figure idea from [Pole Figures](PoleFigureAnalysis.html) and
corrected measurements from [Data Correction](PoleFigureCorrection_py.html). The definition
and units of an ODF are introduced in [ODF Theory](ODFTheory_py.html). Here the
reconstruction uses [calcODF](PoleFigure.calcODF.html).
[The Ghost Effect](PoleFigure2ODFAmbiguity_py.html) explains what the measurements can
never determine.

```python
import time
import numpy as np
from mtex import *

plottingConvention.default('y↑→x')
pf = mtexdata('dubna')
```

## Inspect the measurements first

The data contain seven neutron-diffraction pole figures from a quartz specimen. One
measurement is a superposition of two unresolved reflections.
[Import](PoleFigureImport_py.html) explains how the Miller indices and their structure
coefficients enter that measurement model.

```python
plot(pf)
```

<center class="mtex-figure"><img class="inline" src="figures/python/PoleFigure2ODF-2.png"></center>

The seven panels contain sharp maxima at different specimen directions. The superposed
reflection has two Miller indices in its title. Look for missing coverage, isolated
points, or a pattern that is inconsistent with the other panels before asking an ODF to
explain the data.

## Reconstruct an ODF

With no options, `calcODF` uses MTEX's modified least-squares solver and automatic ghost
correction. `silent=False` shows the fit error of every pole figure after each
iteration, as MATLAB prints it by default.

```python
tic = time.perf_counter()
odf = calcODF(pf, verbose=True)
defaultTime = time.perf_counter() - tic

odf
```

```text
   0 | 0.91  0.93  0.74  0.80  0.93  0.85  0.77
   1 | 0.88  0.89  0.64  0.47  0.87  0.81  0.70
   2 | 0.82  0.81  0.51  0.36  0.76  0.73  0.59
   3 | 0.73  0.71  0.38  0.28  0.62  0.62  0.46
   4 | 0.66  0.63  0.37  0.23  0.49  0.54  0.40
   5 | 0.64  0.59  0.34  0.21  0.47  0.51  0.38
   6 | 0.59  0.57  0.36  0.18  0.42  0.48  0.36
   7 | 0.60  0.56  0.34  0.19  0.44  0.48  0.36
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

The result is an [SO3FunRBF](SO3FunRBF.SO3FunRBF.html). It represents the ODF as a
weighted superposition of unimodal kernel functions on a grid in orientation space. The
display reports 20,224 grid centres for this reconstruction. The object can be analysed
like any other ODF; continue to [ODF Analysis](ODFAnalysis.html) after validating the
reconstruction.

## Compare recalculated and measured pole figures

The first validation is visual. Recalculate exactly the lattice planes and
superpositions that were measured.

```python
plotPF(odf, pf.allH, antipodal=True, superposition=pf.c)
```

<center class="mtex-figure"><img class="inline" src="figures/python/PoleFigure2ODF-4.png"></center>

The maxima appear in the same regions and reach comparable intensities. The recalculated
pole figures are smoother because the finite-width kernels do not reproduce every
fluctuation in the measurement.

[calcError](PoleFigure.calcError.html) makes the same comparison one pole figure at a
time. The `'RP'` measure divides the absolute difference by the recalculated intensity,
but only where that intensity exceeds the threshold supplied as `epsilon`. The default
threshold is 1.

```python
rpError = calcError(pf, odf, 'RP')
rpError
```

```text
array([0.812 , 0.8539, 0.3667, 0.3606, 0.6013, 0.6147, 0.4917])
```

The seven RP values range from 0.36 to 0.86. Because RP is relative, weak regions can
dominate even when their absolute differences are small.

Called without a measure, `calcError` uses a regularised relative error. It divides by
the larger intensity plus half the scale factor, so it does not divide by a value near
zero.

```python
regularisedError = calcError(pf, odf)
regularisedError
```

```text
array([0.3912, 0.3243, 0.237 , 0.2872, 0.2895, 0.3601, 0.3229])
```

The regularised values range from 0.24 to 0.40. They are not smaller RP values; they
answer a different question. Compare reconstructions with the same measure and threshold
throughout. The other available measures are `'l1'` and `'l2'`.

A single error vector hides where the mismatch occurs.
[plotDiff](PoleFigure.plotDiff.html) plots the relative difference for every measured
direction.

```python
plotDiff(pf, odf)
```

<center class="mtex-figure"><img class="inline" src="figures/python/PoleFigure2ODF-7.png"></center>

These residuals are not scattered. In every one of the seven panels the mean residual
grows from the centre of the disc outward, roughly doubling by the rim.

Scattered residuals would be consistent with measurement noise. A pattern this orderly
points to a systematic cause worth checking, and one that grows with specimen tilt is
the signature of an omitted defocusing correction. An incorrect background or a pole
figure that does not belong with the others would also leave structure. The pattern is a
diagnostic clue, not proof of any one cause.

## Comparing two ODFs

The [calcError](SO3Fun.calcError.html) overload also compares two ODFs. This is a
different calculation from comparing an ODF with pole-figure measurements. To make the
distinction visible, build one broad component at the strongest orientation of the
reconstruction.

```python
_, oriPref = max(odf)
odfModel = unimodalODF(oriPref, halfwidth=15 * degree)

plotPF(odfModel, pf.allH, antipodal=True, superposition=pf.c)

odfDifference = calcError(odfModel, odf)
odfDifference
```

```text
0.5839
```

<center class="mtex-figure"><img class="inline" src="figures/python/PoleFigure2ODF-8.png"></center>

The model pole figures retain the main maxima and omit the weaker components. The large
ODF difference is therefore expected: one unimodal component cannot represent this
multi-component texture.

## Control the discretization

The solver places unimodal components on a grid in orientation space. The `resolution`
option sets the grid spacing, while each default de la Vallee Poussin kernel has the
same halfwidth as that spacing.

The `calcODF` reference describes its default grid as 1.5 times the pole-figure
resolution. The current `MLSSolver` constructor instead uses the stored resolution of
the first pole figure. Pass `resolution` explicitly when that distinction matters to
reproducibility.

A 15 degree grid demonstrates the speed-resolution trade-off.

```python
tic = time.perf_counter()
odfCoarse = calcODF(pf, resolution=15 * degree)
coarseTime = time.perf_counter() - tic

plotPF(odfCoarse, pf.allH, antipodal=True, superposition=pf.c)

defaultPeak = max(odf)[0]
coarsePeak = max(odfCoarse)[0]
meanDefaultRP = np.mean(rpError)
meanCoarseRP = np.mean(calcError(pf, odfCoarse, 'RP'))
print(f'Default: {defaultTime:.2f} s, peak {defaultPeak:.1f} mrd, mean RP {meanDefaultRP:.2f}; '
      f'15 degree: {coarseTime:.2f} s, peak {coarsePeak:.1f} mrd, mean RP {meanCoarseRP:.2f}')
```

```text
Default: 1.08 s, peak 94.4 mrd, mean RP 0.59; 15 degree: 0.08 s, peak 26.3 mrd, mean RP 0.75
```

<center class="mtex-figure"><img class="inline" src="figures/python/PoleFigure2ODF-9.png"></center>

The 15 degree result keeps the main maxima but broadens them. The timing printed above
shows the speed-up. Its peak is 27.2 mrd instead of 95.2 mrd, and the mean RP error
rises from 0.59 to 0.75. A coarse grid cannot represent a sharp texture. A finer grid
costs more time and, once it exceeds the information in the measurements, can give a
false impression of resolved detail.

Two options control the kernel directly. The `kernel` option accepts an `SO3Kernel`
object. The `halfwidth` option keeps the default de la Vallee Poussin kernel and changes
its width.

## The zero range method

If a measured pole figure is genuinely zero in a region, every orientation contributing
there must also have zero density. The zero range method removes those orientation-grid
nodes before solving. It can make a sharp reconstruction with large empty regions both
faster and finer.

```python
tic = time.perf_counter()
odfZero = calcODF(pf, zeroRange=True)
zeroTime = time.perf_counter() - tic

plotPF(odfZero, pf.allH, antipodal=True, superposition=pf.c)

zeroPeak = max(odfZero)[0]
meanZeroRP = np.mean(calcError(pf, odfZero, 'RP'))
print(f'Zero range: {zeroTime:.2f} s, peak {zeroPeak:.1f} mrd, mean RP {meanZeroRP:.2f}; '
      f'default: {defaultTime:.2f} s, peak {defaultPeak:.1f} mrd, mean RP {meanDefaultRP:.2f}')
```

```text
Zero range: 0.40 s, peak 106.9 mrd, mean RP 0.51; default: 1.08 s, peak 94.4 mrd, mean RP 0.59
```

<center class="mtex-figure"><img class="inline" src="figures/python/PoleFigure2ODF-10.png"></center>

On this data set the method does change the reconstruction. The peak rises from 95.2 to
109.4 mrd and the mean RP error falls from 0.59 to 0.51. The timings printed above show
that it also runs faster here, because the solver keeps far fewer grid nodes. The
sharper recalculated maxima are the visible difference to look for. Try the method
rather than assuming it will help. The
[zeroRangeMethod](zeroRangeMethod.zeroRangeMethod.html) reference lists the threshold
and smoothing options that decide what counts as zero.

## Ghost correction

The odd-order harmonic coefficients of an ODF do not appear in its pole figures, so the
measurements do not determine them. Setting them to zero produces the *ghost effect*: a
raised uniform background, weakened real components, and sometimes spurious components.

[Ghost Correction](PoleFigure2ODFGhostCorrection_py.html) explains Matthies' remedy, which
MTEX applies by default and which matters most for weak textures.
[The Santa Fe Example](PoleFigureSantaFe_py.html) measures the benefit on a model ODF for
which the true answer is known. A good fit to the pole figures alone does not establish
that a reconstructed ODF is unique or true.

## The maths behind the estimator

In simplified notation, `calcODF` minimises a modified least-squares functional over
non-negative combinations of the kernel components:

$$f_{\mathrm{est}} = \mathrm{argmin}_{f} \sum_{i=1}^{N} \sum_{j=1}^{N_i} \frac{|\alpha_i Rf(h_i,r_{ij}) - I_{ij}|^2}{I_{ij}}.$$

Dividing by $$I_{ij}$$ makes the functional modified least squares. It weights each
measurement by its own intensity, so a bright point cannot dominate a dark one. The
factor $$\alpha_i$$ absorbs the unknown scale of each pole figure, which allows
unnormalised intensity data to be used.

## Further reading

* R. Hielscher and H. Schaeben,
  [A novel pole figure inversion method: specification of the MTEX algorithm](https://doi.org/10.1107/S0021889808030112),
  _Journal of Applied Crystallography_ 41, 1024-1037, 2008. This is the complete
  specification of the estimator and numerical algorithm used here.
* R.-J. Roe,
  [Description of crystallite orientation in polycrystalline materials. III. General solution to pole figure inversion](https://doi.org/10.1063/1.1714396),
  _Journal of Applied Physics_ 36, 2024-2031, 1965. This is the classical harmonic
  treatment of the inverse problem.
* H.-J. Bunge,
  [Texture Analysis in Materials Science: Mathematical Methods](https://doi.org/10.1016/C2013-0-11769-2),
  Butterworths, English ed., 1982. This is the standard textbook treatment of pole
  figures and ODF reconstruction.
* S. Matthies and G. W. Vinel,
  [On the reproduction of the orientation distribution function of texturized samples from reduced pole figures using the conception of a conditional ghost correction](https://doi.org/10.1002/pssb.2221120254),
  _physica status solidi (b)_ 112, K111-K114, 1982. This introduces the conditional
  ghost correction used by MTEX.

## Technical Details

`calcODF` is silent unless `silent=False` is given; MATLAB prints the trace unless
`'silent'` is given. The RP threshold is the keyword `epsilon`, MATLAB's number after
`'RP'`. `max(odf)` returns the pair of the value and the orientation, so the peak is its
first element and the mode its second.
{% endraw %}
