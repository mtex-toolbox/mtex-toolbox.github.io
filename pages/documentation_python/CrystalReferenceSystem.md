---
title: 'The Crystal Reference Frame'
sidebar: documentation_sidebar
permalink: CrystalReferenceSystem_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: CrystalReferenceSystem.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/CrystalReferenceSystem.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/CrystalGeometry/CrystalReferenceSystem.py">edit page</a></font>

<!--introduction-->

A *reference frame* is the coordinate system in which data are expressed. A *crystal
frame* is the Cartesian reference frame fixed to the lattice basis of a phase. Its basis
and default plotting convention are distinct from the point-group symmetry attached to
it.

This page explains how the non-orthogonal lattice axes $$\vec a$$, $$\vec b$$ and $$\vec c$$
are embedded in an orthonormal crystal frame $$\vec x$$, $$\vec y$$, $$\vec z$$. Read
[Miller Indices](CrystalDirections_py.html) and
[Lattice Metric and Plane Geometry](LatticeMetric_py.html) first if direct and reciprocal
lattice axes are new to you.

A [crystalFrame](crystalFrame.crystalFrame.html) stores the point symmetry and lattice
metric of a phase and carries its crystal frame. The display below therefore reports
both the metric and the frame alignment.

```python
import numpy as np
```

```python
from mtex import *
```

```python
plottingConvention.default('y↑→x')
```

```python
cs = crystalFrame('triclinic', [1, 2.2, 3.1], np.array([80, 85, 95]) * degree)
cs
```

```text
crystalFrame (⊙c*→b)
  symmetry          : 1̅
  elements          : 2
  a, b, c           : 1, 2.2, 3.1
  alpha, beta, gamma: 80°, 85°, 95°
  reference frame   : X||a*, Z||c
```

## Why an Orthonormal Frame Is Needed

The direct lattice axes are generally neither perpendicular nor of equal length.
Orientations and tensor components, however, use orthonormal Cartesian components. The
lattice basis must therefore be embedded in a Cartesian crystal frame, and that
embedding is a convention.

An [orientation](OrientationDefinition_py.html) maps the crystal frame to a specimen frame.
A specimen frame describes the sample, such as a measurement or rolling frame; it is not
the crystal frame discussed here. See [EBSD Reference Frame](EBSDReferenceFrame_py.html)
for specimen-frame calibration.

A second convention decides which physical lattice vectors are called $$\vec a$$, $$\vec b$$
and $$\vec c$$. That choice is treated in [Crystal Axes Alignment](SymmetryAlignment_py.html).

## Orthogonal Crystal Systems

In orthorhombic, tetragonal and cubic lattices, each direct axis is parallel to its
reciprocal counterpart. Once the lattice-axis names are fixed, the normalized direct
axes supply the Cartesian axes: $$\vec x\parallel\vec a$$, $$\vec y\parallel\vec b$$ and
$$\vec z\parallel\vec c$$.

MTEX's general defaults are $$X\parallel a^*$$ and $$Z\parallel c$$. For these orthogonal
lattices they reduce to the same alignment, so no special alignment appears in the
`crystalFrame` display.

## Trigonal and Hexagonal Crystal Frames

In the conventional hexagonal basis, $$\vec a$$ and $$\vec b$$ enclose $$120^\circ$$. At most
one can coincide with a Cartesian axis. Two common choices put $$\vec z$$ along $$\vec c$$
and then put either $$\vec x$$ or $$\vec y$$ along $$\vec a$$.

```python
cs_x2a = crystalFrame('321', [1.7, 1.7, 1.4], 'X||a', 'Z||c')
```

```python
plot(cs_x2a)
annotate(cs_x2a.aAxis, MarkerFaceColor='r', label='a', backgroundColor='w')
annotate(cs_x2a.bAxis, MarkerFaceColor='r', label='b', backgroundColor='w')
annotate(-vector3d.Y, MarkerFaceColor='green', label='-y', backgroundColor='w')
annotate(-vector3d.X, MarkerFaceColor='green', label='-x', backgroundColor='w')
```

<center class="mtex-figure"><img class="inline" src="figures/python/CrystalReferenceSystem-6.png"></center>

In this first plot, the red $$\vec a$$ marker lies at the right, opposite the green
$$-\vec x$$ marker at the left. This is the $$X\parallel a$$ alignment.

```python
cs_y2a = crystalFrame('321', [1.7, 1.7, 1.4], 'Y||a', 'Z||c')
```

```python
plot(cs_y2a)
annotate(cs_y2a.aAxis, MarkerFaceColor='r', label='a', backgroundColor='w')
annotate(cs_y2a.bAxis, MarkerFaceColor='r', label='b', backgroundColor='w')
annotate(-vector3d.Y, MarkerFaceColor='green', label='-y', backgroundColor='w')
annotate(-vector3d.X, MarkerFaceColor='green', label='-x', backgroundColor='w')
```

