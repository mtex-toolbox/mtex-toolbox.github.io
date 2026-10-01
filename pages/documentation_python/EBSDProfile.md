---
title: 'Line Profiles'
sidebar: documentation_sidebar
permalink: EBSDProfile_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: EBSDProfile.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/EBSDProfile.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/EBSDAnalysis/EBSDProfile.py">edit page</a></font>

<!--introduction-->

A map shows an orientation gradient as a change of colour, but colour is difficult to
read quantitatively. A line profile turns the same change into a curve against
distance. A steady lattice rotation then appears as a slope, whereas an abrupt change
appears as a jump.

This page assumes the grain segmentation introduced in
[Grain Reconstruction](GrainReconstruction_py.html) and the inverse pole figures
introduced in [Orientation Plots](EBSDOrientationPlots_py.html). Check the specimen
reference frame as described in [Reference Frame](EBSDReferenceFrame_py.html) before
interpreting a profile direction.

The example uses the forsterite map. Its plotting convention draws specimen Y upward
and specimen X to the right.

```python
import matplotlib.pyplot as plt
import numpy as np
```

```python
from mtex import *
```

```python
plottingConvention.default('y↑→x')
ebsd = mtexdata('forsterite')
```

## Select a grain with a large orientation spread

A grain is a phase-homogeneous, spatially connected region of EBSD pixels produced by
segmentation. Reconstruct the grains with a 15° boundary threshold, then select the
grain with the largest grain orientation spread (GOS). GOS is the mean angular
deviation from the grain's mean orientation;
[Orientation Parameters](GrainOrientationParameters_py.html) explains it in detail.

```python
grains = calcGrains(ebsd, minPixel=5, angle=15 * degree)
id = np.argmax(grains.GOS)
grainSelected = grains[id]
grainSelected
```

```text
grain2d (y↑→x)
  size: 1
  Phase  Grains           Mineral     Color         Symmetry  Crystal reference frame
  1      1 (2614 pixels)  Forsterite  LightSkyBlue  mmm       Forsterite
  boundary segments: 418, inner: 54, triple points: 17
        Id   Phase  Pixels        meanRotation         GOS
       293       1    2614    (153°,109°,246°)        0.17
```

```python
# plot the selected grain with its measured orientations
plot(grainSelected.boundary, lineWidth=2)
hold(True)
plot(ebsd[grainSelected], ebsd[grainSelected].orientations, ipfDirection=zvector)
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/EBSDProfile-5.png"></center>

Its spread is 9.7°, which is large for a single grain. The orientation colours change
visibly from one end to the other, so this grain is a useful place to compare gradual
rotation with abrupt jumps.

## Draw and extract the profile

Specify the segment by its two endpoint coordinates and draw it on the map. In
interactive work, clicking the two endpoints of the line with matplotlib's `ginput`
gives the same pair. Fixed coordinates keep this published example executable. They
use the same units as the map.

```python
lineSec = np.array([[18826, 6438], [18089, 10599]])
plt.plot(lineSec[:, 0], lineSec[:, 1], linewidth=2)
```

<center class="mtex-figure"><img class="inline" src="figures/python/EBSDProfile-6.png"></center>

[spatialProfile](EBSD.spatialProfile.html) returns the measurements near the segment
in traversal order. Its second output is their projected distance from the first
endpoint. The object summary shows that this profile contains 86 measurements.

```python
ebsdLine, profileDist = spatialProfile(ebsd[grainSelected], lineSec)
ebsdLine
```

```text
EBSD (y↑→x)
  size: 86
  Phase  Orientations  Mineral     Color         Symmetry  Crystal reference frame
  1      86 (100%)     Forsterite  LightSkyBlue  mmm       Forsterite
  properties    : bands, bc, bs, error, grainId, mad
  scan unit     : um
  X × Y         : [1.81e+04 → 1.88e+04] × [6450 → 1.06e+04]
  square lattice: spacing 50
```

## Compare point-to-origin and point-to-point changes

The point-to-origin curve compares every orientation with the first one on the line.
It shows the accumulated change, but its value depends on that chosen reference point.
The point-to-point curve compares consecutive measurements and exposes local jumps.

```python
oriLine = ebsdLine.orientations
toOrigin = angle(oriLine[0], oriLine) / degree
pointToPoint = angle(oriLine[:-1], oriLine[1:]) / degree
midDist = 0.5 * (profileDist[:-1] + profileDist[1:])

