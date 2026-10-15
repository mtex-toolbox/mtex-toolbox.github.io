---
title: 'orientation.transformReferenceFrame'
sidebar: function_reference_sidebar
permalink: orientation.transformReferenceFrame_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.transformReferenceFrame.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the same orientation described with another reference frame of the crystal

## Syntax

<div class="mx-form" markdown="1">

```python
ori = ori.transformReferenceFrame(cs)
```

The axes aligned by the frames' conventions.

</div>

<div class="mx-form" markdown="1">

```python
ori = ori.transformReferenceFrame(cs, rule=rel)
```

The frames related by an orientation.

</div>

<div class="mx-form" markdown="1">

```python
ori = ori.transformReferenceFrame(cs, 'byScreenAlignment')
```

The frames related by their plotting conventions.

</div>

<div class="mx-form" markdown="1">

```python
mori = mori.transformReferenceFrame(cs1, cs2)
```

Both frames of a misorientation.

</div>

## Description

An orientation is described with respect to Cartesian axes aligned in a fixed way with the
crystal axes a, b, c, such as X||a, Z||c* or X||a*, Z||c. The orientation, the physical
relation between crystal and specimen, stays, only its coordinates change: ori' = ori *
inv(R), R the transition from the old crystal frame to the new one, so ori'(h') = ori(h)
for every crystal direction h restated as h'.

## Input

| `ori` | orientation |
| `to` | crystalFrame, the new frame, the first one of a misorientation |
| `toB` | crystalFrame, the new second frame of a misorientation; or the rule |

## Keywords

| keyword | default | description |
|---|---|---|
| `rule` | `None` | how the old frame relates to the new one: 'byAxes', by the crystal axes, the default; 'byScreenAlignment', by the two frames being drawn alike; or an orientation from the old frame to the new one |
| `tol` | `0.1` | how far from a rotation the transition by the axes may come out |

## Output

| `ori` | orientation in the new frame |

## See also

[vector3d.transformReferenceFrame](Miller.transformReferenceFrame_py.html), [align](align_py.html), [byScreenAlignment](byScreenAlignment_py.html), [CrystalReferenceSystem](CrystalReferenceSystem_py.html)

MATLAB's [orientation.transformReferenceFrame](orientation.transformReferenceFrame.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L833">source</a></font>
{% endraw %}
