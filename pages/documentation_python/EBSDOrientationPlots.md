---
title: 'Plotting Individual Orientations'
sidebar: documentation_sidebar
permalink: EBSDOrientationPlots_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: EBSDOrientationPlots.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/EBSDOrientationPlots.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/EBSDAnalysis/EBSDOrientationPlots.py">edit page</a></font>

<!--introduction-->

Read a population of EBSD orientations in projections, sections, and three-dimensional
orientation space.

An EBSD map answers *where* an orientation was measured. The plots on this page discard
position and ask *which* orientations occur. A pole figure makes a preferred crystal
direction easy to see, an inverse pole figure makes alignment with a specimen direction
easy to see, and an orientation-space plot can reveal components or fibres.

This page assumes phase selection from [Select EBSD data](EBSDSelect_py.html) and the
crystal-to-specimen map from [Orientation theory](DefinitionAsCoordinateTransform_py.html).
A *reference frame* is the coordinate system in which the data are expressed. Check it
as described in [Reference Frame](EBSDReferenceFrame_py.html) before reading specimen
directions from any plot.

A *plotting convention* states how that frame is laid out on screen. The convention
below draws specimen Y upward and specimen X to the right. It changes the screen
layout, but does not rotate the specimen or re-express the orientations.

```python
import numpy as np
```

```python
from mtex import *
```

```python
plottingConvention.default('y↑→x')
ebsd = mtexdata('forsterite')
```

## The orientation list

Select the forsterite phase and display its orientations. The summary reports one
orientation per indexed measurement, together with the crystal symmetry carried by the
list.

```python
ori = ebsd['Fo'].orientations
ori
```

```text
orientation (Forsterite → y↑→x)
  size: 152345
  Bunge Euler angles in degree
  phi1   Phi  phi2
  95.3  42.3   294
  95.6  42.3   293
  95.4  42.4   294
  95.6  42.2   293
  95.4  42.3   294
     ⋮     ⋮     ⋮
   180    53   239
   180  52.6   239
   180  52.8   243
   180  52.7   242
   180  52.7   242
```

There are 152345 orientations. Drawing all of them as markers would make an opaque
blot, so the plotting commands take a random sample and report its size. The option
`points` requests a particular sample size, while `all=True` draws the complete list.

The automatic sample size depends on the plot. A pole figure divides 10000 by the
number of symmetry elements, which gives 1250 for the eight elements of forsterite, and
an inverse pole figure divides 100000 the same way. Section and three-dimensional plots
ignore symmetry and take 2000. The two constants are conventions of the plotting
commands, not a statement about the data.

## Pole figures

A pole figure fixes a crystal direction and asks where it points in the specimen. Each
sampled orientation maps the $$(100)$$ pole into the specimen frame.
[plotPF](orientation.plotPDF.html) also accounts for the crystallographically
equivalent poles.

```python
plotPF(ori, Miller(1, 0, 0, ori.CS))
```

```text
  I'm plotting 1250 random orientations out of 152345 given orientations
  You can specify the number of points by the option "points".
  The option "all" ensures that all data are plotted
```

<center class="mtex-figure"><img class="inline" src="figures/python/EBSDOrientationPlots-5.png"></center>

The poles form a broad girdle through specimen Y and Z, while the rim near specimen X
is sparse. The forsterite $$a$$ axes therefore lie preferentially in the specimen Y--Z
plane and rarely along specimen X. If X, Y, and Z denote rolling, transverse, and normal
directions, respectively, this is the transverse--normal plane rather than the rolling
direction.

One pole figure does not determine a complete orientation. It discards the rotation
about the chosen pole; see [Pole Figures](OrientationPoleFigure_py.html) for the
construction and its symmetry rules.

## Inverse pole figures

An inverse pole figure fixes a specimen direction and asks which crystal direction
points along it. [plotIPF](orientation.plotIPDF.html) draws the answer in a
fundamental sector, which contains one representative of each family of
crystal-symmetry-equivalent directions.

```python
plotIPF(ori, xvector)
```

```text
  I'm plotting 12500 random orientations out of 152345 given orientations
```

<center class="mtex-figure"><img class="inline" src="figures/python/EBSDOrientationPlots-6.png"></center>

The points crowd towards $$[010]$$ and thin out towards $$[100]$$. This is the previous
figure read from the other end: specimen X is rarely the forsterite $$a$$ axis. Like a
pole figure, an inverse pole figure discards rotation about the aligned direction. The
full construction is developed in
[Inverse Pole Figures](OrientationInversePoleFigure_py.html).

## Sections through orientation space

Orientation space has three dimensions. A section plot replaces it with a stack of
two-dimensional slices, so it retains all three orientation coordinates across the
stack rather than projecting away one rotation.
[plotSection](orientation.plotSection.html) draws points within a finite tolerance of
each slice. An orientation can therefore miss every panel, and a symmetry-equivalent
representative can appear more than once.

The sigma sections used here are introduced in
[Orientation Sections](OrientationVisualizationSections_py.html) and treated in detail in
[Sigma Sections](SigmaSections_py.html).

```python
plotSection(ori, 'sigma', points=1000, sections=9)
```

```text
plot 1000 random orientations out of 152345 given orientations
```

<center class="mtex-figure"><img class="inline" src="figures/python/EBSDOrientationPlots-7.png"></center>

MTEX first samples 1000 orientations and then tests the section tolerance and symmetry
representatives. The thousand points asked for are distributed over the nine sections,
not drawn in each of them. The number of visible markers is therefore not necessarily
1000. The strongest clusters continue through adjacent central sections, which shows
that they occupy finite regions of orientation space rather than one mathematical slice.

## The orientation space directly

