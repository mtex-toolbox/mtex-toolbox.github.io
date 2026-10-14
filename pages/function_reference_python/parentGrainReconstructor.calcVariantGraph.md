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

The default probabilities:

```python
job.calcVariantGraph()
```

```python
job.calcVariantGraph(threshold=3.5*degree, tol=1.5*degree) # another misfit at probability 1/2
```

Similar variants as one node:

```python
job.calcVariantGraph(mergeSimilar=True)
```

The child to child boundaries only:

```python
job.calcVariantGraph(c2c=True)
```

A node per child grain and parent variant and one per parent grain. An edge joins two
nodes of neighbouring grains where they agree: child to child over every pair of variants,
parent to child over the variants that fit the parent, parent to parent over their
orientations, with the probability of the agreement, a cumulative Gaussian of the misfit
with the mean threshold and the spread tol. All three kinds are used unless some are asked
for. When the job holds votes, every grain is restricted to its best variant. The job is
changed in place; clusterVariantGraph clusters the graph.

## Input

| | |
|---|---|
| `job` | parentGrainReconstructor with its orientation relationship job.p2c |

## Keywords

| | default | |
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
