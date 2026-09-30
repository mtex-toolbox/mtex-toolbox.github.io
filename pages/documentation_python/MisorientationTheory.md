---
title: 'Theory of Misorientations'
sidebar: documentation_sidebar
permalink: MisorientationTheory_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: MisorientationTheory.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/MisorientationTheory.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/Misorientations/MisorientationTheory.py">edit page</a></font>

<!--introduction-->

An [orientation](OrientationDefinition_py.html) says how one crystal sits in the specimen. A
*misorientation* says how two crystals sit relative to each other. It is a coordinate
transform from one crystal frame into the other, so the specimen frame drops out.

Misorientations describe grain boundaries, twins, phase transformations, and orientation
gradients inside a deformed grain. The two crystals may belong to the same phase or to
different phases.

This page assumes that orientations map crystal coordinates to specimen coordinates.
Review [Orientations as Coordinate Transforms](DefinitionAsCoordinateTransform_py.html) if
the order of composed transforms is unfamiliar.

```python
import numpy as np

from mtex import *

plottingConvention.default('y↑→x')
```

## Two Grains to Work With

The example is an EBSD map of magnesium containing extension twins. The map first has to
be divided into [grains](GrainReconstruction_py.html).

```python
ebsd = mtexdata('twins', silent=True)

# use only proper symmetry operations, which are rotations
ebsd['M'].CS = ebsd['M'].CS.properGroup()

# compute and smooth the grains
grains = calcGrains(ebsd, threshold=5 * degree, minPixel=5)
grains = smoothBoundary(grains, 5)
CS = grains.CS
```

The two labelled grains share the white boundary. Their adjacency makes the relative
orientation a grain-boundary misorientation. The port numbers the grains differently from
MATLAB, where these two are grains 57 and 58.

```python
plot(grains, grains.meanOrientation, ipfDirection=zvector, micronbar='off')

hold(True)
plot(grains[[42, 46]].boundary, edgecolor='w', linewidth=2)
hold(False)

text(grains[[42, 46]], ['1', '2'])
```

<center class="mtex-figure"><img class="inline" src="figures/python/MisorientationTheory-3.png"></center>

Their mean orientations are the two inputs used below.

```python
ori1 = grains[42].meanOrientation
ori2 = grains[46].meanOrientation
```

## Misorientation Angle and Disorientation

The smallest rotation angle separating the two crystal orientations is

```python
disorientationAngle = angle(ori1, ori2) / degree
disorientationAngle
```

```text
array([85.7299])
```

A crystal orientation has many symmetrically equivalent descriptions. MTEX compares all
proper-symmetry pairs and returns the smallest angle. This minimum is the
*disorientation angle*.

```python
ori2Equivalent = ori2.symmetrise()
symmetryAwareRange = np.hstack([np.min(angle(ori1, ori2Equivalent)), np.max(angle(ori1, ori2Equivalent))]) / degree
symmetryAwareRange
```

```text
array([85.7299, 85.7299])
```

Every symmetry-aware comparison therefore returns the same value. If symmetry is ignored,
the same representatives span many rotation angles.

```python
rawAngleRange = np.hstack([np.min(angle(ori1, ori2Equivalent, noSymmetry=True)),
                          np.max(angle(ori1, ori2Equivalent, noSymmetry=True))]) / degree
rawAngleRange
```

```text
array([ 85.7299, 179.8286])
```

## The Directed Misorientation

A full misorientation contains an axis as well as an angle, and it has a direction.
Since `ori1` and `ori2` both map crystal coordinates to specimen coordinates, the product
below maps coordinates of grain 2 into grain 1.

```python
mori = inv(ori1) * ori2
mori
```

```text
misorientation (Magnesium → Magnesium)
  Bunge Euler angles in degree
  phi1   Phi  phi2
   150  94.3   150
```

The displayed object is one representative of all equivalent rotations. Its raw angle is
not necessarily the disorientation angle.

```python
rawRepresentativeAngle = angle(mori, noSymmetry=True) / degree
rawRepresentativeAngle
```

```text
array([107.9164])
```

[project2FundamentalRegion](orientation.project2FundamentalRegion.html) chooses the
representative in the fundamental region, where each physical relationship appears once.

```python
disori = project2FundamentalRegion(mori)
fundamentalRegionAngle = angle(disori, noSymmetry=True) / degree
fundamentalRegionAngle
```

```text
array([85.7299])
```

The raw representative is about $$107.9^\circ$$, whereas the representative in the
fundamental region has the $$85.7^\circ$$ disorientation angle.

