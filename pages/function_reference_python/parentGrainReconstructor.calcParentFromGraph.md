---
title: 'parentGrainReconstructor.calcParentFromGraph'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.calcParentFromGraph_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.calcParentFromGraph.html
status: Reference
---
{% raw %}
A method of [parentGrainReconstructor](parentGrainReconstructor_index_py.html).

job.calcParentFromGraph(): every component of job.graph of more than one grain gives
its child grains the parent orientation that fits them together, or fits the parent
grains among them; job.grains.fit is the misfit of every grain to it and
job.grains.clusterSize the size of its component

## Syntax

```python
parentGrainReconstructor.calcParentFromGraph(job)
```

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html)

MATLAB's [parentGrainReconstructor.calcParentFromGraph](parentGrainReconstructor.calcParentFromGraph.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/variantgraph.py#L161">source</a></font>
{% endraw %}