plt.figure()
plt.plot(profileDist, toOrigin, linewidth=1.5)
plt.plot(midDist, pointToPoint, linewidth=1.5)

plt.xlabel(f'distance along profile ({ebsdLine.scanUnit})')
plt.ylabel('misorientation angle in degree')
plt.legend(['point-to-origin', 'point-to-point'])
```

<center class="mtex-figure"><img class="inline" src="figures/python/EBSDProfile-8.png"></center>

The point-to-origin curve climbs steadily to about 7° over a little more than half the
line, then jumps to 20° and stays nearly flat. The point-to-point curve says the same
thing locally. It remains at a few tenths of a degree almost everywhere, which reveals
the steady bending, but contains three isolated spikes; the largest is 21°.

The point-to-point values are angular increments, not spatial gradients. Divide them
by the corresponding distance increments to obtain an angle per unit length. Small
increments are also sensitive to measurement noise and to the scan step size, so
compare profiles acquired at a common spatial scale.

A jump of 21° inside one grain deserves attention because the grains were
reconstructed with a threshold of 15°. It is not a contradiction. Segmentation joins
neighboring pixels whose disorientation is below the threshold, and the two parts of
this grain are connected by a path that goes around the jump. The three gaps trace
pixels that were notIndexed before reconstruction. They were absorbed into the grain
footprint, but `calcGrains` did not invent orientations for them.

## Track the full orientations in inverse pole figures

A misorientation angle discards the axis about which the crystal turns. Plotting the
orientations in inverse pole figures retains that directional information. Colouring
the markers by distance retains their order along the line.

```python
plotIPF(oriLine, profileDist, cat(xvector, yvector, zvector), markerSize=20, antipodal=True)
mtexColorbar(title=f'distance along profile ({ebsdLine.scanUnit})')
```

<center class="mtex-figure"><img class="inline" src="figures/python/EBSDProfile-9.png"></center>

Every panel holds the same two groups. The measurements before the jump, dark blue
through teal, trace a short chain rather than a point: their directions spread by up
to 7° in the x and z panels and 4° in y, which is the gradual bending seen in the
curves above. The measurements after the jump are all yellow and lie within about 1°
of each other, so they merge into one marker.

How far apart the two groups appear depends on the specimen direction. Their means are
17° and 18° apart in the y and z panels, but only 8° apart in x, where the yellow
marker touches the end of the chain. A jump that is unmistakable in one inverse pole
figure can be inconspicuous in another, which is why all three are plotted. Inspecting
both angle and direction helps distinguish a coherent lattice rotation from isolated
indexing artefacts.

## Further reading

* S. Van Boxel, M. Seefeldt, B. Verlinden and P. Van Houtte,
  [Visualization of grain subdivision by analysing the misorientations within a grain using electron backscatter diffraction](https://doi.org/10.1111/j.1365-2818.2005.01467.x),
  _Journal of Microscopy_ 218 (2005), 104-114, compares point-to-point changes with
  grain-scale misorientation and shows why the misorientation axis matters.
* M. Kamaya, [Correction of step size dependency in local misorientation obtained by EBSD measurements: Introducing equidistant local misorientation](https://doi.org/10.1016/j.ultramic.2024.113928),
  _Ultramicroscopy_ 259 (2024), 113928, examines how point spacing changes local
  misorientation.
* A. J. Schwartz, M. Kumar, B. L. Adams and D. P. Field, editors,
  [Electron Backscatter Diffraction in Materials Science](https://doi.org/10.1007/978-0-387-88136-2),
  second edition, Springer, 2009, provides the wider experimental and analytical
  background to EBSD maps.
* [ISO 24173:2024](https://www.iso.org/standard/82749.html), _Microbeam analysis -
  Guidelines for orientation measurement using electron backscatter diffraction_,
  covers reliable and reproducible orientation measurements, including acquisition and
  calibration.

## Next

A profile answers a directional, path-dependent question. For a local map of
neighboring orientation changes, continue with [KAM](EBSDKAM_py.html). For each point's
deviation from its grain mean, use [Mis2Mean / GROD](EBSDGROD_py.html).
[Denoising](EBSDDenoising_py.html) explains how to reduce orientation noise before
interpreting changes of only a few tenths of a degree.
{% endraw %}