Applying `mori` to a plane normal expressed in grain 2 returns that normal expressed in
grain 1. Here $$\{11\bar20\}$$ of grain 2 is parallel to $$\{2\bar1\bar10\}$$ of grain 1.

```python
round(mori * Miller(1, 1, -2, 0, CS))
```

```text
vector3d (Magnesium)
  h   k   i  l
  2  -1  -1  0
```

The inverse misorientation maps from grain 1 back into grain 2.

```python
round(inv(mori) * Miller(2, -1, -1, 0, CS))
```

```text
vector3d (Magnesium)
  h  k   i  l
  1  1  -2  0
```

## Coincident Lattice Planes

The relationship lies near several coincidences between major lattice planes. The large
markers are planes of grain 2 mapped into grain 1. The small labelled markers are planes
already expressed in grain 1.

```python
m = Miller([[1, -1, 0, 0], [1, 1, -2, 0], [-1, 0, 1, 1], [0, 0, 0, 1]], CS)

# plot the major planes of grain 2 in the frame of grain 1
for im in range(len(m)):
  plot(mori * m[im].symmetrise(), MarkerSize=10, DisplayName=m[im].char('LaTex'), noLabel=True, upper=True,
       textBelowMarker=True)
  hold(True)
hold(False)

# label the corresponding planes of grain 1
mm = round(unique(mori * m.symmetrise(), noSymmetry=True), maxHKL=6)
annotate(mm, labeled=True, MarkerSize=5, textBelowMarker=True)

legend(location='southoutside', FontSize=13, numColumns=4)
```

<center class="mtex-figure"><img class="inline" src="figures/python/MisorientationTheory-13.png"></center>

Two pairs lie almost on top of each other: $$\{11\bar20\}$$ on $$\{11\bar20\}$$ and
$$\{\bar1011\}$$ on $$\{\bar1011\}$$. Their angular separations are about half a degree and a
fifth of a degree.

```python
nearCoincidenceError = np.hstack([angle(mori * Miller(1, 1, -2, 0, CS), Miller(1, 1, -2, 0, CS)),
                                 angle(mori * Miller(-1, 0, 1, 1, CS), Miller(-1, 0, 1, 1, CS))]) / degree
nearCoincidenceError
```

```text
array([0.4592, 0.1766])
```

Two further pairs are close without coinciding. The prism plane $$\{1\bar100\}$$ maps near
the basal plane $$(0001)$$, and the basal plane maps near the prism plane. Both separations
are about $$4.3^\circ$$.

```python
crossPlaneError = np.hstack([angle(mori * Miller(1, -1, 0, 0, CS), Miller(0, 0, 0, 1, CS)),
                            angle(mori * Miller(0, 0, 0, 1, CS), Miller(1, -1, 0, 0, CS))]) / degree
crossPlaneError
```

```text
array([4.2748, 4.2919])
```

## A Useful 90 Degree Approximation

The exact relationship that forces the first two chosen correspondences is the transform
taking $$\{11\bar20\}$$ to $$\{2\bar1\bar10\}$$ and $$[0001]$$ to $$[01\bar10]$$.

```python
coincidenceMori = orientation.map(Miller(1, 1, -2, 0, CS), Miller(2, -1, -1, 0, CS),
                                  Miller(0, 0, 0, 1, CS, 'uvw'), Miller(0, 1, -1, 0, CS, 'uvw'))
coincidenceMori
```

```text
misorientation (Magnesium → Magnesium)
  (0001) || (011̅0)   [11̅00] || [0001]
```

It is a rotation by exactly $$90^\circ$$ about a prism axis.

```python
round(coincidenceMori.axis())
```

```text
vector3d (Magnesium)
  h   k   i  l
  2  -1  -1  0
```

---

```python
coincidenceAngle = coincidenceMori.angle() / degree
coincidenceAngle
```

```text
90.0000
```

In the corresponding plot, the pairs forced by the construction now coincide exactly.
This is a useful geometric approximation, but it is not the ideal magnesium
extension-twin relationship.

```python
# plot the approximation in place of the measured misorientation
for im in range(len(m)):
  plot(coincidenceMori * m[im].symmetrise(), MarkerSize=10, DisplayName=m[im].char('LaTex'), noLabel=True, upper=True)
  hold(True)
hold(False)

# label the corresponding planes in the other crystal
mm = round(unique(coincidenceMori * m.symmetrise(), noSymmetry=True), maxHKL=6)
annotate(mm, labeled=True, MarkerSize=5)

legend(location='southoutside', FontSize=13, numColumns=4)
```

