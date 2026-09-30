---
title: 'Angle Distribution Function'
sidebar: documentation_sidebar
permalink: AngleDistributionFunction_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: AngleDistributionFunction.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/AngleDistributionFunction.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/Misorientations/AngleDistributionFunction.py">edit page</a></font>

<!--introduction-->

A misorientation contains a rotation axis and a rotation angle. The *misorientation angle
distribution* keeps only the [disorientation angle](MisorientationTheory_py.html) $$\omega$$.
It is the one-dimensional marginal obtained by integrating out the axis of the
[misorientation distribution function](MisorientationDistributionFunction_py.html) (MDF).

This compact summary answers "how far apart are the crystal orientations?" It does not
answer "about which axis?" The latter question is treated in the companion
[Axis Distribution](AxisDistributionFunction_py.html) page.

First read [misorientation theory](MisorientationTheory_py.html) and
[grain reconstruction](GrainReconstruction_py.html). The final comparison also uses
[kernel density estimation](DensityEstimation_py.html).

## Random orientations do not give a flat curve

Even for completely random orientations, disorientation angles are not uniformly
distributed. Small angles are rare because few rotations lie close to the identity. Large
angles are limited by the shape of the [fundamental region](MisorientationTheory_py.html).

This reference curve is often called the Mackenzie distribution. Strictly, Mackenzie's
result is for cubic symmetry. MTEX computes the analogous random-disorientation baseline
for any pair of crystal symmetries with
calcAngleDistribution.

```python
import matplotlib.pyplot as plt
import numpy as np

from mtex import *

cs = crystalFrame('432')
density, omega = calcAngleDistribution(cs)

plt.figure()
plt.plot(omega / degree, density, linewidth=2)
plt.xlabel('misorientation angle (degrees)')
plt.ylabel('relative frequency (mrd)')
```

<center class="mtex-figure"><img class="inline" src="figures/python/AngleDistributionFunction-1.png"></center>

The cubic curve starts at zero because vanishingly small rotations occupy little rotation
space. It terminates well below $$180^\circ$$ because cubic symmetry supplies a smaller
equivalent rotation beyond that limit.

maxAngle returns the largest angle in the fundamental
region. For cubic symmetry it is

```python
cubicMaxAngle = maxAngle(cs) / degree
cubicMaxAngle
```

```text
62.7994
```

## Symmetry sets the range and the baseline

Fewer symmetry operations leave a larger fundamental region and therefore permit larger
distinct disorientation angles.

```python
plotAngleDistribution(crystalFrame('1'), linewidth=2, figSize='small')
hold(True)
plotAngleDistribution(crystalFrame('622'), linewidth=2)
plotAngleDistribution(crystalFrame('432'), linewidth=2)
hold(False)
legend('1', '622', '432', Location='northwest')
```

<center class="mtex-figure"><img class="inline" src="figures/python/AngleDistributionFunction-3.png"></center>

The triclinic curve extends furthest, while the hexagonal and cubic curves end
progressively earlier. Their shapes differ as well. A measured curve must therefore be
compared with the baseline for its own symmetries.

A misorientation between two different phases has one crystal symmetry on each side. Pass
both symmetry objects so that MTEX constructs their joint fundamental region.

```python
plotAngleDistribution(crystalFrame('222'), crystalFrame('12/m1'), linewidth=2, figSize='small')
```

<center class="mtex-figure"><img class="inline" src="figures/python/AngleDistributionFunction-4.png"></center>

This curve is the random reference for an orthorhombic-to-monoclinic relationship. Its
range and shape are set jointly by the two phases, not by either phase alone.

## The angle distribution of measured boundaries

Now compare the symmetry-only reference with a measured boundary population. The
plotting convention matches the specimen frame stored with the magnesium data set.

```python
plottingConvention.default('y↑→x')
ebsd = mtexdata('twins', silent=True)

grains = calcGrains(ebsd['indexed'], threshold=5 * degree)

# misorientations of all magnesium--magnesium boundary segments
mori = grains.boundary['Magnesium', 'Magnesium'].misorientation
mori
```

```text
misorientation (Magnesium → Magnesium)
  size     : 3285
  antipodal: true
  Bunge Euler angles in degree
  phi1   Phi  phi2
   184  93.4   143
   185  93.3   144
    30  86.7   211
  30.1  86.1   210
  30.1  86.1   210
     ⋮     ⋮     ⋮
   208  82.7  89.7
   212  85.9  89.6
   212  85.9  89.5
   211    83  88.4
   209  83.1  89.1
```