<center class="mtex-figure"><img class="inline" src="figures/python/CrystalReferenceSystem-8.png"></center>

The red lattice-axis markers stay in the same screen positions, but the green Cartesian
markers move. Each crystal frame supplies a plotting convention that lays out a crystal
plot by its lattice axes.

The [transformationMatrix](crystalFrame.transformationMatrix.html) between the two
frames exposes the Cartesian offset.

```python
frameOffset = angle(rotation.byMatrix(transformationMatrix(cs_x2a, cs_y2a))) / degree
frameOffset
```

```text
90
```

The measured offset is $$90^\circ$$. This is a relation between the two Cartesian crystal
frames, not a crystal-symmetry operation.

## A Plotting Convention Does Not Change the Frame

A *plotting convention* states how a reference frame is laid out on screen. Changing it
moves the markers on the page, but does not change the frame basis, the lattice, or any
orientation.

```python
cs_y2a.how2plot.east = cs_y2a.bAxis
```

```python
plot(cs_y2a)
annotate(cs_y2a.aAxis, MarkerFaceColor='r', label='a', backgroundColor='w')
annotate(cs_y2a.bAxis, MarkerFaceColor='r', label='b', backgroundColor='w')
annotate(-vector3d.Y, MarkerFaceColor='green', label='-y', backgroundColor='w')
annotate(-vector3d.X, MarkerFaceColor='green', label='-x', backgroundColor='w')
```

<center class="mtex-figure"><img class="inline" src="figures/python/CrystalReferenceSystem-11.png"></center>

The $$\vec b$$ marker now points east and the $$\vec a$$ marker has moved. Only the screen
layout changed; the $$90^\circ$$ frame offset above remains the same.

## What the Crystal-Frame Choice Changes

The lattice and its indexed geometry do not change, but their Cartesian coordinates do.
Against fixed Cartesian axes, the same indexed quartz shape is therefore expressed
differently in the two frames.

```python
cS_x2a = crystalShape.quartz(cs_x2a)
```

```python
plot(cS_x2a, colored=True)
hold(True)
arrow3d(0.6 * cat(vector3d.X, vector3d.Y, vector3d.Z), labeled=True)
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/CrystalReferenceSystem-13.png"></center>

In the $$X\parallel a$$ frame, compare the coloured faces with the fixed black $$\vec x$$,
$$\vec y$$, $$\vec z$$ arrows.

```python
cS_y2a = crystalShape.quartz(cs_y2a)
```

```python
plot(cS_y2a, colored=True)
hold(True)
arrow3d(0.6 * cat(vector3d.X, vector3d.Y, vector3d.Z), labeled=True)
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/CrystalReferenceSystem-15.png"></center>

In the $$Y\parallel a$$ frame, the same indexed faces occupy different Cartesian
positions. The crystal morphology has not changed; only its numerical description
relative to the black arrows has changed.

## Euler Angles Depend on the Crystal Frame

Euler angles parameterize the map between Cartesian crystal and specimen frames. The
same three numbers therefore describe different physical orientations when the crystal
frame changes. The two calls below state the Bunge convention explicitly.

```python
ori_x2a = orientation.byEuler(0, 0, 0, 'Bunge', cs_x2a)
ori_y2a = orientation.byEuler(0, 0, 0, 'Bunge', cs_y2a)
```

```python
newMtexFigure(innerPlotSpacing=20)
plotPDF(ori_x2a, Miller(1, 0, 0, cs_x2a), MarkerSize=20)

nextAxis()
plotPDF(ori_y2a, Miller(1, 0, 0, cs_y2a), MarkerSize=20)
```

<center class="mtex-figure"><img class="inline" src="figures/python/CrystalReferenceSystem-17.png"></center>

The same indexed pole produces a pattern turned by $$30^\circ$$. This is the
crystallographic consequence of assigning the same Euler triplet in two different
crystal frames.

When the orientations are compared, MTEX reports that it reconciles the differing
frames. The returned value is the smallest difference after applying the `321` crystal
symmetry, not the raw frame offset.

```python
symmetryReducedDifference = angle(ori_x2a, ori_y2a) / degree
symmetryReducedDifference
```

```text

  The involved symmetries have different reference systems
  1: 321, X||a, Y||b*, Z||c
  2: 321, X||b*, Y||a, Z||c
  I'm going to transform the data from the first one to the second one

30.0000
```

The symmetry-reduced difference is $$30^\circ$$, while the underlying frame offset is
$$90^\circ$$. Inspecting only symmetry-reduced angles can therefore hide which convention
caused an error.

