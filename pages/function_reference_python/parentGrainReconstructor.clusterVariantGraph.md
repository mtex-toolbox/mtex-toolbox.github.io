---
title: 'parentGrainReconstructor.clusterVariantGraph'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.clusterVariantGraph_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.clusterVariantGraph.html
status: Reference
---
{% raw %}
A method of [parentGrainReconstructor](parentGrainReconstructor_index_py.html).

job.clusterVariantGraph(includeSimilar=True): the variant graph (calcVariantGraph
first when there is none) clustered by MCL - expansion, inflation by inflationPower,
pruning below cutOff, the rows of every grain normalised together - over numIter steps;
the score of every node of a child grain whose cluster has minCluster members at least
becomes its vote, job.votes. includeSimilar lends a variant a tenth of the score of the
variants within 5 degrees, mergeSimilar all of it

## Syntax

```python
parentGrainReconstructor.clusterVariantGraph(job, inflationPower=1.05, numIter=10, cutOff=0.0001, minCluster=4, includeSimilar=False, mergeSimilar=False, pseudoDiagonal=True, sym=False, keepGraph=False, **graphOptions)
```

## Used on

[MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [TiBetaReconstruction](TiBetaReconstruction_py.html)

MATLAB's [parentGrainReconstructor.clusterVariantGraph](parentGrainReconstructor.clusterVariantGraph.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/variantgraph.py#L321">source</a></font>
{% endraw %}
