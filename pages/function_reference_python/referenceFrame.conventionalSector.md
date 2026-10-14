---
title: 'referenceFrame.conventionalSector'
sidebar: function_reference_sidebar
permalink: referenceFrame.conventionalSector_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [referenceFrame](referenceFrame_index_py.html).

the conventional sector of the group, the one MTEX draws, oriented by the up and east
directions of the frame's plotting convention

## Syntax

<div class="mx-form" markdown="1">

```python
sR = cs.conventionalSector()
```

As the frame is drawn.

</div>

<div class="mx-form" markdown="1">

```python
sR = cs.conventionalSector(up=vector3d(0, 0, 1), east=vector3d(0, 1, 0))
```

Other directions.

</div>

## Description

The sector is the hemisphere towards up where an element of the group sends up below it, a
wedge about the c axis of the angle the order leaves, starting on a mirror plane, a twofold
axis or the a axis, and the standard triangles of the cubic groups.

## Input

| `cs` | referenceFrame |

## Keywords

| keyword | default | description |
|---|---|---|
| `up` | `None` | the direction out of the screen; by default the frame's plotting convention's |
| `east` | `None` | the direction to the east the wedge starts from; by default the convention's |

## Output

| `sR` | sphericalRegion |

## See also

[referenceFrame.fundamentalSector](referenceFrame.fundamentalSector_py.html), [sphericalRegion](sphericalRegion_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames.py#L445">source</a></font>
{% endraw %}
