---
title: 'parentGrainReconstructor.calcGBFit'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.calcGBFit_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.calcGBFit.html
status: Reference
---
{% raw %}
A method of [parentGrainReconstructor](parentGrainReconstructor_index_py.html).

fit, pairs = job.calcGBFit(): the misfit of every parent to child and child to child
boundary to the relationship, and the ids of the grains on either side; p2c or c2c
takes one kind alone

## Syntax

```python
parentGrainReconstructor.calcGBFit(self, p2c=False, c2c=False)
```

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html)

MATLAB's [parentGrainReconstructor.calcGBFit](parentGrainReconstructor.calcGBFit.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L617">source</a></font>
{% endraw %}
