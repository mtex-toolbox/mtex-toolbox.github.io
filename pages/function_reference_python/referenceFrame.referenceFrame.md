---
title: 'referenceFrame.referenceFrame'
sidebar: function_reference_sidebar
permalink: referenceFrame.referenceFrame_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: referenceFrame.referenceFrame.html
status: Reference
---
{% raw %}
a reference frame, the coordinate system data is expressed in: an identity, a basis, the
point group the data is invariant under and the default plotting convention

## Syntax

<div class="mx-form" markdown="1">

```python
f = referenceFrame(name='lab', axesNames=('A', 'B', 'C'))
```

A frame of the canonical basis.

</div>

<div class="mx-form" markdown="1">

```python
f = referenceFrame(basis)
```

A frame of the given basis vectors.

</div>

## Description

The base class of crystalFrame, the frame glued to the lattice of a phase, and
specimenFrame, the frame of a sample; use those. A frame carries an identity, a name such
as 'measurement', 'rolling' or a mineral; the basis vectors in canonical Euclidean
coordinates, whose lengths count; the point group; and the plotting convention its data is
drawn in. Frames are handles compared by identity, registered and sealed by the session;
transformationMatrix gives the change of coordinates between two frames.

## Input

| `basis` | vector3d or 3 x 3 array, the basis vectors in canonical coordinates, by default the canonical basis |

## Keywords

| keyword | default | description |
|---|---|---|
| `name` | `''` | the identity of the frame |
| `axesNames` | `('X', 'Y', 'Z')` | the names of the three axes |
| `how2plot` | `None` | the default plottingConvention of the frame |
| `sym` | `None` | the point group, by default the trivial one |
| `color` | `None` | the colour of the frame's data in a phase map |

## Output

| `f` | referenceFrame |

## See also

[crystalFrame](crystalFrame_index_py.html), [specimenFrame](specimenFrame_index_py.html), [plottingConvention](plottingConvention_index_py.html), [referenceFrame.transformationMatrix](referenceFrame.transformationMatrix_py.html)

MATLAB's [referenceFrame.referenceFrame](referenceFrame.referenceFrame.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames/__init__.py#L42">source</a></font>
{% endraw %}
