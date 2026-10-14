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

<div class="mx-form" markdown="1">

```python
r = knnRadius(X)
```

The median distance to the tenth neighbour.

</div>

<div class="mx-form" markdown="1">

```python
r = knnRadius(X, k=5)
```

To the fifth neighbour.

</div>

<div class="mx-form" markdown="1">

```python
r = knnRadius(X, sub=500)
```

Over a subsample of 500 points.

</div>

## Description

The neighbours are searched among all points, the distances taken at a subsample spread
evenly over the list. A list of k + 1 points or fewer gives 1.

## Input

| `X` | (n, d) array, the points |

## Keywords

| keyword | default | description |
|---|---|---|
| `k` | `10` | the neighbour whose distance is taken |
| `sub` | `1500` | the number of points the median is taken over; a shorter list is taken whole |

## Output

| `r` | float, the median distance |

## See also

[calcCluster](orientation.calcCluster_py.html), [classix](classix_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/cluster.py#L163">source</a></font>
{% endraw %}
