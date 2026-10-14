---
title: 'parentGrainReconstructor.calcParentEBSD'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.calcParentEBSD_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.calcParentEBSD.html
status: Reference
---
{% raw %}
A method of [parentGrainReconstructor](parentGrainReconstructor_index_py.html).

parentEBSD = job.calcParentEBSD(): the map with the grain ids of the current grains
and every child pixel of a grain that is a parent now given the parent orientation of
its grain, its variant and packet id, and fit, its misfit to the variant; with exactOR
every pixel carries the parent its own orientation gives

## Syntax

```python
parentGrainReconstructor.calcParentEBSD(self, exactOR=False)
```

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [TiBetaReconstruction](TiBetaReconstruction_py.html)

MATLAB's [parentGrainReconstructor.calcParentEBSD](parentGrainReconstructor.calcParentEBSD.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L1046">source</a></font>
{% endraw %}
