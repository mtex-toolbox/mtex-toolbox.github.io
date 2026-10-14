---
title: 'knnRadius'
sidebar: function_reference_sidebar
permalink: knnRadius_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the median distance to the k-th nearest neighbour of a subsample, the radius CLASSIX suggests

## Syntax

The median distance to the tenth neighbour:

```python
r = knnRadius(X)
```

To the fifth neighbour:

```python
r = knnRadius(X, k=5)
```

Over a subsample of 500 points:

```python
r = knnRadius(X, sub=500)
```

The neighbours are searched among all points, the distances taken at a subsample spread
evenly over the list. A list of k + 1 points or fewer gives 1.

## Input

| | |
|---|---|
| `X` | (n, d) array, the points |

## Output

| | |
|---|---|
| `r` | float, the median distance |

## Keywords

| | default | |
|---|---|---|
| `k` | `10` | the neighbour whose distance is taken |
| `sub` | `1500` | the number of points the median is taken over; a shorter list is taken whole |

## See also

[calcCluster](orientation.calcCluster_py.html), [classix](classix_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/cluster.py#L163">source</a></font>
{% endraw %}
