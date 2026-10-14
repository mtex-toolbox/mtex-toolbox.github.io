---
title: 'orientation.calcCluster'
sidebar: function_reference_sidebar
permalink: orientation.calcCluster_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.calcCluster.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

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

The method decides how the clusters are found:

- 'classix', the default for directions: sorts the points along their first principal axis,
groups them within a radius and merges groups whose centres are close. Orientations are
clustered on their embedding, which respects the symmetry, antipodal directions on a form
that identifies v with -v.
- 'odf', the default for orientations: computes the kernel density and follows every
orientation uphill to its mode. The largest modes are the centres.
- 'hierarchical': merges the closest pair of centres until numCluster clusters are left or
the closest centres are more than maxAngle apart. More than 1000 orientations are first
binned on a grid of the given resolution.

The density method leaves some orientations without a cluster: those further from their
centre than twice the mean angle of the cluster and those whose mode is not among the centres
get NaN in cId. Elements that are NaN themselves get NaN in cId with every method, the others
are clustered without them; no elements give no clusters. The centres of 'odf' are the modes
of the density, those of the other methods the (weighted) means of the clusters. cId has the
shape of the input.

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
| `verbose` | `False` | report the progress of calcComponents (the density method) |

## Output

| `cId` | ndarray of ints, the cluster of every element counted from zero, a float array with NaN for the elements that are NaN and the orientations the density method leaves out |
| `center` | vector3d or orientation, the centre of every cluster |

## References

- X. Chen, S. Guettel, Fast and explainable clustering based on sorting, arXiv:2202.01456 (2022)

## See also

[classix](classix_py.html), [calcComponents](SO3Fun.calcComponents_py.html), [calcDensity](calcDensity_py.html), [ClusterDemo](ClusterDemo_py.html)

MATLAB's [orientation.calcCluster](orientation.calcCluster.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/cluster.py#L194">source</a></font>
{% endraw %}
