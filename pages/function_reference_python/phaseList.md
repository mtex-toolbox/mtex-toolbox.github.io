---
title: 'The class phaseList'
sidebar: function_reference_sidebar
permalink: phaseList_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: phaseList.html
status: Reference
---
{% raw %}
the phases of a map, the frames its measurements can belong to, the not indexed frame first at
index 0, so that a phase id is an index into the list

## Syntax

```python
phaseList(cs1, cs2)
phaseList(['notIndexed', cs1, cs2])      a string names a not indexed frame
```

## Members

| | |
|---|---|
| [colorList](phaseList.colorList_py.html) | the colours the frames of the phases carry, None where they carry none |
| [CSList](phaseList.CSList_py.html) | the frames of the phases as a list, the not indexed one first |
| [indexedPhaseId](phaseList.indexedPhaseId_py.html) | the ids of the phases that carry a lattice |
| [isIndexed](phaseList.isIndexed_py.html) | whether phase i carries a lattice |
| [mineralList](phaseList.mineralList_py.html) | the mineral names of the phases |
| [phaseId](phaseList.phaseId_py.html) | the id of a phase named by its mineral, its frame or its number |
| [selectionNames](phaseList.selectionNames_py.html) | the names a selection ebsd['...'] takes: the minerals, 'indexed' and 'notIndexed' |

MATLAB's [phaseList](phaseList.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/phaselist.py#L52">source</a></font>
{% endraw %}
