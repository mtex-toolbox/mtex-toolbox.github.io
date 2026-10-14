---
title: 'parentGrainReconstructor.calcGraph'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.calcGraph_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.calcGraph.html
status: Reference
---
{% raw %}
A method of [parentGrainReconstructor](parentGrainReconstructor_index_py.html).

job.calcGraph(threshold=2.5*degree, tol=2.5*degree): job.graph, a node per grain
and between neighbours the probability that the misfit of their boundary to the
relationship still means one parent

## Syntax

```python
parentGrainReconstructor.calcGraph(job, threshold=2*degree, tol=1.5*degree, p2c=False, c2c=False)
```

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html)

MATLAB's [parentGrainReconstructor.calcGraph](parentGrainReconstructor.calcGraph.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/variantgraph.py#L35">source</a></font>
{% endraw %}
