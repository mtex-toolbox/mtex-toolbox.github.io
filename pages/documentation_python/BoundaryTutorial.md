---
title: 'Grain Boundary Tutorial'
sidebar: documentation_sidebar
permalink: BoundaryTutorial_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: BoundaryTutorial.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/BoundaryTutorial.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/Tutorials/BoundaryTutorial.py">edit page</a></font>

<!--introduction-->

This tutorial starts with reconstructed grains and asks what lies between them. It
selects one phase pair, maps the misorientation angle, and finds the dominant angle
population in a magnesium specimen.

Read [the grain tutorial](GrainTutorial_py.html) first if grain reconstruction or inverse
pole figure colours are new to you. [General Concepts](GeneralConcepts.html) explains how
one MTEX object holds a vectorized list of grains or boundary segments.

A grain boundary is a segment between two neighbouring EBSD pixels that belong to
different grains. MTEX stores the complete boundary network as a
[grainBoundary](grainBoundary.grainBoundary.html) object with one entry per segment.

```python
import matplotlib.pyplot as plt
import numpy as np

from mtex import *

plottingConvention.default('y↑→x')

# load the magnesium example without displaying the full EBSD summary
ebsd = mtexdata('twins', silent=True)

# reconstruct grains using an explicit example threshold
grains = calcGrains(ebsd, angle=15 * degree)

# smooth the pixel staircases before measuring boundary trace lengths
grains = grains.smoothBoundary()

# display the grain summary
grains
```

```text
grain2d (y↑→x)
  size: 121
  Phase  Grains              Mineral    Color         Symmetry  Crystal reference frame
  1      121 (22833 pixels)  Magnesium  LightSkyBlue  6/mmm     Magnesium
  boundary segments: 3363, inner: 3, triple points: 114
```

## See the grains before measuring their boundaries

The displayed summary reports 121 magnesium grains. The 15 degree reconstruction
threshold is an example parameter, not a universal grain definition.
[Grain Reconstruction](GrainReconstruction_py.html) explains how to choose and report it.

[smoothBoundary](grain2d.smoothBoundary.html) simplifies, refines, and smooths the pixel
staircase by default. This improves trace geometry but changes the number and length of
segments. [Grain Smoothing](GrainSmoothing_py.html) develops that choice.

```python
# create one explicit inverse pole figure colour key
ipfKey = ipfColorKey(grains.CS)
grainColor = ipfKey.orientation2color(grains.meanOrientation)

# plot one mean orientation colour per grain
plot(grains, grainColor)
```

<center class="mtex-figure"><img class="inline" src="figures/python/BoundaryTutorial-2.png"></center>

## Reading the orientation map

The narrow lamellae crossing the larger grains have colours that differ abruptly from
their surroundings. Their shape and orientation contrast make them candidates for twins,
but the boundary relationship must still be measured.

## The boundary list

The boundary network is a list in its own right. Displaying it groups the segments by the
phases on their two sides.

```python
gB = grains.boundary
gB
```

```text
grainBoundary (y↑→x)
  size: 3363 segments, 297 chains
  segments  length   mineral 1  mineral 2
       608  183 µm  notIndexed  Magnesium
      2755  771 µm   Magnesium  Magnesium
```

## Reading the boundary summary

The summary reports 3359 segments after smoothing. Of these, 2751 lie between two
magnesium grains and 608 form the outer rim, which appears in the `notIndexed` row
because there is no grain on its other side.

In a general map the same row can also contain boundaries next to `notIndexed`
measurements. `notIndexed` is the phase for measurements whose diffraction patterns could
not be indexed.

The outer-rim segments have no second indexed lattice and therefore no crystallographic
misorientation. Two phase names select the segments that do have magnesium on both sides.

```python
gB_MgMg = gB['Magnesium', 'Magnesium']
gB_MgMg
```

```text
grainBoundary (y↑→x)
  size: 2755 segments, 259 chains
  segments  length  mineral 1  mineral 2
      2755  771 µm  Magnesium  Magnesium
```

## Misorientation angle along the boundary

A misorientation is the rotation that carries one crystal lattice onto the other. Crystal
symmetry gives many equivalent rotations for the same physical relationship. The `angle`
reports the smallest symmetry-equivalent rotation angle, also called the disorientation
angle.

A boundary has no preferred side. MTEX therefore gives same-phase boundary
misorientations grain-exchange symmetry, so a rotation and its inverse represent the same
relationship. See [Grain Exchange Symmetry](MisorientationGrainExchangeSym_py.html).

```python
# store one disorientation angle per magnesium boundary segment in degrees
misorientationAngle = gB_MgMg.misorientation.angle() / degree

# colour every selected segment by that angle
plot(gB_MgMg, misorientationAngle, linewidth=2)
mtexColorbar(title='minimum misorientation angle (degree)')
```

