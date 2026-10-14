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

the variant graph of a parent grain reconstruction, job.graph; MATLAB's calcVariantGraph of
parentGrainReconstructor

## Syntax

<div class="mx-form" markdown="1">

```python
job.calcVariantGraph()
```

The default probabilities.

</div>

<div class="mx-form" markdown="1">

```python
job.calcVariantGraph(threshold=3.5*degree, tol=1.5*degree) # another misfit at probability 1/2
```

</div>

<div class="mx-form" markdown="1">

```python
job.calcVariantGraph(mergeSimilar=True)
```

Similar variants as one node.

</div>

<div class="mx-form" markdown="1">

```python
job.calcVariantGraph(c2c=True)
```

The child to child boundaries only.

</div>

## Description

The graph has a node per child grain and parent variant and one per parent grain. An edge
joins two nodes of neighbouring grains where they agree, weighted by the probability of the
agreement: a cumulative Gaussian of the misfit with the mean threshold and the spread tol.

Three kinds of boundaries give edges, all three unless some are asked for:

- c2c: two child grains, over every pair of their variants.
- p2c: a parent and a child grain, over the variants of the child that fit the parent.
- p2p: two parent grains, by their orientations.

When the job holds votes, every grain is restricted to its best variant. The job is
changed in place; clusterVariantGraph clusters the graph.

## Input

| `job` | parentGrainReconstructor with its orientation relationship job.p2c |

## Keywords

| keyword | default | description |
|---|---|---|
| `threshold` | `2*degree` | the misfit at which the probability is 1/2 |
| `tol` | `1.5*degree` | the range about threshold over which the probability goes from 1 to 0 |
| `p2c` | `False` | the parent to child boundaries |
| `p2p` | `False` | the parent to parent boundaries |
| `c2c` | `False` | the child to child boundaries |
| `mergeSimilar` | `False` | join the variants within 8 degrees of one another into one node |
| `diagonal` | `True` | put every node on the diagonal of the graph, the loops MCL needs |

## References

- R. Hielscher, T. Nyyssönen, F. Niessen, A.A. Gazder, The variant graph approach to improved parent grain reconstruction, Materialia 22 (2022) 101399

## See also

[parentGrainReconstructor.clusterVariantGraph](parentGrainReconstructor.clusterVariantGraph_py.html), [parentGrainReconstructor.calcParentFromVote](parentGrainReconstructor.calcParentFromVote_py.html), [parentGrainReconstructor.calcGraph](parentGrainReconstructor.calcGraph_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html)

## Used on

[MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [TiBetaReconstruction](TiBetaReconstruction_py.html)

MATLAB's [parentGrainReconstructor.calcVariantGraph](parentGrainReconstructor.calcVariantGraph.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/variantgraph.py#L335">source</a></font>
{% endraw %}
