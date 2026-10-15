---
title: 'The class specimenFrame'
sidebar: function_reference_sidebar
permalink: specimenFrame_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: specimenFrame_index.html
status: Reference
---
{% raw %}
the reference frame a sample is expressed in, with the sample symmetry it claims

## Syntax

<div class="mx-form" markdown="1">

```python
ss = specimenFrame()
```

The session default frame.

</div>

<div class="mx-form" markdown="1">

```python
ss = specimenFrame('mmm')
```

The session frame in that sample symmetry.

</div>

<div class="mx-form" markdown="1">

```python
ss = specimenFrame('orthorhombic')
```

The same by the crystal system.

</div>

<div class="mx-form" markdown="1">

```python
ss = specimenFrame(pC)
```

The session frame drawn that way.

</div>

<div class="mx-form" markdown="1">

```python
ss = specimenFrame(otherFrame)
```

That frame, claiming no symmetry.

</div>

<div class="mx-form" markdown="1">

```python
ss = specimenFrame('rolling', axesNames=('RD', 'TD', 'ND'), how2plot='y←↑x')
```

A fresh named frame.

</div>

<div class="mx-form" markdown="1">

```python
ss = specimenFrame.rolling
```

A named session frame.

</div>

<div class="mx-form" markdown="1">

```python
ss = specimenFrame.rolling('mmm')
```

In a sample symmetry.

</div>

## Description

The named frames, specimenFrame.specimen (X, Y, Z), .measurement, .rolling (RD, TD, ND),
.geological and .default, are the session's instances, so that moving between specimen
frames is an explicit operation; naming a frame here makes a fresh one. A point group
symbol as the name is read as the group, a lookup of the session frame in that group. A
specimen frame has no lattice: a point group on it is a claim about a function, the sample
symmetry, never about a direction.

## Input

| `name` | a point group symbol or crystal system, the sample symmetry; or the name of a fresh frame; or a plottingConvention or another specimenFrame |

## Keywords

| keyword | default | description |
|---|---|---|
| `axesNames` |  | the names of the three axes |
| `how2plot` |  | the plottingConvention of the frame |
| `intern` |  | register the frame with the session |
| `basis` |  | vector3d, the basis vectors in canonical coordinates |

## Output

| `ss` | specimenFrame |

## See also

[crystalFrame](crystalFrame_index_py.html), [referenceFrame](referenceFrame_index_py.html), [plottingConvention](plottingConvention_index_py.html), [SpecimenSymmetry](SpecimenSymmetry_py.html)

## Members

| [char](specimenFrame.char_py.html) | the name or the convention, the point group after it when there is one: y↑→x (mmm) |
| [default](specimenFrame.default_py.html) | the frame that supplies the session default convention |
| [frameFor](specimenFrame.frameFor_py.html) | the session frame carrying a convention: the default when it already does, otherwise a fork of it with that convention, registered |
| [geological](specimenFrame.geological_py.html) | north, east, down of structural geology |
| [makeDefault](specimenFrame.makeDefault_py.html) | makes this frame the session's default frame, the one supplying the default plotting convention |
| [measurement](specimenFrame.measurement_py.html) | the sample surface frame of an Oxford instrument, drawn as its SEM images are |
| [named](specimenFrame.named_py.html) | the interned session instance of a named frame, constructed on first use with its seed convention and kept in the session's name map |
| [rolling](specimenFrame.rolling_py.html) | rolling, transverse and normal direction, RD north and TD west |
| [specimen](specimenFrame.specimen_py.html) | the generic specimen frame X, Y, Z - where an import lands and the session default |
| [specimenFrame](specimenFrame.specimenFrame_py.html) | the reference frame a sample is expressed in, with the sample symmetry it claims |
| [specimenSymmetry](specimenSymmetry.specimenSymmetry_py.html) | the reference frame a sample is expressed in, with the sample symmetry it claims |

## Used on

[OrientationDefinition](OrientationDefinition_py.html), [OrientationFibre](OrientationFibre_py.html), [OrientationSymmetry](OrientationSymmetry_py.html), [OrientationVisualizationSections](OrientationVisualizationSections_py.html), [SpecimenSymmetry](SpecimenSymmetry_py.html), [DetectionOfSampleSymmetry](DetectionOfSampleSymmetry_py.html), [EulerAngleSections](EulerAngleSections_py.html), [ODFImport](ODFImport_py.html), [ODFModeling](ODFModeling_py.html), [ODFPlot](ODFPlot_py.html), [RadialODFs](RadialODFs_py.html), [PoleFigureRefinement](PoleFigureRefinement_py.html)

MATLAB's [specimenFrame_index](specimenFrame_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames.py#L1150">source</a></font>
{% endraw %}
