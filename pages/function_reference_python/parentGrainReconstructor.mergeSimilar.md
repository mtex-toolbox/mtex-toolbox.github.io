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

neighbouring grains of similar orientation merged; MATLAB's
parentGrainReconstructor.mergeSimilar

## Syntax

<div class="mx-form" markdown="1">

```python
job.mergeSimilar()
```

Within 5 degree.

</div>

<div class="mx-form" markdown="1">

```python
job.mergeSimilar(threshold=7.5*degree)
```

Within 7.5 degree.

</div>

## Description

Neighbouring grains of one phase whose mean orientations are within the threshold become
one; job.grains and job.mergeId follow the merge, and job.grains.clusterSize counts the
prior grains in each.

## Input

| `job` | parentGrainReconstructor |

## Keywords

| keyword | default | description |
|---|---|---|
| `threshold` | `5*degree` | the misorientation angle up to which grains are merged |

## See also

[parentGrainReconstructor.mergeInclusions](parentGrainReconstructor.mergeInclusions_py.html), [grain2d.merge](grain2d.merge_py.html)

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [TiBetaReconstruction](TiBetaReconstruction_py.html), [TriplePointBasedReconstruction](TriplePointBasedReconstruction_py.html)

MATLAB's [parentGrainReconstructor.mergeSimilar](parentGrainReconstructor.mergeSimilar.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L1026">source</a></font>
{% endraw %}
