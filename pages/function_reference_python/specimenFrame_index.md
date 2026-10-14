---
title: 'The class specimenFrame'
sidebar: function_reference_sidebar
permalink: specimenFrame_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the reference frame a sample is expressed in

```python
specimenFrame()                 the session default frame
specimenFrame('mmm')            the session frame in that sample symmetry
specimenFrame(pC)               the session frame drawn that way
specimenFrame(otherFrame)       that frame, claiming no symmetry
specimenFrame('rolling', axesNames=('RD', 'TD', 'ND'), how2plot='y←↑x')   a fresh named frame
specimenFrame.specimen, .measurement, .rolling, .geological, .default   the named session frames
```

A specimen frame has no lattice; a point group on it is a claim about a function, never
about a direction (MATLAB ADR 0008 rule 10).

## Members

| | |
|---|---|
| [char](specimenFrame.char_py.html) | the name or the convention, the point group after it when there is one: y↑→x (mmm) |
| [frameFor](specimenFrame.frameFor_py.html) | the session frame carrying a convention: the default when it already does, otherwise a fork of it with that convention, registered |
| [makeDefault](specimenFrame.makeDefault_py.html) | makes this frame the session's default frame, the one supplying the default plotting convention |
| [named](specimenFrame.named_py.html) | the interned session instance of a named frame, constructed on first use with its seed convention and kept in the session's name map |
| [specimenFrame](specimenFrame.specimenFrame_py.html) | the reference frame a sample is expressed in |
| [specimenSymmetry](specimenSymmetry.specimenSymmetry_py.html) | the reference frame a sample is expressed in |

## Used on

[OrientationDefinition](OrientationDefinition_py.html), [OrientationFibre](OrientationFibre_py.html), [OrientationSymmetry](OrientationSymmetry_py.html), [OrientationVisualizationSections](OrientationVisualizationSections_py.html), [SpecimenSymmetry](SpecimenSymmetry_py.html), [DetectionOfSampleSymmetry](DetectionOfSampleSymmetry_py.html), [EulerAngleSections](EulerAngleSections_py.html), [ODFImport](ODFImport_py.html), [ODFModeling](ODFModeling_py.html), [ODFPlot](ODFPlot_py.html), [RadialODFs](RadialODFs_py.html), [PoleFigureRefinement](PoleFigureRefinement_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames.py#L836">source</a></font>
{% endraw %}
