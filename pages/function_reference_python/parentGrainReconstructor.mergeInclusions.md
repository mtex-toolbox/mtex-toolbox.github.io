---
title: 'parentGrainReconstructor.mergeInclusions'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.mergeInclusions_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.mergeInclusions.html
status: Reference
---
{% raw %}
A method of [parentGrainReconstructor](parentGrainReconstructor_index_py.html).

job.mergeInclusions(maxSize=50): the child and parent grains lying inside a parent
grain, below maxSize pixels, become part of it, with its orientation

## Syntax

```python
parentGrainReconstructor.mergeInclusions(self, maxSize=inf)
```

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [TiBetaReconstruction](TiBetaReconstruction_py.html), [TriplePointBasedReconstruction](TriplePointBasedReconstruction_py.html)

MATLAB's [parentGrainReconstructor.mergeInclusions](parentGrainReconstructor.mergeInclusions.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L813">source</a></font>
{% endraw %}
