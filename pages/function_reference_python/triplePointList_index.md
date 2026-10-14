---
title: 'The class triplePointList'
sidebar: function_reference_sidebar
permalink: triplePointList_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: triplePointList_index.html
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

## Members

| [allV](triplePointList.allV_py.html) | the positions of the triple points as framed points of the specimen |
| [hasPhase](triplePointList.hasPhase_py.html) | the points with the phases named among their three grains, a name repeated asking for that many |
| [isempty](triplePointList.isempty_py.html) | whether the list holds no triple point |
| [plot](triplePointList.plot_py.html) | the triple points of a boundary network as circles, open or filled by a value |
| [rotate](triplePointList.rotate_py.html) | rotate(x, rot) is x.rotate(rot), or rot * x for an object without that method |
| [size](triplePointList.size_py.html) | the number of triple points |
| [subsref](triplePointList.subsref_py.html) |  |
| [triplePointList](triplePointList.triplePointList_py.html) | the triple points of a boundary: the vertices where three grains meet, each with its three grains, their phases, the three boundary segments and the angles between them |

MATLAB's [triplePointList_index](triplePointList_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L685">source</a></font>
{% endraw %}
