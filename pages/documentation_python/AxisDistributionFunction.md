---
title: 'Axis Distribution Function'
sidebar: documentation_sidebar
permalink: AxisDistributionFunction_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: AxisDistributionFunction.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/AxisDistributionFunction.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/Misorientations/AxisDistributionFunction.py">edit page</a></font>

<!--introduction-->

A misorientation has an axis and an angle. The *axis distribution function* (ADF) keeps
the crystal direction about which the rotation occurs and integrates out the angle. It is
the spherical counterpart of the [angle distribution](AngleDistributionFunction_py.html) and
a marginal of the [misorientation distribution function](MisorientationDistributionFunction_py.html)
(MDF).

MTEX represents an ADF by an [S2Fun](S2FunConcept_py.html). Start with
[Theory of Misorientations](MisorientationTheory_py.html) if symmetry-equivalent rotations
and the fundamental region are unfamiliar. The kernel smoothing used below is introduced
in [Density Estimation](DensityEstimation_py.html).

## The axis distribution of random orientations

Random crystal orientations do *not* produce a constant ADF. Crystal symmetry restricts
every misorientation to a fundamental region. The largest permitted angle depends on the
axis direction, so some axes represent more rotations than others.

calcAxisDistribution computes this
symmetry-only reference. Point group `432` gives the cubic example.

```python
import numpy as np

from mtex import *

cs = crystalFrame('432')

adf = calcAxisDistribution(cs)
adf
```

```text
S2FunHandle (432)
  bandwidth hint: 250
  antipodal     : true
```

Like any spherical function, `adf` can be plotted, evaluated, and integrated. The
convenience command [plotAxisDistribution](plotAxisDistribution.html) draws the same
density. Passing both symmetries describes a same-phase pair, while `antipodal` applies
[grain exchange symmetry](MisorientationGrainExchangeSym_py.html).

```python
plotAxisDistribution(cs, cs, antipodal=True)
mtexColorbar()
```

<center class="mtex-figure"><img class="inline" src="figures/python/AxisDistributionFunction-2.png"></center>

The light $$[001]$$ corner is the minimum. The red band towards the $$[101]$$-- $$[111]$$ edge
is more probable because the fundamental region extends to larger angles there.

MTEX normalizes a density to have mean one. The numerical range and its ratio quantify
the variation visible in the colour scale.

```python
uniformRange = np.array([min(adf)[0], max(adf)[0]])
uniformRatio = uniformRange[1] / uniformRange[0]
uniformRange, uniformRatio
```

```text
(array([0.5981, 1.5784]), 2.6390297639148077)
```

The density runs from 0.597 to 1.565 multiples of the mean, a factor of 2.620. A measured
ADF must therefore be compared with this reference, not with a constant.

## The axis distribution of boundary misorientations

A grain is a phase-homogeneous, spatially connected region of EBSD pixels produced by
segmentation. A grain boundary is a segment between two neighbouring pixels that belong to
different grains. Load the magnesium map, segment its indexed pixels at $$5^\circ$$, and
smooth the boundary geometry for five iterations. The plotting convention states the
specimen frame used by this data set.

```python
plottingConvention.default('y↑→x')
ebsd = mtexdata('twins', silent=True)

grains = calcGrains(ebsd['indexed'], angle=5 * degree)
grains = smoothBoundary(grains, 5)

# retain boundaries between magnesium grains
gB = grains.boundary['Magnesium', 'Magnesium']
mori = gB.misorientation
```

[axis](orientation.axis.html) selects the smallest-angle symmetry-equivalent
representative and returns its axis in the crystal frame. The summary reports one axis
for each of the 2803 boundary segments.

```python
axesCrystal = axis(mori)
axesCrystal
```