<center class="mtex-figure"><img class="inline" src="figures/python/BoundaryTutorial-5.png"></center>

## Reading the angle map

Long lamellar boundaries share nearly the same high-angle colour. Other interfaces cover a
broader angular range, so the map already suggests one repeated orientation relationship.

## Measure the dominant angle population

The next two displayed values summarize segments, not whole physical interfaces. The
median angle is 84.7 degrees, and 58 percent of the segments have angles above 80
degrees.

```python
medianAngle = np.median(misorientationAngle)
medianAngle
```

```text
84.5516
```

```python
fractionAbove80 = np.mean(misorientationAngle > 80)
fractionAbove80
```

```text
0.5819
```

## Reading the segment statistics

Segment counts depend on how a traced curve was sampled. For a boundary population it is
usually more meaningful to weight every segment by its trace length. The histogram below
sums trace length in 2 degree bins.

```python
edges = np.arange(0, 95, 2)
traceLength, _ = np.histogram(misorientationAngle, edges, weights=gB_MgMg.segLength)

# display the angular range containing the most boundary trace length
peakBin = np.argmax(traceLength)
peakRange = edges[peakBin:peakBin + 2]
peakRange
```

```text
array([86, 88])
```

```python
# plot total boundary trace length in each angular bin
histogram(misorientationAngle, edges, weights=gB_MgMg.segLength)
xlabel('minimum misorientation angle (degree)')
ylabel('boundary trace length (micrometres)')
plt.title('Magnesium to magnesium boundaries')
```

<center class="mtex-figure"><img class="inline" src="figures/python/BoundaryTutorial-9.png"></center>

## Reading the angle distribution

The dominant bin spans 86 to 88 degrees. Its position agrees with the 86.3 degree
disorientation of the common magnesium extension-twin relationship, and the contributing
traces are the lamellae seen above.

An angle match alone does not identify a twin. A robust test compares the complete
misorientation, including its axis, with the ideal relationship and checks where the
selected boundaries occur. [Twinning](TwinningBoundaries_py.html) performs that test and
[Merging Grains](GrainMerge_py.html) reconnects the twin with its host.

## What a two-dimensional map leaves unknown

A macroscopic grain boundary has five degrees of freedom. Three describe the
misorientation and two describe the boundary-plane normal. A polished two-dimensional
section records only the line where that plane cuts the surface, called its trace; the
plane inclination is not measured directly.

The angle map therefore describes the lattice relationship across each trace, not the
complete boundary character. Three-dimensional mapping or a stereological estimate over
many traces is needed for the missing plane information.
[Boundary Normal Distribution](BoundaryNormalDistribution_py.html) explains the
planar-section approach.

## Next

Continue with [Grain Boundaries](GrainBoundaries.html) for the boundary chapter.
[Selecting Boundaries](BoundarySelect_py.html) develops phase and property selections, while
[Boundary Properties](BoundaryProperties_py.html) explains the geometry and paired pixel
information stored per segment.

[Boundary Misorientations](BoundaryMisorientations_py.html) develops angles and axes.
[Misorientation Distribution Functions](MisorientationDistributionFunction_py.html) explains
the reference distributions needed before a boundary population is compared with random
orientations.

## Further reading

* A.P. Sutton and R.W. Balluffi,
  [Interfaces in Crystalline Materials](https://search.worldcat.org/title/31166519),
  Oxford University Press, 1995.
* A.P. Sutton, E.P. Banks and A.R. Warwick,
  [The five-dimensional parameter space of grain boundaries](https://doi.org/10.1098/rspa.2015.0442),
  Proceedings of the Royal Society A 471 (2015), 20150442.
* D.M. Saylor, B.S. El-Dasher, B.L. Adams and G.S. Rohrer,
  [Measuring the five-parameter grain-boundary distribution from observations of planar sections](https://doi.org/10.1007/s11661-004-0147-z),
  Metallurgical and Materials Transactions A 35 (2004), 1981-1989.
* J.W. Christian and S. Mahajan,
  [Deformation twinning](https://doi.org/10.1016/0079-6425(94)00007-7),
  Progress in Materials Science 39 (1995), 1-157.

## Technical Details

`smoothBoundary` leaves 3363 segments for MATLAB's 3359 (2755 for 2751 between two
magnesium grains), so the median angle is 84.55 degrees for MATLAB's 84.68 and the
fraction above 80 degrees 0.5819 for 0.5816; the peak bin, 86 to 88 degrees, agrees. The
trace length per bin is one `np.histogram` with `weights=segLength`.
{% endraw %}
