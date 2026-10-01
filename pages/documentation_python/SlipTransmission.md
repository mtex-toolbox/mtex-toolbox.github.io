---
title: 'Slip Transmission'
sidebar: documentation_sidebar
permalink: SlipTransmission_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: SlipTransmission.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/SlipTransmission.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/Plasticity/SlipTransmission.py">edit page</a></font>

<!--introduction-->

Slip that reaches a grain boundary may continue on a suitably aligned
system in the neighbouring grain. *Slip transmission* is this transfer of
plastic shear across the boundary. It depends on the systems selected on
both sides, so it connects the independent-grain models from the preceding
pages to an observable grain-to-grain interaction.

This page selects basal slip under uniaxial tension, maps the Luster--Morris
$$m'$$ compatibility parameter on every boundary segment, and then shows how
compatibility varies with misorientation.

```python
import numpy as np
```

```python
from mtex import *
```

## Reconstruct the titanium grains

Load the alpha-titanium EBSD map contributed by D. Mercier for the 2016
MTEX workshop in Chemnitz. A grain is a phase-homogeneous, spatially
connected region of EBSD pixels produced by segmentation.

```python
ebsd = mtexdata('titanium')

grains = calcGrains(ebsd)
grains = smoothBoundary(grains)

ebsd
```

```text
EBSD (y↓→x)
  size: 97 × 84 grid
  Phase  Orientations  Mineral           Color         Symmetry  Crystal reference frame
  1      8100 (100%)   Titanium (Alpha)  LightSkyBlue  622       Titanium (Alpha)
  properties : ci, grainId, grainid, iq, sem_signal
  scan unit  : um
  X × Y      : [0 → 996] × [0 → 997.7]
  hex lattice: spacing 12
```

Retain boundary segments whose two neighbouring grains are indexed. These
are the segments for which both mean orientations define slip systems.

```python
gB = grains.boundary['indexed']

plot(ebsd, ebsd.orientations)
hold(True)
plot(grains.boundary)
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/SlipTransmission-4.png"></center>

The coloured pixels show crystal orientation, and the black lines delimit
the reconstructed grains. Transmission will be evaluated only along the
internal indexed boundaries collected in `gB`.

## Select a basal system in every grain

Alpha titanium has three geometric basal systems. Here `symmetrise`
retains both shear senses, giving six signed candidates per grain.

```python
sSBasal = slipSystem.basal(ebsd.CS)
sSBasal
```

```text
slipSystem (Titanium (Alpha))
  U  V   T  W  | H  K  I  L  CRSS
  1  1  -2  0    0  0  0  1     1
```

```python
sSBasal = sSBasal.symmetrise()
```

Apply uniaxial tension along specimen $$x$$. The inverse mean orientation
maps that direction into the crystal frame of every grain. The resulting
matrix has one row per grain and one column per signed basal system.

```python
SFDirection = sSBasal.SchmidFactor(inv(grains.meanOrientation) * xvector)

SFMax, idActive = SFDirection.max(axis=1), SFDirection.argmax(axis=1)

plot(grains, SFMax)
mtexColorbar()
```

<center class="mtex-figure"><img class="inline" src="figures/python/SlipTransmission-7.png"></center>

Bright grains have a basal system close to the optimum Schmid factor of
0.5. Dark grains are poorly oriented for basal slip under this load. The
vector `idActive` identifies the selected signed system in every grain.

## Draw the selected systems in the specimen frame

Rotate each selected system from its crystal frame into the specimen
frame. The blue arrow is the surface trace of the slip plane, and the red
arrow is the projected Burgers vector.

```python
sSGrain = grains.meanOrientation * sSBasal[idActive]

hold(True)
quiver(grains, sSGrain.trace(), displayName='slip plane')
quiver(grains, sSGrain.b, displayName='slip direction', projectIntoPlane=True)
hold(False)
legend(location='northeast')

sSGrain
```

```text
slipSystem (y↓→x)
  size: 87
      x      y      z   |  x      y      z
  -2.62   1.45   -0.2  -0.01   0.01   0.21
   -2.8   0.26   1.05  -0.08  -0.04  -0.19
  -2.36   1.35   1.27  -0.11  -0.02  -0.18
   2.48  -0.51  -1.62   0.12   0.04   0.17
    2.1  -2.13  -0.22   0.14   0.13   0.09
      ⋮      ⋮      ⋮      ⋮      ⋮      ⋮
  -2.62  -0.59   1.35  -0.08  -0.07  -0.18
  -2.98  -0.18  -0.33  -0.02  -0.09   0.19
  -2.35   -0.8  -1.68  -0.13   0.11   0.13
  -2.94  -0.48  -0.37  -0.01  -0.09   0.19
   2.64   0.74   1.23    0.1  -0.06  -0.18