```text
vector3d (Magnesium)
  size: 2808
       h       k        i       l
  2.2869  0.7481   -3.035  0.8841
  2.2657  0.7759  -3.0416  0.8978
  1.6211  1.5877  -3.2088  0.0292
  1.6054  1.6034  -3.2089  0.0142
  1.5557  0.0844  -1.6401  4.2605
       ⋮       ⋮        ⋮       ⋮
  1.6377  1.5704  -3.2081  0.0986
   1.656  1.5521  -3.2081  0.0642
  1.6592  1.5489  -3.2081  0.0483
  1.6592  1.5489  -3.2081  0.0483
  1.6054   1.603  -3.2084  0.0944
```

Each boundary segment contributes once by default. Passing its `segLength` as a weight
instead estimates a distribution by boundary trace length. The $$5^\circ$$ `halfwidth`
controls the spherical kernel smoothing.

```python
plotAxisDistribution(mori, contourf=True, halfwidth=5 * degree, weights=gB.segLength)
mtexColorbar()
```

<center class="mtex-figure"><img class="inline" src="figures/python/AxisDistributionFunction-6.png"></center>

The isolated maximum is the extension-twin prism axis. Computing the underlying spherical
density returns a peak of 30.8 multiples of the mean and prints the indexed direction at
that peak.

```python
peakDensity, twinAxis = max(calcDensity(axesCrystal, halfwidth=5 * degree, weights=gB.segLength))

peakDensity
```

```text
30.8638
```

---

```python
indexedTwinAxis = round(twinAxis)
indexedTwinAxis
```

```text
vector3d (Magnesium)
  antipodal: true
  h   k   i  l
  2  -1  -1  0
```

## The symmetry-only reference for magnesium

Use the two symmetries stored with the misorientation to plot the random reference for
the same problem.

```python
plotAxisDistribution(mori.CS, mori.SS, antipodal=True)
mtexColorbar()
```

<center class="mtex-figure"><img class="inline" src="figures/python/AxisDistributionFunction-9.png"></center>

This reference is not essentially flat. It has the broad variation caused by hexagonal
symmetry, but it has no isolated peak at the twin axis. The comparison separates a
preferred boundary relationship from the geometry of the misorientation fundamental
region.

An ADF has discarded the angle, so an axis peak alone does not identify a twin law.
Confirm the complete misorientation against the ideal relation, as in [Twinning](Twinning_py.html).

## Crystal versus specimen coordinates

A reference frame is the coordinate system in which data are expressed; it is distinct
from the symmetry attached to it. The crystal frame is fixed to the lattice, whereas the
specimen frame is fixed to the sample. The crystal-coordinate ADF above asks which
lattice direction is the axis.

Passing two orientations separately to `plotAxisDistribution` asks where that axis points
in the specimen frame. The two EBSD ids stored for every segment recover the orientations
on its two sides. A segment that smoothing simplified or resampled no longer runs between
one pair of pixels, and the port leaves its ids empty, so the pairs are read from the
boundaries smoothed without those two stages, as the help of `smoothBoundary` advises.

```python
gBp = smoothBoundary(calcGrains(ebsd['indexed'], angle=5 * degree), 5, noSimplify=True, noRefine=True)
gBp = gBp.boundary['Magnesium', 'Magnesium']
ori1 = ebsd['id', gBp.ebsdId[:, 0]].orientations
ori2 = ebsd['id', gBp.ebsdId[:, 1]].orientations

plotAxisDistribution(ori1, ori2, contourf=True, halfwidth=5 * degree, weights=gBp.segLength)
mtexColorbar()
```

<center class="mtex-figure"><img class="inline" src="figures/python/AxisDistributionFunction-10.png"></center>

The directed axes occupy the full sphere because the stored first and second sides fix an
order and the specimen symmetry is trivial. The single crystal direction becomes several
specimen-frame clusters because each grain carries that lattice direction into a
different sample direction.

For an unordered same-phase population, add `antipodal` to identify opposite specimen
directions. [Tilt and Twist Boundaries](TiltAndTwistBoundaries_py.html) uses the
specimen-coordinate axis to classify boundaries.

## The texture-dependent uncorrelated reference

There are three distinct comparisons. The measured boundary ADF is correlated because its
grains touch. A symmetry-only ADF assumes random orientations. Between them lies the
*uncorrelated* ADF predicted by the measured texture when grain orientations are paired
independently.

