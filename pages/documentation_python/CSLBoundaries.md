---
title: 'CSL Boundaries'
sidebar: documentation_sidebar
permalink: CSLBoundaries_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: CSLBoundaries.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/CSLBoundaries.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/GrainBoundaries/CSLBoundaries.py">edit page</a></font>

<!--introduction-->

Most misorientations bring the lattices on the two sides of a boundary into no particular
relation. At a coincidence site lattice (CSL) relationship, some sites of the two lattices
coincide.

The number $$\Sigma$$ is the reciprocal density of those sites. Thus, an exact $$\Sigma 3$$
relationship has one coincidence site for every three lattice sites. The $$\Sigma 3$$
relationship is the misorientation of a coherent annealing twin in a cubic metal.

This does not make every measured $$\Sigma 3$$ segment a coherent or low-energy boundary. A
CSL relationship fixes the three misorientation degrees of freedom, but not the two
degrees that specify the boundary plane. The plane, chemistry, and deviation from the
exact relationship also affect boundary energy and properties. Low $$\Sigma$$ is therefore
a useful geometric classification, not a monotonic measure of specialness.

Some low $$\Sigma$$ populations, especially coherent twins, resist intergranular corrosion
and cracking. Increasing their fraction and breaking up the connected network of
susceptible boundaries is the aim of grain boundary engineering. This page shows how to
find and analyse them in an EBSD map.

The workflow assumes [grain reconstruction](GrainReconstruction_py.html),
[boundary misorientations](BoundaryMisorientations_py.html), and
[misorientation theory](MisorientationTheory_py.html). The density section also uses
[kernel density estimation](DensityEstimation_py.html).

```python
import matplotlib.pyplot as plt
import numpy as np
```

```python
from mtex import *
```

## Reconstruct the boundary network

The example is a single-phase cubic iron map. MTEX's [`CSL`](CSL.html) generator is for
cubic symmetry. The plotting convention below matches the specimen frame stored with this
data set.

```python
plottingConvention.default('y↓→x')
ebsd = mtexdata('csl')

# grain segmentation
grains = calcGrains(ebsd)

# grain smoothing
grains = smoothBoundary(grains, 5)

# plot the reconstructed grains by their mean orientations
plot(grains, grains.meanOrientation, ipfDirection=zvector)
```

<center class="mtex-figure"><img class="inline" src="figures/python/CSLBoundaries-3.png"></center>

## What the orientation map shows

Thin bands of similar colours cross many of the larger grains. They are the first visual
clue that this recrystallised material contains many annealing twins.

## Compare the reconstruction with image quality

Diffraction-pattern image quality often drops at a boundary. Plotting it beneath
translucent orientation colours checks the reconstruction against a signal that was not
used to classify the boundary.

```python
plot(ebsd, np.log(ebsd.iq), figSize='large')
mtexColorMap('black2white')
setColorRange([.5, 5])

# make the orientation layer translucent
hold(True)
plot(grains, grains.meanOrientation, ipfDirection=zvector, faceAlpha=0.4, lineWidth=3)
hold(False)
```

```text
Warning: divide by zero encountered in log
```

<center class="mtex-figure"><img class="inline" src="figures/python/CSLBoundaries-4.png"></center>

## What the image-quality overlay shows

Many dark image-quality bands follow the reconstructed interfaces. The narrow coloured
lamellae remain visible through the translucent layer.

## Detect the Sigma 3 boundaries

[`angle`](orientation.angle.html) measures the smallest distance between a boundary
misorientation and the symmetrically equivalent ideal relationships. Here the fixed
tolerance is 3 degrees.

```python
# restrict the analysis to iron--iron boundaries
gB = grains.boundary['iron', 'iron']
gB
```

```text
grainBoundary (y↓→x)
  size: 17759 segments, 2535 chains
  segments    length  mineral 1  mineral 2
     17759  16490 µm       iron       iron
```

```python
# construct the ideal Sigma 3 misorientation
csl3 = CSL(3, ebsd.CS)

# select boundary segments within 3 degrees of Sigma 3
gB3 = gB[angle(gB.misorientation, csl3) < 3 * degree]

# report their segment fraction
sigma3SegmentPercent = 100 * len(gB3) / len(gB)
sigma3SegmentPercent
```

```text
42.0970
```

