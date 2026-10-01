---
title: 'Transparency'
sidebar: documentation_sidebar
permalink: TransparencyDemo_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: TransparencyDemo.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/TransparencyDemo.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/Plotting/TransparencyDemo.py">edit page</a></font>

<!--introduction-->

Transparency reveals information that an opaque object would cover. Use it
to expose overlapping markers, combine complementary maps, or look through
a three-dimensional surface.

An *alpha value* controls how strongly a plotted object covers the objects
behind it. An alpha value of 0 is completely transparent. A value of 1 is
completely opaque. MTEX uses different option names for different objects:

* `markerAlpha`, `markerFaceAlpha`, and `markerEdgeAlpha` control the
  markers in pole figures, inverse pole figures, and ODF sections.
* `faceAlpha` controls EBSD maps, grain maps, crystal shapes, and other
  surfaces.
* `edgeAlpha` controls grain boundaries and other line plots.

Each option accepts values in the interval $$[0,1]$$. matplotlib draws
transparency with every backend.

## Reveal overlapping markers

Start with 2000 orientations concentrated around the identity orientation.
Project the same sample onto three pole figures, one for each crystal
direction.

```python
import matplotlib.pyplot as plt
import numpy as np

from mtex import *

cs = crystalFrame('m-3m')
odf = unimodalODF(orientation.id(cs), halfwidth=10 * degree)
ori = odf.discreteSample(2000)

h = Miller([[1, 0, 0], [1, 1, 0], [1, 1, 1]], cs)
```

Opaque markers cover one another. The concentrated orientations appear as
solid blobs. Neither the number of points nor the shape of each maximum is
easy to judge.

```python
plotPF(ori, h, markerSize=5, all=True)
```

<center class="mtex-figure"><img class="inline" src="figures/python/TransparencyDemo-2.png"></center>

Set `markerAlpha` to make both the marker faces and edges almost
transparent. Repeated overlap stays dark, whereas isolated orientations
become faint. The result resembles a density plot.

```python
plotPF(ori, h, markerAlpha=0.05, markerSize=5, all=True)
```

<center class="mtex-figure"><img class="inline" src="figures/python/TransparencyDemo-3.png"></center>

Marker faces and edges can instead have separate alpha values. The edges
of overlapping markers accumulate faster than their faces. Keeping the
edges slightly more opaque can reveal individual markers without filling a
maximum completely. In the fringes the rings resolve; the cores of the
strongest maxima still saturate.

```python
plotPF(ori, h, markerFaceAlpha=0.01, markerEdgeAlpha=0.05, markerSize=10, all=True)
```

<center class="mtex-figure"><img class="inline" src="figures/python/TransparencyDemo-4.png"></center>

Transparency gives only a visual approximation of point density. Compute a
kernel density estimate when the density itself matters. The final plot
shows that estimate as filled contours. [Density Estimation](DensityEstimation_py.html)
explains how MTEX computes it.

```python
plotPF(ori, h, contourf=True)
mtexColorbar()
```

<center class="mtex-figure"><img class="inline" src="figures/python/TransparencyDemo-5.png"></center>

## Superpose EBSD maps

A common use of transparency is to superpose two EBSD maps. Here band
contrast supplies a greyscale background. A half-transparent orientation
map supplies the crystallographic colour.

```python
plottingConvention.default('y↑→x')
ebsd = mtexdata('forsterite')

plot(ebsd, ebsd.bc)
mtexColorMap('black2white')

hold(True)
plot(ebsd['Forsterite'], ebsd['Forsterite'].orientations, faceAlpha=0.5)
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/TransparencyDemo-6.png"></center>

The result shows orientation and measurement quality at the same time.
Dark structure from the band-contrast map remains visible beneath the
orientation colours. [IPF Maps](EBSDIPFMap_py.html) explains how a colour key
assigns those colours to orientations.

## Make transparency depend on a property

A per-pixel property stores one value for every EBSD measurement.
`faceAlpha` can accept those values and make each map cell independently
transparent. This example divides band contrast by its mean and clips the
result at 1. Every alpha value therefore remains in the valid interval.

```python
ebsdF = ebsd['Forsterite']

alpha = np.minimum(ebsdF.bc / np.mean(ebsdF.bc), 1)