## Re-expressing Data in Another Frame

A *frame change* re-expresses the same physical object in another reference frame. It
leaves the object itself untouched and is distinct from rotating it. For orientations,
[transformReferenceFrame](orientation.transformReferenceFrame.html) performs that change
explicitly.

```python
oriConverted = ori_x2a.transformReferenceFrame(cs_y2a)
oriConverted
```

```text
orientation (321 → y↑→x)
  Bunge Euler angles in degree
  phi1  Phi  phi2
   270    0     0
```

The converted Bunge angles are $$(270^\circ,0^\circ,0^\circ)$$. They differ from the input
because the same physical orientation is now expressed in a crystal frame offset by
$$90^\circ$$.

The indexed direction must nevertheless point to the same specimen direction before and
after the frame change.

```python
sameSpecimenDirection = angle(ori_x2a * Miller(1, 0, 0, cs_x2a, 'uvw'), oriConverted * Miller(1, 0, 0, cs_y2a, 'uvw')) < 1e-5 * degree
sameSpecimenDirection
```

```text
True
```

The logical result is true. The numerical description changed, but the physical
direction did not.

## Triclinic and Monoclinic Crystal Frames

A general triclinic or monoclinic lattice has no complete orthogonal triad of direct
axes. A Cartesian frame is commonly fixed by aligning one axis with a direct-lattice
direction and another with a reciprocal axis. The reciprocal axis is perpendicular to
the other two direct axes.

The following two alignments use the same lattice metric. Their displays make the
convention part of the audit trail.

```python
cs_aStar2x = crystalFrame('-1', [8.290, 12.966, 7.151], np.array([91.18, 116.31, 90.14]) * degree, 'X||a*', 'Y||b',
                          mineral='An0 Albite 2016')
cs_aStar2x
```

```text
crystalFrame (⊙c*→b)
  mineral           : An0 Albite 2016
  symmetry          : 1̅
  elements          : 2
  a, b, c           : 8.29, 12.97, 7.151
  alpha, beta, gamma: 91.18°, 116.3°, 90.14°
  reference frame   : X||a*, Y||b
```

The first summary reports $$X\parallel a^*$$ and $$Y\parallel b$$.

```python
cs_a2x = crystalFrame('-1', [8.290, 12.966, 7.151], np.array([91.18, 116.31, 90.14]) * degree, 'X||a', 'Z||c*',
                      mineral='An0 Albite 2016')
cs_a2x
```

```text
crystalFrame (⊙c*→b)
  mineral           : An0 Albite 2016
  symmetry          : 1̅
  elements          : 2
  a, b, c           : 8.29, 12.97, 7.151
  alpha, beta, gamma: 91.18°, 116.3°, 90.14°
  reference frame   : X||a, Z||c*
```

The second summary reports $$X\parallel a$$ and $$Z\parallel c^*$$. Whenever orientations
or tensor components come from another source, record this alignment with the values.
A matching point group alone is not enough.

## References

* U. Shmueli, [Reciprocal space in crystallography](https://doi.org/10.1107/97809553602060000549),
  _International Tables for Crystallography B_, ch. 1.1, 2006, constructs Cartesian
  bases from direct and reciprocal lattice vectors.
* D. Rowenhorst et al., [Consistent representations of and conversions between 3D rotations](https://doi.org/10.1088/0965-0393/23/8/083501),
  _Modelling and Simulation in Materials Science and Engineering_ 23, 083501, 2015,
  explains why frame and rotation conventions must be stated explicitly.
* J. F. Nye, [Physical Properties of Crystals: Their Representation by Tensors and Matrices](https://search.worldcat.org/title/11114089),
  corrected paperback ed., Oxford University Press, 1985, develops Cartesian tensor
  components and crystallographic symmetry.
* [ASTM E82/E82M-14(2019)](https://doi.org/10.1520/E0082_E0082M-14R19) defines a
  measured crystal orientation relative to specimen geometry.

## Next

[Crystal Axes Alignment](SymmetryAlignment_py.html) shows how published data are converted
when sources name or permute lattice axes differently.
[Orientations as Coordinate Transforms](DefinitionAsCoordinateTransform_py.html) then
develops the map from a crystal frame to a specimen frame.
[Importing Tensor Data](TensorImport_py.html) applies the same audit to published component
tables.

## Technical Details

A crystal frame is an interned handle: two frames of one lattice and alignment are the
same object, and the alignment string of the display is derived from the basis, not
stored. Comparing orientations in differently aligned frames of one group re-expresses
the first in the frame of the second and says so, as MATLAB's `ensureCS` does; frames of
different groups or metrics are refused.
{% endraw %}