```python
# overlay the Sigma 3 segments on the existing plot
hold(True)
plot(gB3, lineColor='gold', lineWidth=3, displayName='CSL 3')
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/CSLBoundaries-7.png"></center>

## How much of the network is Sigma 3

The summary reports 17,569 iron--iron segments. Of these, 7,499, or 42.7 percent, lie
within 3 degrees of $$\Sigma 3$$. The gold segments are not scattered randomly: many
continue along complete runs from one triple point to the next.

The tolerance is a choice. The Brandon criterion uses $$15^\circ / \sqrt{\Sigma}$$, which
is 8.7 degrees for $$\Sigma 3$$ and narrows as $$\Sigma$$ increases. The 3 degree tolerance
above is stricter. Neither tolerance determines the unmeasured boundary-plane inclination.

## Triple points where Sigma 3 boundaries meet

A triple point is where exactly three boundary segments meet and separate three real
grains. Its `boundaryId` property gives the three incident segments. The condition below
selects points where at least two of them match the $$\Sigma 3$$ relationship.

[`isTwinning`](grainBoundary.isTwinning.html) is the convenience form of the angular
comparison used above. It also checks the phases on the two sides of each segment.

```python
# logical list of Sigma 3 boundary segments
isCSL3 = grains.boundary.isTwinning(csl3, 3 * degree)

# logical list of triple points with at least two Sigma 3 segments
tPid = np.sum(isCSL3[grains.triplePoints.boundaryId], axis=1) >= 2

# report and plot the selected triple points
numberOfSelectedTriplePoints = np.count_nonzero(tPid)
numberOfSelectedTriplePoints
```

```text
83
```

```python
hold(True)
plot(grains.triplePoints[tPid], color='red', lineWidth=2, markerSize=8)
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/CSLBoundaries-9.png"></center>

## What the selected triple points mean

The map contains 83 such points. Many mark where a twin lamella ends against another
boundary. Their number is one measure of how strongly twinned a material is, although it
does not describe network connectivity by itself.

## Merge across the twins

A twin belongs to the grain in which it grew. Passing the selected segments to
[`merge`](grain2d.merge.html) dissolves those interfaces and groups the grains on their
two sides. See [Merging Grains](GrainMerge_py.html) for the bookkeeping after this operation.

```python
# merge grains that share a selected Sigma 3 segment
mergedGrains = merge(grains, gB3)

# report the number of grains before and after merging
numberOfGrainsBeforeAndAfter = [len(grains), len(mergedGrains)]
numberOfGrainsBeforeAndAfter
```

```text
[924, 453]
```

```python
# overlay the merged-grain boundaries on the previous plot
hold(True)
plot(mergedGrains.boundary, lineColor='w', lineWidth=3)
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/CSLBoundaries-11.png"></center>

## What merging changes

The merge reduces 885 reconstructed grains to 415 groups. Many white outlines enclose
several coloured grains; those regions were one grain before it twinned.

Merging records which grains belong together, but it does not identify which child was
the original grain. That distinction needs an additional rule, as explained on the
merging page.

## Compare other low Sigma relationships

Other low $$\Sigma$$ boundaries can be selected in the same way. This comparison
deliberately uses the wider fixed tolerance of 5 degrees for every relationship.

```python
delta = 5 * degree
gB5 = gB[gB.isTwinning(CSL(5, ebsd.CS), delta)]
gB7 = gB[gB.isTwinning(CSL(7, ebsd.CS), delta)]
gB9 = gB[gB.isTwinning(CSL(9, ebsd.CS), delta)]
gB11 = gB[gB.isTwinning(CSL(11, ebsd.CS), delta)]

lowSigmaSegmentCounts = [len(gB5), len(gB7), len(gB9), len(gB11)]
lowSigmaSegmentCounts
```

```text
[26, 30, 506, 187]
```

```python
hold(True)
plot(gB5, lineColor='b', lineWidth=2, displayName='CSL 5')
plot(gB7, lineColor='g', lineWidth=2, displayName='CSL 7')
plot(gB9, lineColor='m', lineWidth=2, displayName='CSL 9')
plot(gB11, lineColor='c', lineWidth=2, displayName='CSL 11')
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/CSLBoundaries-13.png"></center>

## What the other relationships contribute

In the order $$\Sigma 5$$, $$\Sigma 7$$, $$\Sigma 9$$, and $$\Sigma 11$$, the output gives 26,
41, 504, and 187 segments. Thus, $$\Sigma 9$$ and $$\Sigma 11$$ account for 2.9 and 1.1
percent of the network, while $$\Sigma 5$$ and $$\Sigma 7$$ together contribute fewer than 70
segments.

These colours occur mainly in short pieces rather than along complete boundaries. The
prominence of $$\Sigma 9$$ is not accidental: when two different $$\Sigma 3$$ twin variants
meet, their composition can be a $$\Sigma 9$$ relationship.

## The coincidences belong to the lattice

[`CSL`](CSL.html) accepts a list of $$\Sigma$$ values and returns their misorientations
ordered by $$\Sigma$$ and, within one $$\Sigma$$, by angle.

