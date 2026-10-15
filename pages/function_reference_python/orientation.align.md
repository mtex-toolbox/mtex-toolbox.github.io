---
title: 'orientation.align'
sidebar: function_reference_sidebar
permalink: orientation.align_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the orientation two frames stand in by their axes, MATLAB's orientation.align

## Syntax

<div class="mx-form" markdown="1">

```python
ori = orientation.align(cs1, cs2)
```

The rotation from the axes of cs1 to those of cs2.

</div>

<div class="mx-form" markdown="1">

```python
ori = orientation.align(cs1, cs2, tol=1e-3)
```

A transition nearer a rotation demanded.

</div>

## Description

A point sitting at v in frA sits at ori * v in frB. Unlike orientation.byScreenAlignment,
which infers the rotation from how the two frames are drawn, this reads the two bases: it is
the rotation of referenceFrame.transformationMatrix, which vector3d.transformReferenceFrame
applies to move data from one frame into the other. The orientation is between the frames
without their groups (stripSym).

## Input

| `frA` | referenceFrame, the source |
| `frB` | referenceFrame, the target |

## Keywords

| keyword | default | description |
|---|---|---|
| `tol` | `0.1` | how far, as the norm of I - M M', the transition M may be from a rotation; a larger deviation is refused |

## Output

| `ori` | orientation from frA to frB |

## See also

[orientation.byScreenAlignment](orientation.byScreenAlignment_py.html), [referenceFrame.isCompatible](referenceFrame.isCompatible_py.html), [transformReferenceFrame](transformReferenceFrame_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L964">source</a></font>
{% endraw %}
