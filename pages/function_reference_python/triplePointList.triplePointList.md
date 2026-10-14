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

<div class="mx-form" markdown="1">

```python
tP = grains.triplePoints
tP('Iron bcc', 'Iron bcc', 'Iron bcc')
```

</div>

## Input

| `V` | array of triple-point coordinates in the map plane |
| `grainId` | three grain ids at each junction |
| `phaseId` | three phase-list indices at each junction |
| `boundaryId` | indices of the three incident boundary segments |
| `angles` | three enclosed angles at each junction, in radians |
| `CSList` | phase frames |
| `plane` | coordinate system of the map plane |
| `frame` | specimen reference frame |
| `vertexId` | optional ids into the full boundary vertex table |

## Signature

<div class="mx-form" markdown="1">

```python
triplePointList(V, grainId, phaseId, boundaryId, angles, CSList, plane, frame, vertexId=None)
```

</div>

MATLAB's [triplePointList.triplePointList](triplePointList.triplePointList.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L685">source</a></font>
{% endraw %}