```python
np.asarray(CSL([3, 5, 7, 9, 11], ebsd.CS).angle()) / degree
```

```text
array([60.    , 36.8699, 38.2132, 38.9424, 50.4788])
```

Which rotations are coincidences, and their $$\Sigma$$, depend on the Bravais lattice, not
on the point group. The three cubic lattices, primitive, body-centred and face-centred,
share their coincidences, so the list above holds for bcc iron as well as for fcc copper
or nickel. A centred lattice of lower symmetry has coincidences of its own. A crystal frame
built from a space group symbol, such as `crystalFrame('R-3m', ...)`, or read from a CIF
file keeps the centring of its lattice, and `CSL` searches the lattice it describes.

```python
bccIron = crystalFrame('Im-3m', ebsd.CS.abc, mineral='bcc iron')
bccIron.centering, np.allclose(np.asarray(CSL([3, 5, 7, 9, 11], bccIron).angle()),
                               np.asarray(CSL([3, 5, 7, 9, 11], ebsd.CS).angle()))
```

```text
('I', True)
```

The lattice need not be cubic. A hexagonal lattice with a rational $$c^2/a^2$$ has exact
coincidences, and the option `delta` finds the near coincidences of any other lattice, as
the [Twinning](Twinning_py.html) page shows for magnesium.

## The misorientations in their fundamental region

The preceding tests compare each segment with one ideal relationship. A complementary
view plots all boundary misorientations in the symmetry-reduced fundamental region.
Grain-exchange symmetry identifies a misorientation with its inverse because a boundary
has no preferred side.

```python
# compute and plot the boundary of the fundamental region
oR = fundamentalRegion(ebsd.CS, ebsd.CS, 'antipodal')
plot(oR)

# plot a reproducible sample of 500 boundary misorientations
rng = np.random.default_rng(0)
mori = discreteSample(gB.misorientation, 500, rng=rng)
hold(True)
plot(mori.projectIntoFundamentalRegion())

# mark the ideal Sigma 3 misorientation
plot(csl3.projectIntoFundamentalRegion(antipodal=True), markerFaceColor='r', displayName='CSL 3', markerSize=20)
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/CSLBoundaries-16.png"></center>

## What the fundamental-region plot shows

The cloud is not uniform. It forms a dense clump at a corner of the region, and the red
$$\Sigma 3$$ marker lies inside that clump.

## Estimate the boundary misorientation distribution

A density estimated from the segment misorientations makes the same observation
quantitative. The `halfwidth` is the angular smoothing scale, while `bandwidth` sets the
harmonic truncation. The displayed summary confirms that the MDF retains grain-exchange
symmetry.

This is a boundary, or correlated, MDF. It contains one sample per segment, so long or
finely sampled boundaries contribute more than short ones.
[Misorientation Distribution Function](MisorientationDistributionFunction_py.html) compares
this population with the uncorrelated MDF implied by texture alone.

```python
mdf = calcDensity(gB.misorientation, halfwidth=5 * degree, bandwidth=48)
mdf
```

```text
SO3FunHarmonic (iron → iron)
  bandwidth: 48
  mean     : 1
  antipodal: true
```

## Plot axis--angle sections

Sections at constant misorientation angle show where the density lies. The low $$\Sigma$$
relationships are annotated for comparison.

```python
plot(mdf, 'axisAngle', np.arange(25, 61, 5) * degree, colorRange=[0, 15])

annotate(CSL(3, ebsd.CS), label='$CSL_3$', backgroundColor='w')
annotate(CSL(5, ebsd.CS), label='$CSL_5$', backgroundColor='w')
annotate(CSL(7, ebsd.CS), label='$CSL_7$', backgroundColor='w')
annotate(CSL(9, ebsd.CS), label='$CSL_9$', backgroundColor='w')
```

<center class="mtex-figure"><img class="inline" src="figures/python/CSLBoundaries-18.png"></center>

## Locate the density maximum

The density is concentrated in the 60 degree section at the $$\Sigma 3$$ label. The two
strongest local maxima provide a numerical check.

```python
peakMRD, peakMori = mdf.max(numLocal=2)

peakMRD
```

```text
array([53.6305,  1.6505])
```

```python
peakAngles = angle(peakMori) / degree
peakAngles
```

```text
array([59.9666, 37.6658])
```

```python
peakAxes = round(axis(peakMori))
peakAxes
```

```text
vector3d (iron)
  size: 2
  h  k  l
  1  1  1
  1  0  1