The summary reports 3,286 boundary segments. This is one sample per segment, not one vote
per neighbouring grain pair, so a longer boundary contributes more samples. The displayed
`antipodal: true` records grain exchange symmetry. See
[Grain Exchange Symmetry](MisorientationGrainExchangeSym_py.html) for why reversing the
grains gives an equivalent inverse.

[plotAngleDistribution](plotAngleDistribution.html) displays the measured angles as a
histogram. Adding the random baseline makes the deviation from symmetry alone visible.

```python
plotAngleDistribution(mori, figSize='small')
hold(True)
plotAngleDistribution(mori.CS, mori.SS, linewidth=2)
hold(False)
legend('boundary misorientations', 'random orientations')
```

<center class="mtex-figure"><img class="inline" src="figures/python/AngleDistributionFunction-6.png"></center>

The sharp peak at about $$86^\circ$$ is the twin boundary that gives this data set its
name. It carries the vast majority of all boundary segments and completely dominates the
distribution. The random curve has no corresponding peak.

In this overlay, the histogram bars sum to 100 percent and the reference curve uses the
same percent-per-bin scale. A standalone smooth curve uses multiples of a random
distribution (mrd) instead.

The numbers behind the histogram are returned by
[calcAngleDistribution](orientation.calcAngleDistribution.html).

```python
density, omega = calcAngleDistribution(mori)
peakBin = np.argmax(density)
peakBinAngle = omega[peakBin] / degree
peakBinAngle
```

```text
87.1380
```

The most populated bin is centred at $$87.14^\circ$$. This is a histogram bin centre, not a
fitted twin angle. The complete twin relationship, including its axis, is tested in
[Twinning](Twinning_py.html).

## Correlated, uncorrelated, and random

The boundary histogram is *correlated*: it uses only grains that are neighbours. An
*uncorrelated* distribution pairs arbitrary grains from the same data set. It contains
the effect of texture but not the effect of which grains became neighbours.

Estimate an ODF from the magnesium grain mean orientations. Each grain contributes once
here, regardless of its area. The `halfwidth` controls the angular smoothing. The explicit
harmonic conversion selects an efficient representation for the convolution.

```python
odf = calcDensity(grains['Magnesium'].meanOrientation, halfwidth=10 * degree)
mdf = calcMDF(SO3FunHarmonic(odf))
```

[calcMDF](SO3Fun.calcMDF.html) pairs the texture with itself to obtain the uncorrelated
MDF. Plot its angle marginal between the boundary histogram and the symmetry-only
reference.

```python
plotAngleDistribution(mori, figSize='small')
hold(True)
plotAngleDistribution(mdf, linewidth=2)
plotAngleDistribution(mori.CS, mori.SS, linewidth=2)
hold(False)
legend('boundary', 'uncorrelated texture', 'random orientations')
```

<center class="mtex-figure"><img class="inline" src="figures/python/AngleDistributionFunction-9.png"></center>

The uncorrelated curve stays close to the uniform-orientation curve. The missing twin
peak shows that it belongs to the boundary network, not the texture. The correlated
histogram is sharply peaked, whereas both references remain broad.

An angle peak identifies a preferred angular separation, not a complete orientation
relationship. Different axes can produce the same angle. Return to
[the MDF page](MisorientationDistributionFunction_py.html) for the full distribution. Its
other marginal is the [axis distribution](AxisDistributionFunction_py.html).

## References

* J. K. Mackenzie, [Second Paper on Statistics Associated with the Random Disorientation of Cubes](https://doi.org/10.1093/biomet/45.1-2.229),
  _Biometrika_ 45 (1958), 229--240. Derives the cubic random baseline.
* H. Grimmer, [The Distribution of Disorientation Angles if All Relative Orientations of Neighbouring Grains Are Equally Probable](https://doi.org/10.1016/0036-9748(79)90058-9),
  _Scripta Metallurgica_ 13 (1979), 161--164. Extends the calculation to non-cubic
  crystal systems.
* A. Morawiec, [Orientations and Rotations: Computations in Crystallographic Textures](https://doi.org/10.1007/978-3-662-09156-2),
  Springer, 2004. Develops rotation-space geometry and its distributions.
* V. Randle, [Grain Boundary Misorientation Distributions](https://doi.org/10.1016/S1359-0286(00)00018-8),
  _Current Opinion in Solid State and Materials Science_ 5 (2001), 3--8. Compares
  angle-only and full misorientation representations for boundary populations.

## Next

The next documentation chapter introduces [orientation distribution functions](ODFAnalysis.html),
which supply the texture model used for the uncorrelated curve above. For spatially
resolved applications, continue with [Grain Boundaries](GrainBoundaries.html).
{% endraw %}
