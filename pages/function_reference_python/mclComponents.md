---
title: 'mclComponents'
sidebar: function_reference_sidebar
permalink: mclComponents_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mclComponents.html
status: Reference
---
{% raw %}
the components of a weighted graph by Markov clustering, MCL; MATLAB's mclComponents

## Syntax

Until the columns settle:

```python
A = mclComponents(job.graph, 1.6)
```

At most four iterations:

```python
A = mclComponents(job.graph, 1.6, maxIter=4)
```

The steps of S. van Dongen's algorithm repeated until the columns settle: the expansion
A @ A, the inflation of every entry to the power p, the entries up to 1e-4 pruned and the
columns normalised. Before, the entries up to 1e-4 are pruned, a graph with no symmetric
entry made symmetric and, where the diagonal is empty, ones put on it. The larger p, the
smaller the clusters; the nonzero pattern of the result joins the nodes of one cluster.

## Input

| | |
|---|---|
| `A` | sparse adjacency matrix, the weights between 0 and 1 |
| `p` | the inflation power |

## Output

| | |
|---|---|
| `A` | sparse matrix of the clusters |

## Keywords

| | default | |
|---|---|---|
| `maxIter` | `inf` | the iteration bound; the loop stops after maxIter - 1 steps |

## References

- S. van Dongen, Graph clustering by flow simulation, PhD thesis, University of Utrecht (2000)

## See also

[parentGrainReconstructor.clusterGraph](parentGrainReconstructor.clusterGraph_py.html), [GrainReconstructionMCL](GrainReconstructionMCL_py.html)

## Used on

[MaParentGrainReconstructionAdvanced](MaParentGrainReconstructionAdvanced_py.html)

MATLAB's [mclComponents](mclComponents.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/variantgraph.py#L66">source</a></font>
{% endraw %}
