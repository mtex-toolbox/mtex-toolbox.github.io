---
title: 'Three-Dimensional EBSD Analysis'
sidebar: documentation_sidebar
permalink: EBSD3Analysis_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: EBSD3Analysis.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/EBSD3Analysis.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/EBSD3Analysis/EBSD3Analysis.py">edit page</a></font>

<!--introduction-->

Everything measured on a polished surface is a section through something
three-dimensional, and a section is a biased witness. A section through a grain almost
never passes through its widest part, so its apparent size is smaller than that grain's
full extent. An elongated grain can look equiaxed when it is cut across rather than along
its long direction, and the inclination of a grain boundary away from the section is lost
altogether.

Three-dimensional data removes these compromises. It can come from serial sectioning,
from diffraction techniques that probe a volume, or from a simulated microstructure. This
page walks through the whole analysis on one such data set: import the volume, look at
it, cut sections, reconstruct the grains, measure them, and smooth their boundaries. Every
step has a page of its own in this chapter that treats it in depth.

```python
import matplotlib.pyplot as plt
import numpy as np
```

```python
from mtex import *
```

```python
plottingConvention.default('y↑→x')
how2plot = plottingConvention.default3D
```

## Import a volume

`EBSD3.load` reads a volume from a DREAM.3D file or from the Xnovo GrainMapper3D format
and detects which of the two it is given. The sample data set is a simulated nine-phase
volume in the Xnovo format, which `mtexdata` fetches by name.

```python
ebsd = mtexdata('xnovo')
print(ebsd)
```

```text
EBSD3 (y↑→x)
  size: 50 × 50 × 50 grid
  Phase  Orientations  Mineral     Color                Symmetry  Crystal reference frame
  0      27950 (22%)   notIndexed
  1      11046 (8.8%)  Silicon     [0.584 0.878 0.969]  m-3m      Silicon
  2      11876 (9.5%)  Diamond     [0.82  0.31  0.467]  m-3m      Diamond
  3      10436 (8.3%)  Magnesium   [1. 0. 0.]           6/mmm     Magnesium
  4      10231 (8.2%)  Rutile      [1. 0. 0.]           4/mmm     Rutile
  5      9060 (7.2%)   Corundum    [0.714 0.839 0.471]  -3m1      Corundum
  6      11521 (9.2%)  Quartz      [0.    0.698 0.875]  -3m1      Quartz
  7      10961 (8.8%)  Pyroxene    [0.929 0.604 0.345]  mmm       Pyroxene
  8      10578 (8.5%)  Hornblende  [0.733 0.467 0.773]  12/m1     Hornblende
  9      11341 (9.1%)  Microcline  [0.969 0.851 0.388]  -1        Microcline
  properties: Completeness, grainId
  scan unit : mm
  X × Y × Z : [-0.245 → 0.245] × [-0.245 → 0.245] × [-0.245 → 0.245]
  voxel     : 0.01 × 0.01 × 0.01
```

The summary reports a 50 x 50 x 50 grid rather than a list: the measurements are held in
an `EBSD3` object whose entries are addressed as `ebsd[i, j, k]` along $$x$$, $$y$$ and $$z$$.
Each of the nine phases occupies about a twelfth of the voxels and the remaining fifth is
not indexed. The voxel is 10 micron on a side and the volume spans half a millimetre in
each direction.

```python
print([ebsd.dx, ebsd.dy, ebsd.dz])
print(ebsd.extent())
```

```text
[0.01, 0.01, 0.01]
[-0.245  0.245 -0.245  0.245 -0.245  0.245]
```

[Volume Data and Slices](EBSD3Plotting_py.html) describes the object and its import in
detail.

## Display the volume

`plot(ebsd)` draws three slice planes through the middle of the volume; its figure links
to an interactive page, and `show3d()` opens it in a window. For a figure of chosen
planes, cut the three central slices with `slice` and draw them into one axes. Each slice
is an ordinary two-dimensional EBSD map, coloured by phase.

