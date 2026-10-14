---
title: 'Miller.transformReferenceFrame'
sidebar: function_reference_sidebar
permalink: Miller.transformReferenceFrame_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: Miller.transformReferenceFrame.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the same direction written in another frame

## Syntax

<div class="mx-form" markdown="1">

```python
h2 = h.transformReferenceFrame(cs2)
```

By the axes of the two frames.

</div>

<div class="mx-form" markdown="1">

```python
h2 = h.transformReferenceFrame(cs2, rule='byScreenAlignment')
```

As the two frames are drawn.

</div>

<div class="mx-form" markdown="1">

```python
h2 = h.transformReferenceFrame(cs2, rule=ori) # by a given orientation from one to the other
```

</div>

## Description

The direction keeps its meaning and gets the coordinates of the other frame, in hkl or
uvw as it was written; data of two settings of one crystal, 'X||a' and 'X||a*', are
combined this way.

## Input

| `h` | vector3d or Miller |
| `to` | the frame to write it in |

## Keywords

| keyword | default | description |
|---|---|---|
| `rule` | `None` | 'byAxes' or None, the transition of the two bases; 'byScreenAlignment', the one of the plotting conventions; or an orientation from the frame of h to to |
| `tol` | `0.1` | how far the transition of the bases may be from a rotation, the norm of I - M M'; a larger deviation is refused |

## Output

| `h2` | vector3d or Miller in the frame to |

## See also

[align](align_py.html), [orientation.byScreenAlignment](orientation.byScreenAlignment_py.html), [orientation.transformReferenceFrame](orientation.transformReferenceFrame_py.html)

MATLAB's [Miller.transformReferenceFrame](Miller.transformReferenceFrame.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L1161">source</a></font>
{% endraw %}