```

<center class="mtex-figure"><img class="inline" src="figures/python/SlipTransmission-8.png"></center>

Neighbouring grains often select visibly different plane traces and slip
directions. The boundary calculation below measures how well each such
pair aligns in three dimensions, not merely in this map projection.

## Inspect the selected slip directions

A pole figure retains every selected Burgers vector as one point.

```python
plot(sSGrain.b)
```

<center class="mtex-figure"><img class="inline" src="figures/python/SlipTransmission-9.png"></center>

The point cloud is not uniform. More selected directions lie near the
east--west axis than near the north--south axis.

```python
plot(sSGrain.b, 'contourf')
```

<center class="mtex-figure"><img class="inline" src="figures/python/SlipTransmission-10.png"></center>

The contour plot summarizes the same points as a density. Its east--west
maximum makes the preferred trend easier to see, while the point plot
preserves the individual grain predictions.

## Use an equivalent stress tensor

A `stressTensor` is required for a loading state that cannot be represented
by one tension direction. For the same uniaxial $$x$$ tension, however, the
direction and tensor routes should agree.

```python
sigma = stressTensor.uniaxial(xvector)
SFStress = sSBasal.SchmidFactor(inv(grains.meanOrientation) * sigma)
SFMaxStress, idStress = SFStress.max(axis=1), SFStress.argmax(axis=1)

np.abs(SFMaxStress - SFMax).max()
```

```text
4.4409e-16
```

```python
np.count_nonzero(idStress != idActive)
```

```text
0
```

The maximum difference is $$3.33\times10^{-16}$$, which is numerical
roundoff, and zero grains change system. Although an earlier version of
this page said that the result was "a bit different," it is not different
for the same uniaxial load. A genuinely multiaxial stress can select a
different system and must use the tensor route.

## Map compatibility on the boundaries

The Luster--Morris parameter $$m'$$ compares the slip-plane normals and slip
directions on opposite sides of a boundary. A value near one means both
pairs are nearly parallel. A value near zero means that at least one pair
is nearly perpendicular. The grain ids of a segment name its two grains;
`id2ind` gives their positions in the list of grains.

```python
boundaryGrainInd = grains.id2ind(gB.grainId)
mPBoundary = mPrime(sSGrain[boundaryGrainInd[:, 0]], sSGrain[boundaryGrainInd[:, 1]])

plot(grains, faceColor=0.8 * np.ones(3), figSize='large')
hold(True)
plot(gB, mPBoundary, lineWidth=3)
mtexColorbar()
quiver(grains, sSGrain.trace(), displayName='slip plane')
quiver(grains, sSGrain.b, displayName='slip direction', projectIntoPlane=True)
hold(False)
legend(location='northeast')

mPStats = np.array([np.min(mPBoundary), np.median(mPBoundary), np.max(mPBoundary)])
mPStats
```

```text
array([0.0001, 0.3727, 0.9835])
```

<center class="mtex-figure"><img class="inline" src="figures/python/SlipTransmission-13.png"></center>

Bright boundary segments connect selected systems with high geometric
compatibility; dark segments connect poorly aligned systems. The minimum,
median, and maximum are 0.00007, 0.37, and 0.96. The wide range shows why
grain orientation alone does not imply uniform transmission through the
map.

## Plot the best compatibility in misorientation space

The $$m'$$ value is unchanged if both crystals and both systems are rotated
together. It therefore depends on their relative misorientation. An
axis--angle section plot can show this dependence without referring to a
particular EBSD map.

```python
sP = axisAngleSections(sSBasal.CS, sSBasal.CS)
moriGrid = sP.makeGrid()
```

Fix one incoming basal system. At each misorientation, compare it with all
symmetry-equivalent outgoing basal systems and retain the best $$m'$$; a
column of misorientations times the row of systems pairs every node with
every outgoing system.

```python
sSBasalReference = slipSystem.basal(ebsd.CS)
mPGrid = mPrime(sSBasalReference, moriGrid.reshape(-1, 1) * sSBasalReference.symmetrise()).max(axis=1)

sP.plot(mPGrid, 'smooth')
mtexColorbar()
```

<center class="mtex-figure"><img class="inline" src="figures/python/SlipTransmission-15.png"></center>

The colour map runs from white at the bottom of the range through blue,
green and yellow to dark red at the top. The dark red regions are the
misorientations for which at least one outgoing basal system nearly
continues the incoming one. The white regions offer no similarly aligned
basal system. Unlike the boundary map, this plot chooses the best outgoing
system without considering the applied stress.

## What m-prime does not decide

A high $$m'$$ is evidence for geometric compatibility, not proof that slip
transmitted. The parameter omits the boundary-plane orientation, local
stress concentrations, critical resolved shear stresses, and competing
non-basal systems. Compare it with observed slip traces and with a loading
model rather than using a universal pass--fail threshold.

## The maths behind m-prime

For incoming and outgoing systems with unit plane normals $$\mathbf n$$ and
unit slip directions $$\mathbf b$$, MTEX evaluates

$$m'=\left| (\mathbf n_{\mathrm{in}}\cdot
  \mathbf n_{\mathrm{out}})
  (\mathbf b_{\mathrm{in}}\cdot\mathbf b_{\mathrm{out}})\right|.$$

The absolute value makes reversed normal or Burgers-vector signs
equivalent. The [`mPrime`](slipSystem.mPrime.html) method applies this
expression element by element to paired systems.

## References

* J. Luster and M. A. Morris,
  [Compatibility of Deformation in Two-Phase Ti-Al Alloys: Dependence on Microstructure
  and Orientation Relationships](https://doi.org/10.1007/BF02670762),
  _Metallurgical and Materials Transactions A_ 26 (1995), 1745--1756, introduces the
  $$m'$$ geometric compatibility parameter used on this page.

## Next

Slip transmission predicts how shear may cross a grain boundary. Continue
with [Dislocation Systems](DislocationSystems_py.html) to represent the
dislocations that carry that shear, then use [GND](GND_py.html) to infer their
geometrically necessary content from orientation gradients.
{% endraw %}
