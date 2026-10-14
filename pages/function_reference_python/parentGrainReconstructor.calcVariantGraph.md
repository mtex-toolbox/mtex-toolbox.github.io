---
title: 'parentGrainReconstructor.calcVariantGraph'
sidebar: function_reference_sidebar
permalink: parentGrainReconstructor.calcVariantGraph_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: parentGrainReconstructor.calcVariantGraph.html
status: Reference
---
{% raw %}
A method of [parentGrainReconstructor](parentGrainReconstructor_index_py.html).

job.calcVariantGraph(threshold=3.5*degree, tol=1.5*degree): job.graph, the variant
graph: a node per child grain and parent variant and one per parent grain, and an edge
where two neighbours agree - child to child over every pair of variants, parent to child
over the variants that fit the parent, parent to parent over their orientations - with
the probability of the agreement. mergeSimilar joins the variants within 8 degrees of
one another into one node; votes of the job restrict every grain to its best variant

## Syntax

```python
parentGrainReconstructor.calcVariantGraph(job, threshold=2*degree, tol=1.5*degree, p2c=False, p2p=False, c2c=False, mergeSimilar=False, diagonal=True)
```

## Used on

[MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [TiBetaReconstruction](TiBetaReconstruction_py.html)

MATLAB's [parentGrainReconstructor.calcVariantGraph](parentGrainReconstructor.calcVariantGraph.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/variantgraph.py#L254">source</a></font>
{% endraw %}
