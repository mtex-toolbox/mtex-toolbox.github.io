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

the graph of the grains for a parent grain reconstruction, job.graph; MATLAB's calcGraph of
parentGrainReconstructor

## Syntax

<div class="mx-form" markdown="1">

```python
job.calcGraph()
```

The default probabilities.

</div>

<div class="mx-form" markdown="1">

```python
job.calcGraph(threshold=2.5*degree, tol=2.5*degree)
```

Another misfit at probability 1/2.

</div>

<div class="mx-form" markdown="1">

```python
job.calcGraph(c2c=True)
```

The child to child boundaries only.

</div>

## Description

A node per grain, and between neighbouring grains the probability that the misfit of their
boundary to the orientation relationship still means one parent: a cumulative Gaussian of
the misfit with the mean threshold and the spread tol. The child to child and the parent to
child boundaries are both used unless one of them is asked for. The job is changed in place.

## Input

| `job` | parentGrainReconstructor with its orientation relationship job.p2c |

## Keywords

| keyword | default | description |
|---|---|---|
| `threshold` | `2*degree` | the misfit at which the probability is 1/2 |
| `tol` | `1.5*degree` | the range about threshold over which the probability goes from 1 to 0 |
| `p2c` | `False` | the parent to child boundaries only |
| `c2c` | `False` | the child to child boundaries only |

## See also

[parentGrainReconstructor.clusterGraph](parentGrainReconstructor.clusterGraph_py.html), [parentGrainReconstructor.calcGBFit](parentGrainReconstructor.calcGBFit_py.html), [parentGrainReconstructor.calcVariantGraph](parentGrainReconstructor.calcVariantGraph_py.html), [GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html)

## Used on

[GrainGraphBasedReconstruction](GrainGraphBasedReconstruction_py.html)

MATLAB's [parentGrainReconstructor.calcGraph](parentGrainReconstructor.calcGraph.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/variantgraph.py#L35">source</a></font>
{% endraw %}
