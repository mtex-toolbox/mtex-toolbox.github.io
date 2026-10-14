---
title: 'specimenFrame.specimenFrame'
sidebar: function_reference_sidebar
permalink: specimenFrame.specimenFrame_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: specimenFrame.specimenFrame.html
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
| `axesNames` | `('X', 'Y', 'Z')` | the names of the three axes |
| `how2plot` | `None` | the plottingConvention of the frame |
| `intern` | `True` | register the frame with the session |
| `basis` | `None` | vector3d, the basis vectors in canonical coordinates |

## Output

| `ss` | specimenFrame |

## See also

[crystalFrame](crystalFrame_index_py.html), [referenceFrame](referenceFrame_index_py.html), [plottingConvention](plottingConvention_index_py.html), [SpecimenSymmetry](SpecimenSymmetry_py.html)

## Used on

[OrientationDefinition](OrientationDefinition_py.html), [OrientationFibre](OrientationFibre_py.html), [OrientationSymmetry](OrientationSymmetry_py.html), [OrientationVisualizationSections](OrientationVisualizationSections_py.html), [SpecimenSymmetry](SpecimenSymmetry_py.html), [DetectionOfSampleSymmetry](DetectionOfSampleSymmetry_py.html), [EulerAngleSections](EulerAngleSections_py.html), [ODFImport](ODFImport_py.html), [ODFModeling](ODFModeling_py.html), [ODFPlot](ODFPlot_py.html), [RadialODFs](RadialODFs_py.html), [PoleFigureRefinement](PoleFigureRefinement_py.html)

MATLAB's [specimenFrame.specimenFrame](specimenFrame.specimenFrame.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames.py#L1059">source</a></font>
{% endraw %}
