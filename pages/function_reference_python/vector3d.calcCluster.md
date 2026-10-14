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

```python
vector3d.calcCluster(x, *args, method=None, radius=None, minPoints=None, mergeScale=1.5, numCluster=None, maxAngle=None, halfwidth=5*degree, weights=None, resolution=2.5*degree, verbose=False)
```

```python
cId, center = calcCluster(v)                                          directions by CLASSIX
cId, center = calcCluster(ori, method='classix', radius=0.1, minPoints=15)
cId, center = calcCluster(ori)                                        the modes of the density
cId, center = calcCluster(ori, method='hierarchical', maxAngle=15*degree)
cId, center = calcCluster(v, method='hierarchical', numCluster=5)
```

MATLAB's [vector3d.calcCluster](vector3d.calcCluster.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/cluster.py#L152">source</a></font>
{% endraw %}