<center class="mtex-figure"><img class="inline" src="figures/python/MisorientationTheory-19.png"></center>

## The Magnesium Extension Twin

The physical twin relationship is defined by a twin plane and an in-plane direction. Its
disorientation is $$86.3^\circ$$ about a prism axis.

```python
twinning = orientation.map(Miller(1, -1, 0, 1, CS), Miller(1, 0, -1, -1, CS),
                           Miller(0, 1, -1, 1, CS, 'uvw'), Miller(1, -1, 0, 1, CS, 'uvw'))
twinning
```

```text
misorientation (Magnesium → Magnesium)
  (101̅1̅) || (011̅1)   [011̅1] || [11̅01]
```

---

```python
twinAxis = round(twinning.axis())
twinAxis
```

```text
vector3d (Magnesium)
  h   k   i  l
  2  -1  -1  0
```

---

```python
twinAngle = twinning.angle() / degree
twinAngle
```

```text
86.2992
```

A textbook may instead describe this twin as a $$180^\circ$$ rotation about the twin axis.
That is a symmetrically equivalent representative of the same misorientation, obtained by
asking for the largest rotation angle.

```python
twinMaximumAngle = twinning.angle('max') / degree
twinMaximumAngle
```

```text
180
```

The measured grain pair is $$0.7^\circ$$ from the ideal twin. The 90 degree coincidence
approximation is $$3.7^\circ$$ from it.

```python
twinDeviation = np.hstack([angle(mori, twinning), angle(coincidenceMori, twinning)]) / degree
twinDeviation
```

```text
array([0.7322, 3.7008])
```

## Finding the Twin Boundaries

A boundary close to the ideal relationship is a candidate twin boundary. The threshold is
an analyst choice and compares the complete misorientation, including its axis, rather
than the angle alone.

```python
# select only magnesium to magnesium grain boundaries
gB = grains.boundary['Magnesium', 'Magnesium']

# test the complete misorientation against the ideal twin
isTwinning = angle(gB.misorientation, twinning) < 5 * degree

# plot the grains and highlight candidate twin boundaries
plot(grains, grains.meanOrientation, ipfDirection=zvector, micronbar='off')
hold(True)
plot(gB[isTwinning], edgecolor='w', linewidth=2)
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/MisorientationTheory-25.png"></center>

The white traces follow the thin lamellae visible in the orientation map. This spatial
agreement supports the crystallographic classification, but a threshold match alone does
not prove the deformation mechanism. [Twinning Analysis](TwinningBoundaries_py.html) shows
how to infer the ideal relationship from a boundary population instead of assuming it.

Segment counts depend on how a boundary was sampled, so the fraction is weighted by trace
length. Candidate twins make up about half the boundary length in this map.

```python
twinLengthFraction = np.sum(gB[isTwinning].segLength) / np.sum(gB.segLength)
twinLengthFraction
```

```text
0.4906
```

## Reading a Population of Misorientations

The misorientations of all boundary segments can be reduced to an angle distribution. The
sharp peak just below $$90^\circ$$ is the twin population found above.

```python
plotAngleDistribution(gB.misorientation, figSize='small')
```

<center class="mtex-figure"><img class="inline" src="figures/python/MisorientationTheory-27.png"></center>

This boundary distribution is correlated because only neighbouring grains are paired.
[Angle Distribution](AngleDistributionFunction_py.html) compares it with the uncorrelated
distribution from the texture and with the distribution expected for uniformly random
orientations.

The same population can instead be reduced to its axes.

```python
plotAxisDistribution(gB.misorientation, contourf=True)
```

<center class="mtex-figure"><img class="inline" src="figures/python/MisorientationTheory-28.png"></center>

The axes concentrate on $$\left<\bar12\bar10\right>$$, the prism-axis family of the ideal
twin. These axes are expressed in crystal coordinates;
[Axis Distribution](AxisDistributionFunction_py.html) also explains axes in specimen
coordinates and the random reference distribution.

## Misorientations Between Two Phases

A phase transformation relates crystals with different symmetries. The first symmetry of
the misorientation belongs to the parent phase and the second belongs to the child phase.

```python
CS_Mag = loadCIF('Magnetite')
CS_Hem = loadCIF('Hematite')
```

A reported magnetite-to-hematite relationship has $$\{111\}_{m} \parallel \{0001\}_{h}$$
and $$\{\bar101\}_{m} \parallel \{10\bar10\}_{h}$$. These two parallelisms are exactly the
input expected by [orientation.map](orientation.map.html).

```python
Mag2Hem = orientation.map(Miller(1, 1, 1, CS_Mag), Miller(0, 0, 0, 1, CS_Hem),
                          Miller(-1, 0, 1, CS_Mag), Miller(1, 0, -1, 0, CS_Hem))