```python
plot(ebsd.slice(plane3d(vector3d.Z, vector3d(0, 0, 0))), micronbar='off')
hold(True)
plot(ebsd.slice(plane3d(vector3d.X, vector3d(0, 0, 0))), micronbar='off')
plot(ebsd.slice(plane3d(vector3d.Y, vector3d(0, 0, 0))), micronbar='off')
hold(False)
setCamera(how2plot)
```

<center class="mtex-figure"><a href="figures/python/EBSD3Analysis-6.html"><img class="inline" src="figures/python/EBSD3Analysis-6.png"></a></center>

The specimen is a cylinder standing along $$z$$: the horizontal section is a disc and the
two vertical sections are rectangles that end at its rim. The nine phases are mixed
through the volume without any layering.

## Cut sections

A slice is taken through any plane, given by its normal and one point on it. The
measurements of a section keep their position in the specimen, and the section is seen
along the normal of the plane it was cut with, so an oblique cut displays like any other
map.

```python
newMtexFigure(layout=[1, 2], figSize='large')
plot(ebsd.slice(plane3d(vector3d.Z, vector3d(0, 0, 0.15))), micronbar='off')
mtexTitle('normal || z, at z = 0.15 mm')
nextAxis()
plot(ebsd.slice(plane3d(vector3d(1, 1, 1), vector3d(0, 0, 0))), micronbar='off')
mtexTitle('normal || (1,1,1)')
```

<center class="mtex-figure"><img class="inline" src="figures/python/EBSD3Analysis-7.png"></center>

Everything written for planar data applies to a section unchanged. The quartz
orientations of the oblique cut, for instance, are coloured with the usual inverse pole
figure key.

```python
ebsdCut = ebsd.slice(plane3d(vector3d(1, 1, 1), vector3d(0, 0, 0)))
plot(ebsdCut, ebsdCut.prop['Completeness'], faceAlpha=0.1)
mtexColorMap('white2black')
hold(True)
plot(ebsdCut['Quartz'], ebsdCut['Quartz'].orientations, micronbar='off')
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/EBSD3Analysis-8.png"></center>

[Volume Data and Slices](EBSD3Plotting_py.html) shows slices at several depths and how a
section relates to the volume it was cut from.

## Reconstruct the grains

A grain is a connected region of voxels of one phase whose orientations differ by less
than a threshold. `calcGrains` segments the volume with the same misorientation criteria
as the planar case and returns a `grain3d` object. Where an `EBSD3` holds one measurement
per voxel, a `grain3d` holds each grain as a closed polyhedron: its faces carry the
geometry, its phase and mean orientation describe the material inside. `minPixel`
dissolves grains of fewer than ten voxels into their neighbours; a grain that small is all
corners and no surface.

```python
grains = calcGrains(ebsd, angle=2 * degree, minPixel=10)
print(grains)
```

```text
grain3d (y↑→x)
  Phase  Grains                Mineral     Color                Symmetry  Crystal reference frame
  0      8 (volume 0.027962)   notIndexed
  1      54 (volume 0.011045)  Silicon     [0.584 0.878 0.969]  m-3m      Silicon
  2      58 (volume 0.011874)  Diamond     [0.82  0.31  0.467]  m-3m      Diamond
  3      51 (volume 0.010433)  Magnesium   [1. 0. 0.]           6/mmm     Magnesium
  4      45 (volume 0.010231)  Rutile      [1. 0. 0.]           4/mmm     Rutile
  5      48 (volume 0.009056)  Corundum    [0.714 0.839 0.471]  -3m1      Corundum
  6      52 (volume 0.01152)   Quartz      [0.    0.698 0.875]  -3m1      Quartz
  7      56 (volume 0.010961)  Pyroxene    [0.929 0.604 0.345]  mmm       Pyroxene
  8      49 (volume 0.010577)  Hornblende  [0.733 0.467 0.773]  12/m1     Hornblende
  9      54 (volume 0.011341)  Microcline  [0.969 0.851 0.388]  -1        Microcline
  boundary faces: 166738