plot(ebsdF, ebsdF.orientations, faceAlpha=alpha, figSize='large')
```

<center class="mtex-figure"><img class="inline" src="figures/python/TransparencyDemo-7.png"></center>

Low-band-contrast pixels fade while pixels at or above the mean remain
opaque. Pixels near grain boundaries often fade because overlapping
Kikuchi patterns from two grains tend to lower the band contrast there.
Local misorientation is another useful alpha value. See
[Grain Reference Orientation Deviation](EBSDGROD_py.html) for that construction.

## Superpose a grain map

Grain maps use the same `faceAlpha` option. MTEX also weights a grain's
transparency by its colour. Light-coloured grains consequently become more
transparent than dark-coloured grains. The `translucent` option is a
synonym for `faceAlpha`.

```python
grains = calcGrains(ebsd['indexed'], angle=10 * degree)
grains = smoothBoundary(grains, 5)

plot(ebsd, ebsd.bc)
mtexColorMap('black2white')

hold(True)
plot(grains['Forsterite'], grains['Forsterite'].meanOrientation, faceAlpha=0.5)
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/TransparencyDemo-8.png"></center>

The greyscale map supplies the variation within each grain. The transparent
grain colours summarize the mean orientation of each forsterite grain.
Compare the fine background structure with the piecewise-constant colour
of the grain layer.

## Fade low-angle grain boundaries

Line plots such as grain boundaries use `edgeAlpha`. It accepts one value
for the whole plot or one value for each boundary segment. Here the alpha
increases with misorientation angle and reaches full opacity at 30 degrees.
The call to `minimum` keeps larger angles at the valid maximum.

```python
gB = grains.boundary['Forsterite', 'Forsterite']
boundaryAlpha = np.minimum(gB.misorientation.angle() / (30 * degree), 1)

plot(grains, translucent=0.5, micronbar='off')
legend('off')

hold(True)
plot(gB, edgeAlpha=boundaryAlpha, lineWidth=3)
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/TransparencyDemo-9.png"></center>

Every segment here is at least as strong as the 10 degree segmentation
angle that created it, and four fifths are at or above 30 degrees, so the
network is drawn almost uniformly opaque. The mechanism is what matters:
an alpha vector fades each segment by its own misorientation, and on a map
segmented at a lower angle the weakest boundaries would nearly disappear.

```python
np.mean(boundaryAlpha == 1)
```

```text
0.8164
```

## Look through transparent surfaces

Transparency also reveals the inside of a three-dimensional object. A
transparent olivine crystal shape shows its back faces through the front
faces.

```python
cS = crystalShape.olivine()

plot(cS, faceAlpha=0.2)
```

<center class="mtex-figure"><img class="inline" src="figures/python/TransparencyDemo-11.png"></center>

The same device becomes more useful when the crystal contains another
object. In this cubic example, transparency keeps the slip-system geometry
visible without hiding the crystal outline.

```python
sS = slipSystem.fcc(crystalFrame('432'))
cSfcc = crystalShape.cube(crystalFrame('432'))

plot(cSfcc, faceAlpha=0.2)
hold(True)
plot(cSfcc, sS[0], faceColor='blue', faceAlpha=0.5)
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/TransparencyDemo-12.png"></center>

Three-dimensional ODF plots apply transparency automatically. A contour
level becomes more opaque as its value increases. Maxima therefore remain
visible through lower-valued outer levels. See [Visualizing ODFs](ODFPlot_py.html)
for the available three-dimensional plots.

```python
plt.close('all')
plot3d(SantaFe())
```

<center class="mtex-figure"><img class="inline" src="figures/python/TransparencyDemo-13.png"></center>

## Export figures that contain transparency

Transparency is kept by matplotlib's PDF and SVG backends, but PostScript
and EPS have no transparency and flatten it. Export a figure with transparent
objects as a bitmap or a PDF, for example:

    saveFigure('transparency.png')

See [Exporting Figures](PlottingExport_py.html) for format and resolution
choices.

## References

* matplotlib,
  [Specifying colors: transparency](https://matplotlib.org/stable/users/explain/colors/colors.html#transparency),
  describes scalar and per-artist alpha values; MATLAB's
  [Add Transparency to Graphics Objects](https://www.mathworks.com/help/matlab/creating_plots/add-transparency-to-graphics-objects.html)
  the data-driven alpha values the MTEX options follow.
{% endraw %}
