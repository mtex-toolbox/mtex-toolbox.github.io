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

```python
tP = grains.triplePoints
tP('Iron bcc', 'Iron bcc', 'Iron bcc')
```

## Members

| | |
|---|---|
| [allV](triplePointList.allV_py.html) | the positions of the triple points as framed points of the specimen |
| [hasPhase](triplePointList.hasPhase_py.html) | the points with the phases named among their three grains, a name repeated asking for that many |
| [isempty](triplePointList.isempty_py.html) | whether the list holds no triple point |
| [plot](triplePointList.plot_py.html) | plot(tP), plot(tP, values): the triple points of a boundary network as circles, filled by a value where one is given |
| [rotate](triplePointList.rotate_py.html) | rotate(x, rot) is x.rotate(rot), or rot * x for an object without that method |
| [size](triplePointList.size_py.html) | the number of triple points |
| [subsref](triplePointList.subsref_py.html) |  |
| [triplePointList](triplePointList.triplePointList_py.html) | the triple points of a boundary: the vertices where three grains meet, each with its three grains, their phases, the three boundary segments and the angles between them |

MATLAB's [triplePointList_index](triplePointList_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L503">source</a></font>
{% endraw %}
