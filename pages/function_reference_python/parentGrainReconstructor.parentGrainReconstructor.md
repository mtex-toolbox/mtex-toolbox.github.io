---
title: 'parentGrainReconstructor.parentGrainReconstructor'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.parentGrainReconstructor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.parentGrainReconstructor.html
status: Reference
---
{% raw %}
job = parentGrainReconstructor(ebsd, grains, p2c)

## Syntax

```python
parentGrainReconstructor(ebsd, grains=None, p2c=None, useBoundaryOrientations=False, reportFit=True)
```

The state of a parent grain reconstruction: the map and the grains it starts from
(ebsdPrior, grainsPrior), the orientation relationship p2c, the grains after every step
taken so far (grains) and which of them every prior grain went into (mergeId, the id of
the current grain per prior grain). Without grains the map is segmented at 3 degrees;
without p2c the phases are guessed, the most frequent indexed one the child and the
rarest the parent, and job.p2c is set afterwards. The parent frame is added to the phase
lists of the job's copies when the map carries only the child. With
useBoundaryOrientations a pair of grains votes with the means of their pixels along the
boundary they share rather than with the grain means.

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [OrientationRelationshipFit](OrientationRelationshipFit_py.html), [TiBetaReconstruction](TiBetaReconstruction_py.html), [TriplePointBasedReconstruction](TriplePointBasedReconstruction_py.html)

MATLAB's [parentGrainReconstructor.parentGrainReconstructor](parentGrainReconstructor.parentGrainReconstructor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L245">source</a></font>
{% endraw %}
