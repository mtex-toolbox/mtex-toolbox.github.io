---
title: 'parentGrainReconstructor.revert'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.revert_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.revert.html
status: Reference
---
{% raw %}
A method of [parentGrainReconstructor](parentGrainReconstructor_index_py.html).

the reconstruction undone, for all grains or those named; MATLAB's
parentGrainReconstructor.revert

## Syntax

Undo the whole reconstruction:

```python
job.revert()
```

Undo the grains a mask selects:

```python
job.revert(job.grains.fit > 5*degree)
```

Undo specific grains:

```python
job.revert(job.parentGrains[:5])
```

The grains named, a mask or positions into job.grains, or grains, are given back the phase
and the orientation of their prior grains; a grain merged of several comes apart into them,
the others stay merged. The votes and the variant graph are dropped.

## Input

| | |
|---|---|
| `job` | parentGrainReconstructor |
| `ind` | bool mask or positions into job.grains, or grain2d; all grains when omitted |

## See also

[parentGrainReconstructor.calcParentFromVote](parentGrainReconstructor.calcParentFromVote_py.html), [GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html)

## Signature

```python
parentGrainReconstructor.revert(self, ind=None)
```

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html)

MATLAB's [parentGrainReconstructor.revert](parentGrainReconstructor.revert.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/reconstruction.py#L1058">source</a></font>
{% endraw %}
