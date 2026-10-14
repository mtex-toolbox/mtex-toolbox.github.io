---
title: 'The class referenceFrame'
sidebar: function_reference_sidebar
permalink: referenceFrame_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
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
| `name` |  | the identity of the frame |
| `axesNames` |  | the names of the three axes |
| `how2plot` |  | the default plottingConvention of the frame |
| `sym` |  | the point group, by default the trivial one |
| `color` |  | the colour of the frame's data in a phase map |

## Output

| `f` | referenceFrame |

## See also

[crystalFrame](crystalFrame_index_py.html), [specimenFrame](specimenFrame_index_py.html), [plottingConvention](plottingConvention_index_py.html), [referenceFrame.transformationMatrix](referenceFrame.transformationMatrix_py.html)

## Members

| [axesNames](referenceFrame.axesNames_py.html) | the names of the three axes, ('X', 'Y', 'Z'), ('a', 'b', 'c') or ('RD', 'TD', 'ND') |
| [basis](referenceFrame.basis_py.html) | the basis vectors of the frame in the canonical Euclidean coordinates, one per row |
| [byName](referenceFrame.byName_py.html) | the specimen frame registered under a name |
| [char](referenceFrame.char_py.html) | the name of the frame, or its class name |
| [clone](referenceFrame.clone_py.html) | make an editable, unregistered copy of a reference frame |
| [conventionalSector](referenceFrame.conventionalSector_py.html) | the conventional sector of the group, the one MTEX draws, oriented by the up and east directions of the frame's plotting convention |
| [conventionChar](referenceFrame.conventionChar_py.html) | the plotting convention in the frame's own axes names, e.g |
| [disjoint](referenceFrame.disjoint_py.html) | the sibling frame carrying the intersection of the two groups |
| [elements](referenceFrame.elements_py.html) | the rotational axes of the group, both signs, and their multiplicities |
| [factor](referenceFrame.factor_py.html) | the factorisation of the two groups: self = rot1 * d and other = d * rot2 with d the common elements |
| [fullSym](referenceFrame.fullSym_py.html) | the largest group registered over this basis |
| [fundamentalRegion](referenceFrame.fundamentalRegion_py.html) | the fundamental region in orientation space of this group, or of the pair with another frame |
| [fundamentalSector](referenceFrame.fundamentalSector_py.html) | the fundamental sector of the group of the frame on the sphere, the region an inverse pole figure shows |
| [how2plot](referenceFrame.how2plot_py.html) | the default plotting convention the frame is drawn with, a plottingConvention or None |
| [id](referenceFrame.id_py.html) | numeric identifier of the point group carried by the frame |
| [intern](referenceFrame.intern_py.html) | the session instance of a frame: the registered one when it agrees by key, otherwise this one, registered and sealed from now on |
| [isAligned](referenceFrame.isAligned_py.html) | whether two frames have the same basis, up to a relative tolerance on the basis vectors |
| [isclose](referenceFrame.isclose_py.html) | whether two frames may be treated as one: the same class of group and aligned bases, and for crystal frames the same mineral (MATLAB's eqTol) |
| [isCompatible](referenceFrame.isCompatible_py.html) | whether a transition between the frames exists, and the transition |
| [isIndexed](referenceFrame.isIndexed_py.html) | whether the frame is an indexed phase, False for the notIndexedFrame |
| [isLaue](referenceFrame.isLaue_py.html) | whether the point group is a Laue group, i.e |
| [isProper](referenceFrame.isProper_py.html) | whether the point group has proper rotations only |
| [lattice](referenceFrame.lattice_py.html) | the crystal system of the point group, a latticeType |
| [Laue](referenceFrame.Laue_py.html) | the sibling frame carrying the Laue group, the group with the inversion added |
| [LaueName](referenceFrame.LaueName_py.html) | the international symbol of the Laue class of the group |
| [mineral](referenceFrame.mineral_py.html) | the mineral of the frame, its name |
| [multiplicityPerpZ](referenceFrame.multiplicityPerpZ_py.html) | the highest order of a rotation of the group about an axis perpendicular to z |
| [multiplicityZ](referenceFrame.multiplicityZ_py.html) | the highest order of a rotation of the group about the z axis |
| [nfold](referenceFrame.nfold_py.html) | the highest order of a symmetry axis of the group |
| [numProper](referenceFrame.numProper_py.html) | the number of proper rotations in the point group |
| [numSym](referenceFrame.numSym_py.html) | the number of elements of the point group |
| [plot](referenceFrame.plot_py.html) | the elements of the point group of a frame drawn on the upper hemisphere, as the international tables draw them |
| [pointGroup](referenceFrame.pointGroup_py.html) | the Hermann-Mauguin symbol of the point group |
| [properGroup](referenceFrame.properGroup_py.html) | replace each point-group operation by its proper rotational part |
| [properSubGroup](referenceFrame.properSubGroup_py.html) | return a sibling frame containing only the group's proper rotations |
| [referenceFrame](referenceFrame.referenceFrame_py.html) | a reference frame, the coordinate system data is expressed in: an identity, a basis, the point group the data is invariant under and the default plotting convention |
| [reset](referenceFrame.reset_py.html) | clear the session's frame register, named frames and default frame |
| [rot](referenceFrame.rot_py.html) | the elements of the point group, an orthogonalTransform |
| [rotations](referenceFrame.rotations_py.html) | return only the proper rotations in this frame's point group |
| [Schoenflies](referenceFrame.Schoenflies_py.html) | the Schoenflies symbol of the point group |
| [sibling](referenceFrame.sibling_py.html) | this frame with another group in it, from the register |
| [sim](referenceFrame.sim_py.html) | whether two frames describe the same symmetry, without requiring aligned bases |
| [stripSym](referenceFrame.stripSym_py.html) | return an interned sibling frame with the same basis and no nontrivial symmetry |
| [sym](referenceFrame.sym_py.html) | the point group the frame carries, a symmetry |
| [transformationMatrix](referenceFrame.transformationMatrix_py.html) | the transition matrix taking coordinates in this frame to coordinates in the other, on normalised bases: with the unit axes as rows, inv(B) A is the rotation between the two settings of one lattice |
| [union](referenceFrame.union_py.html) | return a frame whose group is generated by this group and another group or operation |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames.py#L42">source</a></font>
{% endraw %}
