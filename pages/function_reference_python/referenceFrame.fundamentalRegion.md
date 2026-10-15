---
title: 'referenceFrame.fundamentalRegion'
sidebar: function_reference_sidebar
permalink: referenceFrame.fundamentalRegion_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [referenceFrame](referenceFrame_index_py.html).

the fundamental region in orientation space of this group, or of the pair with another
frame; MATLAB's fundamentalRegion

## Syntax

<div class="mx-form" markdown="1">

```python
oR = cs.fundamentalRegion()
```

Of the orientations of cs.

</div>

<div class="mx-form" markdown="1">

```python
oR = cs1.fundamentalRegion(cs2)
```

Of the misorientations from cs2 to cs1.

</div>

<div class="mx-form" markdown="1">

```python
oR = cs1.fundamentalRegion(cs2, antipodal=True)
```

With grain exchange.

</div>

## Description

MATLAB's other outputs, the common group and the number of disjoint elements, are not
returned.

## Input

| `cs, cs1` | referenceFrame |
| `other` | referenceFrame, the second frame cs2; by default the specimen frame |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `False` | the grain exchange symmetry mori == inv(mori) of misorientations |

## Output

| `oR` | orientationRegion |

## See also

[orientationRegion](orientationRegion_index_py.html), [referenceFrame.fundamentalSector](referenceFrame.fundamentalSector_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames/__init__.py#L468">source</a></font>
{% endraw %}
