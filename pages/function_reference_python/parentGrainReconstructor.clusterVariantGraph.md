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

the variant graph clustered by the MCL algorithm generalised to the variants of a grain, the
votes for the parent orientations; MATLAB's clusterVariantGraph of parentGrainReconstructor

## Syntax

Job.votes from the variant graph:

```python
job.clusterVariantGraph()
```

Similar variants share their score:

```python
job.clusterVariantGraph(includeSimilar=True)
```

The graph built first with these options:

```python
job.clusterVariantGraph(threshold=3*degree)
```

The parents from the votes:

```python
job.calcParentFromVote(minProb=0.5)
```

The variant graph is built by calcVariantGraph first when the job has none, with the
keywords left over. Then numIter steps of MCL: the expansion, the inflation by
inflationPower and the pruning below cutOff, the rows of the nodes of one grain normalised
together. The score of every node of a child grain whose cluster has at least minCluster
members becomes its vote, job.votes, the variants of every grain ordered by it. The graph is
removed unless keepGraph. The job is changed in place.

## Input

| | |
|---|---|
| `job` | parentGrainReconstructor with its orientation relationship job.p2c |

## Keywords

| | default | |
|---|---|---|
| `inflationPower` | `1.05` | the inflation power of MCL |
| `numIter` | `10` | the number of iterations |
| `cutOff` | `0.0001` | the entries below it are pruned in every iteration |
| `minCluster` | `4` | the least size of a cluster whose scores become votes |
| `includeSimilar` | `False` | a variant takes 0.9 of the score of the variants within 5 degrees |
| `mergeSimilar` | `False` | a variant takes the whole score of the variants within 5 degrees |
| `pseudoDiagonal` | `True` | keep the links between the variants of one child grain |
| `sym` | `False` | make the graph symmetric in every iteration, the geometric mean of both directions |
| `keepGraph` | `False` | keep the clustered graph in job.graph |

## References

- R. Hielscher, T. Nyyssönen, F. Niessen, A.A. Gazder, The variant graph approach to improved parent grain reconstruction, Materialia 22 (2022) 101399

## See also

[parentGrainReconstructor.calcVariantGraph](parentGrainReconstructor.calcVariantGraph_py.html), [parentGrainReconstructor.calcParentFromVote](parentGrainReconstructor.calcParentFromVote_py.html), [parentGrainReconstructor.clusterGraph](parentGrainReconstructor.clusterGraph_py.html), [MaParentGrainReconstruction](MaParentGrainReconstruction_py.html)

## Used on

[MaParentGrainReconstruction](MaParentGrainReconstruction_py.html), [TiBetaReconstruction](TiBetaReconstruction_py.html)

MATLAB's [parentGrainReconstructor.clusterVariantGraph](parentGrainReconstructor.clusterVariantGraph.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/variantgraph.py#L366">source</a></font>
{% endraw %}
