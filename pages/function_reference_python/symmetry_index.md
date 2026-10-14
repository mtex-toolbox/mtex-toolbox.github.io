---
title: 'The class symmetry'
sidebar: function_reference_sidebar
permalink: symmetry_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: symmetry_index.html
status: Reference
---
{% raw %}
a point group: the closure of the generators its Hermann-Mauguin symbol names, written in
given axes

## Syntax

By its international symbol:

```python
pg = symmetry('m-3m')
```

By its Schoenflies symbol or an alias:

```python
pg = symmetry('D2')
```

The point group of a space group:

```python
pg = symmetry(spaceId=225)
```

By its number in symmetry.pointGroups:

```python
pg = symmetry(pointId=45)
```

The monoclinic setting from the lattice angles:

```python
pg = symmetry('2', abg=[90*degree, 100*degree, 90*degree])
```

The group the elements generate:

```python
pg = symmetry(rotation.byAxisAngle(zvector, 90*degree))
```

A group says nothing about where it acts: whether it describes a crystal or a specimen, and
in which coordinate system, is the business of the frame carrying it, crystalFrame or
specimenFrame, which builds its group from the same symbol. The elements are built from the
symbol in the order of its generators, as orthogonal transforms, proper rotations and
rotoinversions; nothing refers to an element by its position.

A symbol of a monoclinic group, '2', 'm' or '2/m', names no unique axis; with the lattice
angles abg the unique axis is the one whose angle is not 90 degree, as MATLAB.

## Input

| | |
|---|---|
| `name` | str, the Hermann-Mauguin or Schoenflies symbol, a lattice name or an alias such as 'orthotropic'; or rotation or orthogonalTransform, elements that generate the group; or a symmetry to copy; the triclinic group '1' when omitted |
| `axes` | vector3d or an array (3, 3), the axes a, b, c the elements are written along; x, y, z when omitted |

## Output

| | |
|---|---|
| `pg` | symmetry, with pg.pointGroup its symbol, pg.rot its elements, pg.id its number |

## Keywords

| | default | |
|---|---|---|
| `pointId` |  | the number of the group in symmetry.pointGroups, 1 to 47 |
| `laueId` |  | the number of a Laue class, 1 to 11 |
| `spaceId` |  | the number of a space group, 1 to 230, which gives its point group |
| `abg` |  | the lattice angles alpha, beta, gamma in radians, which choose the unique axis of a monoclinic group |

## See also

[crystalFrame](crystalFrame_index_py.html), [specimenFrame](specimenFrame_index_py.html), [symmetry.fundamentalSector](symmetry.fundamentalSector_py.html), [symmetry.fundamentalRegion](symmetry.fundamentalRegion_py.html), [CrystalSymmetries](CrystalSymmetries_py.html)

## Members

| | |
|---|---|
| [calcAngleDistribution](symmetry.calcAngleDistribution_py.html) | the distribution of the misorientation angle: of a misorientation density, of a list of misorientations, or of the uniform density of two crystal frames |
| [calcAxisDistribution](symmetry.calcAxisDistribution_py.html) | the axis distribution of an SO(3) function, an S2 function of the rotation axes symmetric under the rotations the two frames share |
| [char](symmetry.char_py.html) | the symbol with a bar over every rotoinversion axis under utf8 output |
| [conventionalSector](symmetry.conventionalSector_py.html) | the conventional sector of the group, the one MTEX draws, with up and east choosing its placement |
| [disjoint](symmetry.disjoint_py.html) | the intersection of two groups, symmetry/disjoint |
| [elements](symmetry.elements_py.html) | the rotational axes and their multiplicities, both signs, symmetry/elements |
| [eq](symmetry.eq_py.html) | Return self==value |
| [factor](symmetry.factor_py.html) | factor self = rot1 * d and other = d * rot2 with d the common elements, symmetry/factor |
| [fundamentalRegion](symmetry.fundamentalRegion_py.html) | the fundamental region of orientations of this group and another one, the Dirichlet domain of the identity |
| [fundamentalRegionEuler](symmetry.fundamentalRegionEuler_py.html) | the box in Euler angles that carries every orientation at least once (fundamentalRegionEuler): the two-folds perpendicular to z halve Phi, and one of the reflections they make on phi1 or phi2 halves that angle when it folds its turn about zero fundamentalRegionEuler(cs, ss): MATLAB's name of the Euler plotting box |
| [fundamentalSector](symmetry.fundamentalSector_py.html) | the fundamental sector of the group on the sphere, the region of the directions one symmetric copy of each falls into |
| [id](symmetry.id_py.html) | the number of the group in the table of the point groups |
| [isLaue](symmetry.isLaue_py.html) | whether the group contains the inversion |
| [isProper](symmetry.isProper_py.html) | whether the group holds proper rotations only |
| [Laue](symmetry.Laue_py.html) | the smallest Laue group containing this one: every element once proper and once improper |
| [LaueName](symmetry.LaueName_py.html) | the Hermann-Mauguin symbol of the Laue group, the smallest one containing this group |
| [maxAngle](symmetry.maxAngle_py.html) | maxAngle(cs), maxAngle(cs1, cs2): the largest rotation angle of the fundamental region of the frames, MATLAB's maxAngle of a symmetry |
| [multiplicityPerpZ](symmetry.multiplicityPerpZ_py.html) | the highest order of a rotation axis of the group perpendicular to z, 1 if there is none |
| [multiplicityZ](symmetry.multiplicityZ_py.html) | the highest order of a rotation axis of the group along z, 1 if there is none |
| [name](symmetry.name_py.html) | the Hermann-Mauguin symbol of the group, as pointGroup |
| [ne](symmetry.ne_py.html) | Return self!=value |
| [nfold](symmetry.nfold_py.html) | the maximal n-fold of the group, and about given axes, symmetry/nfold |
| [numProper](symmetry.numProper_py.html) | the number of proper rotations of the group |
| [numSym](symmetry.numSym_py.html) | the number of elements of the group |
| [plot](symmetry.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [pointGroup](symmetry.pointGroup_py.html) | the Hermann-Mauguin symbol of the group, 'unknown' when its elements name no group |
| [properGroup](symmetry.properGroup_py.html) | the proper rotation group of the Laue group: the rotation parts of all elements |
| [properSubGroup](symmetry.properSubGroup_py.html) | the subgroup of proper rotations |
| [rotations](symmetry.rotations_py.html) | the proper rotations, and the rotational axes with the highest order about each |
| [Schoenflies](symmetry.Schoenflies_py.html) | the Schoenflies symbol of the group, 'unknown' when its elements name no group |
| [symmetry](symmetry.symmetry_py.html) | a point group: the closure of the generators its Hermann-Mauguin symbol names, written in given axes |
| [union](symmetry.union_py.html) | the group generated by both, symmetry/union |
| [WignerD](symmetry.WignerD_py.html) | the Wigner-D matrices of rotations, or the Wigner-d matrices of a second Euler angle, of one degree or of all degrees up to a bandwidth |

MATLAB's [symmetry_index](symmetry_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/symmetry.py#L172">source</a></font>
{% endraw %}