```

## Read the strongest maximum

The first maximum is 54.2 multiples of a random distribution (mrd), at 60.0 degrees about
a member of the $$\langle 111 \rangle$$ family. It is the $$\Sigma 3$$ twin relationship.

## Count segments near an ideal relationship directly

[`volume`](orientation.volume.html) gives the fraction of sampled segment misorientations
within a chosen radius. It does not require an MDF.

```python
sigma3WithinTwoDegrees = 100 * volume(gB.misorientation, csl3, 2 * degree)
sigma3WithinTwoDegrees
```

```text
40.2500
```

```python
sigma9WithinTwoDegrees = 100 * volume(gB.misorientation, CSL(9, ebsd.CS), 2 * degree)
sigma9WithinTwoDegrees
```

```text
2.0102
```

## Compare the direct segment fractions

Within 2 degrees, 40.76 percent of the segments are $$\Sigma 3$$, compared with 2.07
percent for $$\Sigma 9$$. These are segment fractions, not equal votes from neighbouring
grain pairs.

## Evaluate the MDF along low-index axes

The density can also be evaluated along paths through misorientation space. The three
paths below are rotations about low-index axes. The $$\Sigma 3$$ relationship is a 60
degree rotation about $$\langle 111 \rangle$$.

```python
omega = np.linspace(0, 60 * degree, 100)
fibre100 = orientation.byAxisAngle(xvector, omega, mdf.CS, mdf.SS)
fibre111 = orientation.byAxisAngle(vector3d(1, 1, 1), omega, mdf.CS, mdf.SS)
fibre101 = orientation.byAxisAngle(vector3d(1, 0, 1), omega, mdf.CS, mdf.SS)

plt.figure()
plt.plot(omega / degree, mdf.eval(fibre100), linewidth=2)
plt.plot(omega / degree, mdf.eval(fibre111), linewidth=2)
plt.plot(omega / degree, mdf.eval(fibre101), linewidth=2)
plt.legend(['[100]', '[111]', '[101]'])
plt.xlabel('misorientation angle')
plt.ylabel('mrd')
```

<center class="mtex-figure"><img class="inline" src="figures/python/CSLBoundaries-24.png"></center>

## Read the low-index-axis profiles

The [111] curve rises to a sharp peak of 54.2 mrd at 60 degrees. The [101] curve stays
below 3.4 mrd, and the [100] curve stays below 1 mrd. One misorientation dominates this
material, and it is the twin.

## Evaluate the MDF at one misorientation

Finally, the MDF can be evaluated at a single misorientation. This asks how common that
particular relationship is in this boundary network.

```python
testMori = orientation.byEuler(15 * degree, 28 * degree, 14 * degree, mdf.CS, mdf.CS)
```

```python
testMisorientationMRD = mdf.eval(testMori)
testMisorientationMRD
```

```text
1.5205
```

```python
sigma3MRD = mdf.eval(csl3)
sigma3MRD
```

```text
array([53.6418])
```

## Compare the two density values

The chosen misorientation has density 1.55 mrd, close to the random baseline. The
$$\Sigma 3$$ relationship has density 54.2 mrd, about 54 times the random baseline.

## References

* H. Grimmer, W. Bollmann, and D. H. Warrington,
  [Coincidence-site lattices and complete pattern-shift lattices in cubic crystals](https://doi.org/10.1107/S056773947400043X),
  *Acta Crystallographica A* 30 (1974), 197--207, defines the cubic CSL and establishes
  the meaning of $$\Sigma$$.
* D. G. Brandon,
  [The structure of high-angle grain boundaries](https://doi.org/10.1016/0001-6160(66)90168-4),
  *Acta Metallurgica* 14 (1966), 1479--1484, introduces the angular tolerance used above.
* V. Randle,
  [The coincidence site lattice and the sigma enigma](https://doi.org/10.1016/S1044-5803(02)00193-6),
  *Materials Characterization* 47 (2001), 411--416, explains why a CSL label alone does
  not establish special behaviour.
* G. S. Rohrer,
  [Grain boundary energy anisotropy: a review](https://doi.org/10.1007/s10853-011-5677-3),
  *Journal of Materials Science* 46 (2011), 5881--5895, reviews the dominant role of
  boundary-plane orientation.
* A. P. Sutton and R. W. Balluffi,
  [Interfaces in Crystalline Materials](https://search.worldcat.org/title/31166519),
  Clarendon Press, 1995, is the standard textbook treatment of interface
  crystallography, structure, thermodynamics, and kinetics.

## Next

Continue with [Twinning Analysis](TwinningBoundaries_py.html) to infer an unknown twin
relationship from measured boundaries. The chapter next turns from crystallographic
character to geometry in [Boundary Curvature](BoundaryCurvature_py.html). Use
[Merging Grains](GrainMerge_py.html) when the merged parent--child bookkeeping matters.
{% endraw %}
