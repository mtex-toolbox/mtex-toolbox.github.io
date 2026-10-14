---
title: 'phaseList.selectionNames'
sidebar: function_reference_sidebar
permalink: phaseList.selectionNames_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [phaseList](phaseList_index_py.html).

the names a selection ebsd['...'] takes: the minerals, 'indexed' and 'notIndexed'

## Syntax

<div class="mx-form" markdown="1">

```python
names = ebsd.CSList.selectionNames()
```

The minerals, 'indexed', 'notIndexed'.

</div>

<div class="mx-form" markdown="1">

```python
names = ebsd.CSList.selectionNames(pairs=True)
```

Also every pair of minerals.

</div>

## Description

The pairs are those a boundary selection takes, gB['Forsterite', 'Enstatite'].

## Input

| `pl` | phaseList |

## Keywords

| keyword | default | description |
|---|---|---|
| `pairs` | `False` | add every ordered pair of minerals |

## Output

| `names` | list of the names, then of the pairs as tuples |

## See also

[phaseList.phaseId](phaseList.phaseId_py.html), EBSD.select

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/phaselist.py#L150">source</a></font>
{% endraw %}
