---
title: 'triplePointList.triplePointList'
sidebar: function_reference_sidebar
permalink: triplePointList.triplePointList_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: triplePointList.triplePointList.html
status: Reference
---
{% raw %}
the triple points of a boundary: the vertices where three grains meet, each with its three
grains, their phases, the three boundary segments and the angles between them

## Syntax

```python
tP = grains.triplePoints
tP('Iron bcc', 'Iron bcc', 'Iron bcc')
```

## Signature

```python
triplePointList(V, grainId, phaseId, boundaryId, angles, CSList, plane, frame, vertexId=None)
```

MATLAB's [triplePointList.triplePointList](triplePointList.triplePointList.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L529">source</a></font>
{% endraw %}
