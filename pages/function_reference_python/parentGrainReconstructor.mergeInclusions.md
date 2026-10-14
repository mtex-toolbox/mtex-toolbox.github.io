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

the inclusions merged into the parent grains around them; MATLAB's
parentGrainReconstructor.mergeInclusions

## Syntax

Every grain enclosed by a parent grain:

```python
job.mergeInclusions()
```

Only those of at most 50 pixels:

```python
job.mergeInclusions(maxSize=50)
```

The child and parent grains lying inside a parent grain, of at most maxSize pixels, become
part of it, with its orientation; job.grains and job.mergeId follow the merge.

## Input

| | |
|---|---|
| `job` | parentGrainReconstructor |

## Keywords

| | default | |
|---|---|---|
| `maxSize` | `inf` | the largest number of pixels of an inclusion that is merged |

## See also

[parentGrainReconstructor.mergeSimilar](parentGrainReconstructor.mergeSimilar_py.html), [grain2d.merge](grain2d.merge_py.html)

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [TiBetaReconstruction](TiBetaReconstruction_py.html), [TriplePointBasedReconstruction](TriplePointBasedReconstruction_py.html)

MATLAB's [parentGrainReconstructor.mergeInclusions](parentGrainReconstructor.mergeInclusions.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L1040">source</a></font>
{% endraw %}