The same orientations can be scattered into one three-dimensional plot. For an
orientation with crystal and specimen frames, the default is the symmetry-reduced
region in Bunge Euler angles.

```python
scatter(ori)
```

```text
plot 2000 random orientations out of 152345 given orientations
```

<center class="mtex-figure"><img class="inline" src="figures/python/EBSDOrientationPlots-8.png"></center>

Several compact clouds are joined by thinner populations. Many nearby EBSD measurements
often come from the same grain, but a cloud is not a grain label because position has
already been discarded. Euler space also distorts distances strongly near $$\Phi = 0$$,
so use this plot to locate clusters rather than to judge their angular separation.

Passing `axisAngle=True` or `Rodrigues=True` selects those parametrizations. The option
`center` moves the symmetry-reduced region being drawn. See
[3D Orientation Plots](OrientationVisualization3d_py.html) for their geometry.

## The same plots for grains

A *grain* is a phase-homogeneous, spatially connected region of EBSD pixels produced by
segmentation. Each grain carries a mean orientation, so the plotting commands above also
accept a grain-mean list. The segmentation criterion determines which grains and means
exist; choose it for the material as explained in
[Grain Reconstruction](GrainReconstruction_py.html).

```python
grains = calcGrains(ebsd)
foGrains = grains['Fo']
```

Compare equally sized random samples. The blue markers represent individual
measurements and the orange markers represent grain means.

```python
plotIPF(ori, xvector, points=1000, markerSize=3, markerFaceColor='blue')
hold(True)
plotIPF(foGrains.meanOrientation, xvector, points=1000, markerSize=3, markerFaceColor='orange')
hold(False)
```

```text
  I'm plotting 1000 random orientations out of 152345 given orientations
  I'm plotting 1000 random orientations out of 1152 given orientations
```

<center class="mtex-figure"><img class="inline" src="figures/python/EBSDOrientationPlots-10.png"></center>

The clouds cover broadly the same sector, but not with the same weight. On this regular
map, sampling measurements approximately weights each grain by its mapped area because
a large grain contributes many pixels. Sampling grain means gives every segmented grain
one vote, whatever its area. The orange means are consequently more evenly spread and
reach regions where the blue measurement population is thin.

Neither view is universally correct. Pixel weighting estimates an area fraction in this
section; equal grain weighting describes the population of segmented grains. It is not
a volume fraction unless additional stereological assumptions justify that
interpretation.

## Colouring the points

A scatter plot has a second visual channel. Passing one scalar per orientation colours
each marker by that value. Here `mad` is the mean angular deviation between an indexed
diffraction pattern and its solution. It is a per-measurement *property*, so it is
selected in lockstep with `ori`; see [Properties](Properties_py.html).

```python
h = cat(Miller(1, 0, 0, ori.CS), Miller(1, 1, 0, ori.CS))
plotPF(ori, ebsd['Fo'].mad, h, antipodal=True, markerSize=4)
mtexColorbar(title='mean angular deviation (degree)')
```

```text
  I'm plotting 1250 random orientations out of 152345 given orientations
```

<center class="mtex-figure"><img class="inline" src="figures/python/EBSDOrientationPlots-11.png"></center>

Low and high MAD values are intermingled across the main pole concentrations. There is
no separate high-MAD cluster that explains the texture by itself. A high MAD flags a
poor pattern fit; it does not prove that an orientation is wrong.

The same positional argument accepts a scalar per grain. Colour by the logarithm of
grain area so that the wide size range remains visible.

```python
plotSection(foGrains.meanOrientation, np.log(foGrains.area), 'sigma', sections=9, markerSize=10, all=True)
mtexColorbar(title='log(grain area)')
```

<center class="mtex-figure"><img class="inline" src="figures/python/EBSDOrientationPlots-12.png"></center>

Colour changes only the marker colour; it does not change the statistical weight of
that grain. The larger yellow and green grains lie mainly in the same central-section
concentrations as the many smaller blue grains, while most isolated points are small.
This is why grain size and orientation should be examined together rather than silently
replacing one weighting by the other.

## Choosing the next representation

These scatter plots are qualitative views of a finite orientation list. Pole and
inverse pole figures answer directional questions but discard one rotational degree of
freedom. Sections and three-dimensional plots retain three coordinates, although their
geometry and symmetry reduction still matter.

For a quantitative texture, estimate an *orientation distribution function* (ODF), a
density on orientation space, as shown in [ODF Estimation](EBSD2ODF_py.html).
[Plot Types](PlotTypes_py.html) covers marker plots in general, and
[Spherical Projections](SphericalProjections_py.html) explains how spherical directions
reach the page.

## References

* H.-J. Bunge, [Texture Analysis in Materials Science: Mathematical Methods](https://doi.org/10.1016/C2013-0-11769-2),
  Butterworths, English ed., 1982, develops pole figures, inverse pole figures, Euler
  orientation space, and orientation distribution functions.
* J. Galán López and L. A. I. Kestens,
  [A multivariate grain size and orientation distribution function: derivation from electron backscatter diffraction data and applications](https://doi.org/10.1107/S1600576720014909),
  _Journal of Applied Crystallography_ 54 (2021), 148-162, distinguishes grain frequency
  from volume-weighted texture and treats correlations between grain size and
  orientation.
* [ISO 24173:2024](https://www.iso.org/standard/82749.html), _Microbeam analysis -
  Guidelines for orientation measurement using electron backscatter diffraction_, gives
  the measurement and calibration guidance required before these orientation plots can
  be interpreted reliably.

## Next

[Orientation Analysis](EBSDOrientationAnalysis_py.html) turns these views into a test of a
candidate fibre texture. [Grains](Grains.html) continues with spatially connected
regions, while [ODF Analysis](ODFAnalysis.html) continues with densities on orientation
space.
{% endraw %}
