---
title: 'vector3d.arrow3d'
sidebar: function_reference_sidebar
permalink: vector3d.arrow3d_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.arrow3d.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

solid arrows in space, from the origin, or from anchor, to the tips v; MATLAB's
vector3d/arrow3d

## Syntax

<div class="mx-form" markdown="1">

```python
arrow3d(v)
```

Arrows from the origin to v.

</div>

<div class="mx-form" markdown="1">

```python
arrow3d(zvector, faceColor='r', label='z')
```

A red arrow named z.

</div>

<div class="mx-form" markdown="1">

```python
arrow3d(v, anchor=vector3d(1, 0, 0), arrowWidth=0.05)
```

Arrows from another point, thinner.

</div>

<div class="mx-form" markdown="1">

```python
arrow3d(Miller(1, 0, 0, cs, 'uvw'), labeled=True)
```

Every arrow named by its indices.

</div>

## Description

The arrows go into the held axes in space or into a new figure, whose camera looks down on
the screen plane of the plotting convention, and the axes widen to hold every arrow and
label drawn so far, at equal scale. A new figure frames the arrows; held axes keep their
framing. The coordinates are those of v, in its frame.

## Input

| `v` | vector3d, the arrows, the tips when anchor is not given |

## Keywords

| keyword | default | description |
|---|---|---|
| `faceColor` | `'k'` | the colour of the arrows |
| `anchor` | `None` | vector3d or (n, 3) array, the tails of the arrows, one for all or one per arrow |
| `arrowWidth` | `None` | the radius of the tail relative to the length of the arrow, the head 2.5 times as wide; by default the radius follows the longest arrow, for arrows of equal thickness |
| `edgeColor` | `'none'` | the colour of the edges of the faces, 'none' for none |
| `labeled` | `False` | name every arrow by its indices or coordinates |
| `label` | `None` | a text at the tip of every arrow, one for all or a list with one per arrow |

## Output

| `h` | the Poly3DCollection of the arrows' faces |

## See also

[scatter3d](vector3d.scatter3d_py.html), [quiver3d](S2AxisField.quiver3_py.html), [text](EBSD.text_py.html), [VectorDefinition](VectorDefinition_py.html), [RotationDefinition](RotationDefinition_py.html)

MATLAB's [vector3d.arrow3d](vector3d.arrow3d.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spaceplot.py#L876">source</a></font>
{% endraw %}
