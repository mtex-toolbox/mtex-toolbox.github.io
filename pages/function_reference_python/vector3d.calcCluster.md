---
title: 'vector3d.calcCluster'
sidebar: function_reference_sidebar
permalink: vector3d.calcCluster_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.calcCluster.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the clusters of directions or orientations: one cluster id per element, counted from
zero, and the centre of every cluster

## Syntax

<div class="mx-form" markdown="1">

```python
cId, center = calcCluster(v)
```

Directions by CLASSIX.

</div>

<div class="mx-form" markdown="1">

```python
cId, center = calcCluster(ori)
```

Orientations by the modes of their density.

</div>

<div class="mx-form" markdown="1">

```python
cId, center = calcCluster(ori, method='classix', radius=0.1, minPoints=15)
```

Orientations by CLASSIX.

</div>

<div class="mx-form" markdown="1">

```python
cId, center = calcCluster(ori, method='odf', halfwidth=3*degree, numCluster=5)
```

The five largest modes.

</div>

<div class="mx-form" markdown="1">

```python
cId, center = calcCluster(ori, method='hierarchical', maxAngle=15*degree)
```

Merged until the centres are 15 degree apart.

</div>

<div class="mx-form" markdown="1">

```python
cId, center = calcCluster(v, method='hierarchical', numCluster=5)
```

Merged until five clusters are left.

</div>

## Description

Three methods. CLASSIX, the default for directions, sorts the points along their first
principal axis, groups them within a radius and merges the groups whose centres are close;
directions are clustered on their coordinates, axes (antipodal) on the rank one tensor
that identifies v with -v, orientations on the embedding that carries the symmetry. The
density method, the default for orientations, computes the kernel density of the
orientations and follows every orientation uphill to its mode; the largest modes are the
centres, and an orientation further from its centre than twice the mean angle gets no
cluster, NaN in cId. The hierarchical method merges the closest pair of centres, their
mean weighted by the points behind them, until numCluster clusters are left or the
closest centres are more than maxAngle apart; more than 1000 orientations are binned on a
grid of the resolution first.

The centres are the means of the clusters, symmetry reduced for orientations and axis
means for antipodal directions; cId has the shape of the input.

## Input

| `v` | vector3d, the directions |
| `ori` | orientation, the orientations |

## Keywords

| keyword | default | description |
|---|---|---|
| `method` | `None` | 'classix' (default for directions), 'odf' (default for orientations, the modes of the density) or 'hierarchical'; may also be given positionally |
| `radius` | `None` | the radius of the CLASSIX groups, in the scaled coordinates; by default estimated from the distance to the tenth nearest neighbour |
| `minPoints` | `None` | the smallest cluster of CLASSIX, smaller ones are dissolved into the nearest larger one; by default one percent of the points |
| `mergeScale` | `1.5` | CLASSIX merges groups whose centres are closer than mergeScale times the radius |
| `numCluster` | `None` | the number of clusters of the hierarchical method (2 if neither it nor maxAngle is given), or the number of modes the density method keeps (at most 20) |
| `maxAngle` | `None` | the hierarchical method stops when the closest centres are further apart |
| `halfwidth` | `5*degree` | the halfwidth of the kernel of the density method |
| `weights` | `None` | a weight per element, for the density and the hierarchical method |
| `resolution` | `2.5*degree` | the grid the hierarchical method bins more than 1000 orientations on |
| `verbose` | `False` | accepted for MATLAB's 'silent'; nothing is reported |

## Output

| `cId` | ndarray of ints, the cluster of every element counted from zero, a float array with NaN for the orientations the density method leaves out |
| `center` | vector3d or orientation, the centre of every cluster |

## References

- X. Chen, S. Guettel, Fast and explainable clustering based on sorting, arXiv:2202.01456 (2022)

## See also

[classix](classix_py.html), [calcComponents](SO3Fun.calcComponents_py.html), [calcDensity](calcDensity_py.html), [ClusterDemo](ClusterDemo_py.html)

MATLAB's [vector3d.calcCluster](vector3d.calcCluster.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/cluster.py#L194">source</a></font>
{% endraw %}