```

Voxels that are not indexed form regions of their own, which are listed as grains of the
phase `notIndexed`. The indexed grains are selected the way a phase is selected on a map.

```python
grains = grains['indexed']
```

Plotting the whole collection shows the outer surface of the volume, one colour per
phase. Every grain behind it is present in the collection.

```python
plot(grains, micronbar='off', edgeAlpha=0.1)
setCamera(how2plot)
```

<center class="mtex-figure"><a href="figures/python/EBSD3Analysis-11.html"><img class="inline" src="figures/python/EBSD3Analysis-11.png"></a></center>

Individual grains are addressed by their `id`. The five largest grains of the volume,
drawn together, show the surface a reconstruction from voxels produces: every face is a
voxel face, so the surface is a staircase whose normals all point along the axes.

```python
order = np.argsort(-grains.volume, kind='stable')
largest = grains[order[:5]]
print(largest)

plot(largest, micronbar='off', edgeAlpha=0.2)
setCamera(how2plot)
```

```text
grain3d (y↑→x)
  Phase  Grains               Mineral  Color                Symmetry  Crystal reference frame
  1      3 (volume 0.001688)  Silicon  [0.584 0.878 0.969]  m-3m      Silicon
  4      2 (volume 0.001112)  Rutile   [1. 0. 0.]           4/mmm     Rutile
  boundary faces: 5496
```

<center class="mtex-figure"><a href="figures/python/EBSD3Analysis-12.html"><img class="inline" src="figures/python/EBSD3Analysis-12.png"></a></center>

[Grain Reconstruction](Grains3DReconstruction_py.html) explains the criteria, the `minPixel`
option and how to compare the result with the grain ids a file already carries.
[Three-Dimensional Grains](Grains3D_py.html) imports a mesh from DREAM.3D instead of
reconstructing one.

## Measure the grains

A three-dimensional grain has a `volume` and a `surface` area, and neither needs a
stereological correction. Volumes are in cubic millimetres here, the unit of the
coordinates.

```python
print(np.column_stack([largest.volume, largest.surface()]))
```

```text
[[0.0006 0.0564]
 [0.0006 0.0544]
 [0.0006 0.0578]
 [0.0005 0.0514]
 [0.0005 0.0558]]
```

The two combine into a dimensionless measure of compactness, the surface area divided by
the volume to the power two thirds. A sphere gives the smallest possible value,
$$(36\pi)^{1/3} \approx 4.84$$, a cube gives 6, and a grain with a rough or elongated
surface gives more.

```python
shapeQuotient = grains.surface() / grains.volume ** (2 / 3)

newMtexFigure()
histogram(shapeQuotient)
plt.xlabel('surface / volume$^{2/3}$')
plt.ylabel('number of grains')
```

<center class="mtex-figure"><img class="inline" src="figures/python/EBSD3Analysis-14.png"></center>

Every grain lies well above the cube's 6, although the grains are equiaxed and convex.
The staircase inflates the surface: a voxel surface has the area of the axis-aligned
faces it is made of, whatever shape it encloses. Sizes are unaffected, since the volume
of a voxel grain is exact.

[Properties](Grains3DProperties_py.html) covers diameters, principal axes, neighbours and
the per-face properties of the boundary.

## Smooth the boundaries

The staircase is removed in two steps. `reduceBoundary` merges the vertices of each
voxel-sized cell of a coarser lattice, which already averages the steps and leaves a mesh
a quarter the size. `smoothBoundary` then moves the vertices with one of the boundary
filters of the planar case. Triple lines, quadruple points and the outer hull of the
volume stay where they are, so the network keeps its topology.

```python
grainsS = smoothBoundary(reduceBoundary(grains, 2, quadric=True), taubinFilter(20))

