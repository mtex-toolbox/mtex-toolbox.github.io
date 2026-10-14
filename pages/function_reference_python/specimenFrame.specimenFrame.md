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
the reference frame a sample is expressed in

## Syntax

```python
specimenFrame(name=None, *args, axesNames=('X', 'Y', 'Z'), how2plot=None, intern=True, basis=None)
```

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

## Used on

[OrientationDefinition](OrientationDefinition_py.html), [OrientationFibre](OrientationFibre_py.html), [OrientationSymmetry](OrientationSymmetry_py.html), [OrientationVisualizationSections](OrientationVisualizationSections_py.html), [SpecimenSymmetry](SpecimenSymmetry_py.html), [DetectionOfSampleSymmetry](DetectionOfSampleSymmetry_py.html), [EulerAngleSections](EulerAngleSections_py.html), [ODFImport](ODFImport_py.html), [ODFModeling](ODFModeling_py.html), [ODFPlot](ODFPlot_py.html), [RadialODFs](RadialODFs_py.html), [PoleFigureRefinement](PoleFigureRefinement_py.html)

MATLAB's [specimenFrame.specimenFrame](specimenFrame.specimenFrame.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames.py#L836">source</a></font>
{% endraw %}
