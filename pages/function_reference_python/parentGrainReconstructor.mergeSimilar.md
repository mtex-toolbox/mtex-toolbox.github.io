---
title: 'parentGrainReconstructor.mergeSimilar'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.mergeSimilar_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.mergeSimilar.html
status: Reference
---
{% raw %}
A method of [parentGrainReconstructor](parentGrainReconstructor_index_py.html).

job.mergeSimilar(threshold=7.5*degree): neighbouring grains of one phase whose mean
orientations are within the threshold become one; job.grains.clusterSize counts the
prior grains in each

## Syntax

```python
parentGrainReconstructor.mergeSimilar(self, threshold=5*degree)
```

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [TiBetaReconstruction](TiBetaReconstruction_py.html), [TriplePointBasedReconstruction](TriplePointBasedReconstruction_py.html)

MATLAB's [parentGrainReconstructor.mergeSimilar](parentGrainReconstructor.mergeSimilar.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L806">source</a></font>
{% endraw %}