Estimate the magnesium ODF from grain mean orientations. Area weights make this a
sampled-area texture rather than a one-grain-one-vote texture. The `Fourier` flag selects
the harmonic representation used efficiently by [calcMDF](SO3Fun.calcMDF.html).

```python
mgGrains = grains['Magnesium']
odf = calcDensity(mgGrains.meanOrientation, weights=mgGrains.area, halfwidth=10 * degree, Fourier=True)
mdf = calcMDF(odf)

adfTexture = calcAxisDistribution(mdf)

plot(adfTexture, upper=True, antipodal=True)
mtexColorbar()
```

<center class="mtex-figure"><img class="inline" src="figures/python/AxisDistributionFunction-11.png"></center>

The texture-dependent reference has broad symmetry-related maxima, but it lacks the
boundary distribution's sharp twin-axis peak. Texture alone, under independent pairing,
therefore does not explain that boundary population.

## Axis and angle remain coupled in the MDF

The ADF and angle distribution are separate marginals. Peaks in the two plots need not
belong to the same misorientations, and the two marginals cannot reconstruct the full
MDF.

For an MDF $$f(\mathbf{h},\omega)$$, MTEX evaluates the full-angle ADF as

$$A(\mathbf{h}) = \frac{2N}{\pi}\int_0^{\omega_{\max}(\mathbf{h})}
f(\mathbf{h},\omega)\sin^2(\omega/2)\,\mathrm{d}\omega.$$

Here $$\mathbf{h}$$ is the axis, $$\omega$$ is the angle, and $$N$$ accounts for the symmetry
copies represented by the fundamental region. The upper limit $$\omega_{\max}(\mathbf{h})$$
is why a uniform MDF has a non-constant ADF.

[calcAxisDistribution](SO3Fun.calcAxisDistribution.html) accepts `minAngle` and
`maxAngle` to study an angle window. Its `resolution` option is the angular quadrature
step; reduce it when a narrow window must be integrated to better than percent accuracy.

The axis-angle description is singular at zero angle. Small orientation errors can
therefore produce large axis errors for low-angle rotations. Restrict the angle range
before interpreting a low-angle axis maximum.

## References

* A. Morawiec, [Distributions of Misorientation Angles and Misorientation Axes for Crystallites with Different Symmetries](https://doi.org/10.1107/S0108767396015115),
  _Acta Crystallographica A_ 53 (1997), 273--285.
* F. Basson, [Probabilities of Random Disorientation Axes in Cubic Polycrystals](https://doi.org/10.1107/S002188989601045X),
  _Journal of Applied Crystallography_ 30 (1997), 102--106.
* A. Morawiec, [Orientations and Rotations: Computations in Crystallographic Textures](https://doi.org/10.1007/978-3-662-09156-2),
  Springer, 2004, chapter 7.
* A. Morawiec, [On the Magnitude of Error in the Determination of Rotation Axes](https://doi.org/10.1107/S1600576724004692),
  _Journal of Applied Crystallography_ 57 (2024), 1059--1066.

## Next

[Angle Distribution](AngleDistributionFunction_py.html) keeps the angle and integrates out
the axis. Return to [Misorientation Distribution Function](MisorientationDistributionFunction_py.html)
when the coupling between axis and angle matters. Continue to
[Grain Boundaries](GrainBoundaries.html) when the boundary plane and trace must be
considered as well.

## Technical Details

The symmetry-only ADF is computed in closed form here, from the largest angle of the
fundamental region about each axis, where MTEX expands it in harmonics up to bandwidth
500. The exact minimum and maximum are 0.598 and 1.578; the expansion rounds the maximum
down to 1.565.

Which side of a segment is first follows the numbering of the grains, the smaller id
first. MATLAB numbers the grains along the y rows of the map first, the port along x, so
many segments swap sides between the two and the directed specimen-frame axes of those
segments reverse; the picture above differs from MATLAB's by that, while every
undirected distribution on this page agrees.
{% endraw %}
