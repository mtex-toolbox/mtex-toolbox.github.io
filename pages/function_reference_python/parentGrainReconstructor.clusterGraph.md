---
title: 'parentGrainReconstructor.clusterGraph'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.clusterGraph_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.clusterGraph.html
status: Reference
---
{% raw %}
A method of [parentGrainReconstructor](parentGrainReconstructor_index_py.html).

the graph of a parent grain reconstruction broken into clusters, one per parent grain;
MATLAB's clusterGraph of parentGrainReconstructor

## Syntax

The grain graph by MCL:

```python
job.clusterGraph()
```

Larger for smaller clusters:

```python
job.clusterGraph(inflationPower=1.6)
```

A grain graph, from calcGraph, is clustered by mclComponents, so that its components are
the parent grains, for calcParentFromGraph or mergeByGraph. A variant graph, from
calcVariantGraph, is clustered by clusterVariantGraph, which takes the remaining keyword
arguments and an inflation power of 1.05 by default. The job is changed in place.

## Input

| | |
|---|---|
| `job` | parentGrainReconstructor with job.graph |

## Output

| | |
|---|---|
| `job.graph` | the clustered graph |

## Keywords

| | default | |
|---|---|---|
| `inflationPower` | `None` | the inflation power of MCL, larger for smaller clusters; by default 1.6 for a grain graph, 1.05 for a variant graph |

## See also

[mclComponents](mclComponents_py.html), [parentGrainReconstructor.calcGraph](parentGrainReconstructor.calcGraph_py.html), [parentGrainReconstructor.calcParentFromGraph](parentGrainReconstructor.calcParentFromGraph_py.html), [parentGrainReconstructor.mergeByGraph](parentGrainReconstructor.mergeByGraph_py.html), [parentGrainReconstructor.clusterVariantGraph](parentGrainReconstructor.clusterVariantGraph_py.html), [GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html)

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html)

MATLAB's [parentGrainReconstructor.clusterGraph](parentGrainReconstructor.clusterGraph.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/variantgraph.py#L119">source</a></font>
{% endraw %}
