---
title: 'classix'
sidebar: function_reference_sidebar
permalink: classix_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
CLASSIX, fast and explainable clustering based on sorting: one cluster label per row of
X, counted from zero

## Syntax

Every row its cluster:

```python
labels = classix(X, radius)
```

No cluster below 10 points, small groups kept apart:

```python
labels = classix(X, radius, minPts=10, mergeTiny=False)
```

The data are centred, scaled by their median norm and sorted along their first principal
axis. In that order every point not yet grouped starts a group of the points within the
radius, groups whose starting points lie within mergeScale times the radius are merged
into clusters, and a cluster of fewer than minPts points is dissolved, its groups joining
the nearest group of a large enough cluster.

## Input

| | |
|---|---|
| `X` | ndarray (n, d), a point per row; a vector is a column |
| `radius` | the radius of the groups, in the scaled coordinates |

## Output

| | |
|---|---|
| `labels` | ndarray of n ints, the cluster of every row counted from zero |

## Keywords

| | default | |
|---|---|---|
| `minPts` | `1` | the smallest cluster; smaller ones are dissolved into their neighbours |
| `mergeScale` | `1.5` | groups whose centres are closer than mergeScale times the radius are merged |
| `mergeTiny` | `True` | whether groups of fewer than minPts points take part in the merging |

## References

- X. Chen, S. Guettel, Fast and explainable clustering based on sorting, arXiv:2202.01456 (2022)

## See also

[calcCluster](orientation.calcCluster_py.html), [ClusterDemo](ClusterDemo_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/cluster.py#L36">source</a></font>
{% endraw %}