Mag2Hem
```

```text
misorientation (Magnetite → Hematite)
  (1̅01) || (101̅0)   [111] || [0001]
```

Consider one magnetite parent orientation.

```python
ori_Mag = orientation.byEuler(0, 0, 0, CS_Mag)
```

Applying every symmetrically equivalent parent description creates 48 child
descriptions, but only 8 child orientations are distinct. The duplicates come from
symmetry operations that leave the $$\{111\}$$ axis in place and therefore do not create a
new child orientation.

```python
allChildDescriptions = symmetrise(ori_Mag) * inv(Mag2Hem)
variantCounts = [len(allChildDescriptions), len(unique(allChildDescriptions))]
variantCounts
```

```text
[24, 8]
```

A *variant* is one crystallographically equivalent child orientation predicted from a
single parent orientation through a known orientation relationship.
[variants](orientation.variants.html) removes duplicate descriptions directly.

```python
childVariants = variants(Mag2Hem, ori_Mag)
childVariants
```

```text
orientation (Hematite → y↑→x)
  size: 8
  Bunge Euler angles in degree
  phi1   Phi  phi2
   135  54.7    60
   315   125   120
    45  54.7   300
   225   125   240
   225  54.7    60
    45   125   120
   135   125     0
   315  54.7   180
```

The pole figure contains eight discrete child orientations rather than one. A transformed
parent grain may therefore contain several child orientations related by the same
parent-to-child relationship.

```python
plotPDF(childVariants, Miller([[1, 0, -1, 0], [1, 1, -2, 0], [0, 0, 0, 1]], CS_Hem))
```

<center class="mtex-figure"><img class="inline" src="figures/python/MisorientationTheory-34.png"></center>

## The Maths Behind the Transform

Let $$\mathbf{G}_1$$ and $$\mathbf{G}_2$$ be the matrices of `ori1` and `ori2`. A direction
with crystal-2 components $$\mathbf{h}_2$$ has specimen components
$$\mathbf{r}=\mathbf{G}_2\mathbf{h}_2$$. Its components in the frame of crystal 1 are
therefore

$$ \mathbf{h}_1 = \mathbf{G}_1^{-1}\mathbf{r}
   = \mathbf{G}_1^{-1}\mathbf{G}_2\mathbf{h}_2. $$

This is why `inv(ori1) * ori2` maps crystal 2 into crystal 1. Reversing the order gives
the inverse map.

Proper symmetry operations may multiply this transform from both sides without changing
the physical crystal relationship. The fundamental region retains one representative from
that equivalent set. For a same-phase grain boundary, swapping the two grains also
replaces the transform by its inverse; [grain exchange symmetry](MisorientationGrainExchangeSym_py.html)
develops that additional equivalence.

## References

* A. Morawiec, [Orientations and Rotations: Computations in Crystallographic Textures](https://doi.org/10.1007/978-3-662-09156-2),
  Springer, 2004, develops rotation space, symmetry, and misorientation angle and axis
  distributions.
* J.K. Mackenzie, [Second paper on statistics associated with the random disorientation of cubes](https://doi.org/10.1093/biomet/45.1-2.229),
  _Biometrika_ 45 (1958), 229-240, derives the cubic random-disorientation angle
  distribution.
* J.W. Christian and S. Mahajan, [Deformation twinning](https://doi.org/10.1016/0079-6425(94)00007-7),
  _Progress in Materials Science_ 39 (1995), 1-157, reviews twin modes and their
  crystallography.
* L.A. Bursill and R.L. Withers, [On the multiple orientation relationships between hematite and magnetite](https://doi.org/10.1107/S0021889879012486),
  _Journal of Applied Crystallography_ 12 (1979), 287-294, reports the iron-oxide
  orientation relationships used above.
* [ISO 24173:2024](https://www.iso.org/standard/82749.html), _Microbeam analysis --
  Guidelines for orientation measurement using electron backscatter diffraction_, gives
  guidance for reproducible EBSD orientation measurements.

## Next

The next page explains [Grain Exchange Symmetry](MisorientationGrainExchangeSym_py.html). A
whole distribution of misorientations, represented as a density rather than a list, is
the [Misorientation Distribution Function](MisorientationDistributionFunction_py.html).
Applying a parent-to-child relationship throughout a map leads to
[Parent Grain Reconstruction](MaParentGrainReconstruction_py.html).
{% endraw %}
