---
title: 'parentGrainReconstructor.mergeByGraph'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.mergeByGraph_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.mergeByGraph.html
status: Reference
---
{% raw %}
A method of [parentGrainReconstructor](parentGrainReconstructor_index_py.html).

the grains of every cluster of the graph merged into a parent grain; MATLAB's
mergeByGraph of parentGrainReconstructor

## Syntax

<div class="mx-form" markdown="1">

```python
job.mergeByGraph()
```

Merged where they fit within 5 degrees.

</div>

<div class="mx-form" markdown="1">

```python
job.mergeByGraph(threshold=3*degree)
```

A tighter fit.

</div>

## Description

The components of job.graph, after clusterGraph, are merged as a test first. For every
component of more than one grain the parent orientation is fitted: the mean of its parent
grains, the parent fitted to its child grains by calcParent, or the robust mean of both;
the misfit is the largest over its child grains. The components that fit within the
threshold become parent grains of that orientation, the others are left as they were. The
graph and the votes are removed; the job is changed in place.

## Input

| `job` | parentGrainReconstructor with a clustered job.graph |

## Keywords

| keyword | default | description |
|---|---|---|
| `threshold` | `5*degree` | the largest misfit of a component that is merged |

## Output

| `job.grains` | the reconstructed parent grains |

## See also

[parentGrainReconstructor.clusterGraph](parentGrainReconstructor.clusterGraph_py.html), [parentGrainReconstructor.calcParentFromGraph](parentGrainReconstructor.calcParentFromGraph_py.html), [calcParent](calcParent_py.html), [GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html)

MATLAB's [parentGrainReconstructor.mergeByGraph](parentGrainReconstructor.mergeByGraph.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/variantgraph.py#L208">source</a></font>
{% endraw %}