plot(grainsS['id', largest.id], micronbar='off', edgeAlpha=0.2)
setCamera(how2plot)
```

<center class="mtex-figure"><a href="figures/python/EBSD3Analysis-15.html"><img class="inline" src="figures/python/EBSD3Analysis-15.png"></a></center>

The same five grains are now bounded by smooth surfaces. The volume of the whole specimen
is conserved exactly, since its hull is fixed. Between the grains and the unindexed
regions between them a fraction of a percent moves, and the volume of a single grain
changes by a few percent.

```python
print([grains.volume.sum(), grainsS.volume.sum()])
```

```text
[0.097038, 0.09624653947155423]
```

The compactness measure responds as it should: the surfaces lost their steps, and the
histogram moves down towards the range between a sphere and a cube.

```python
shapeQuotientS = grainsS.surface() / grainsS.volume ** (2 / 3)

edges = np.arange(5, 10.5 + 1e-9, 0.25)
newMtexFigure()
histogram(shapeQuotient, edges, label='voxel surface')
hold(True)
histogram(shapeQuotientS, edges, label='smoothed', alpha=0.7)
hold(False)
plt.legend(loc='upper right')
plt.xlabel('surface / volume$^{2/3}$')
plt.ylabel('number of grains')
```

<center class="mtex-figure"><img class="inline" src="figures/python/EBSD3Analysis-17.png"></center>

[Smoothing](Grains3DSmoothing_py.html) compares the filters and the placement rules of the
coarsening, with the volume they cost per grain.
[Boundary Network](Grains3DBoundaries_py.html) reads the faces, triple lines and quadruple
points of the smoothed mesh, and
[Boundary Normal Distribution](BoundaryNormalDistribution_py.html) contrasts boundary
normals measured from the faces with stereological estimates from traces.

## Where to read on

[Neper Interface](NeperInterface_py.html) generates a synthetic polycrystal or imports an
existing `.tess` file, which gives a microstructure of known construction to test an
analysis against. [Operations](Grains3DOperations_py.html) traces planar sections back to
their parent grains, triangulates polygonal faces and rotates a collection.

The two-dimensional foundations are developed in [EBSD](EBSDAnalysis.html),
[Grains](Grains.html) and [Grain Boundaries](GrainBoundaries.html).

## References

* F. Bachmann, R. Hielscher, and H. Schaeben,
  [Grain Detection from 2d and 3d EBSD Data - Specification of the MTEX Algorithm](https://doi.org/10.1016/j.ultramic.2011.08.002),
  *Ultramicroscopy* 111 (2011), 1720-1733, develops the spatial cells and connectivity
  used to define grains from two- and three-dimensional data.
* S. Maddali, S. Ta'asan, R. M. Suter,
  [Topology-faithful nonparametric estimation and tracking of bulk interface networks](https://doi.org/10.1016/j.commatsci.2016.08.021),
  *Computational Materials Science* 125 (2016), 328-340, is the stratified smoothing
  scheme that keeps triple lines and quadruple points in place.
* M. A. Groeber and M. A. Jackson,
  [DREAM.3D: A Digital Representation Environment for the Analysis of Microstructure in 3D](https://doi.org/10.1186/2193-9772-3-5),
  *Integrating Materials and Manufacturing Innovation* 3 (2014), 56-72, describes the
  data environment and surface-mesh representation of the other importer.

## Next

Continue with [Volume Data and Slices](EBSD3Plotting_py.html), the first page of the
chapter, and follow the sidebar from there.

## Technical details

`calcGrains` alters the volume it is given, so MATLAB's `[grains, ebsd] =
calcGrains(ebsd, ...)` is `grains = calcGrains(ebsd, ...)`; `'quadric'` is the keyword
`quadric=True`. MATLAB's plain `histogram` is matplotlib's, `DisplayName` its `label`.
{% endraw %}
