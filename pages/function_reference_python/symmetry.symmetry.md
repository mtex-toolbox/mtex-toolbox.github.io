---
title: 'symmetry.symmetry'
sidebar: function_reference_sidebar
permalink: symmetry.symmetry_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: symmetry.symmetry.html
status: Reference
---
{% raw %}
a point group: the closure of the generators its Hermann-Mauguin symbol names, written in
given axes

## Syntax

<div class="mx-form" markdown="1">

```python
pg = symmetry('m-3m')
```

By its international symbol.

</div>

<div class="mx-form" markdown="1">

```python
pg = symmetry('D2')
```

By its Schoenflies symbol or an alias.

</div>

<div class="mx-form" markdown="1">

```python
pg = symmetry(spaceId=225)
```

The point group of a space group.

</div>

<div class="mx-form" markdown="1">

```python
pg = symmetry(pointId=45)
```

By its number in symmetry.pointGroups.

</div>

<div class="mx-form" markdown="1">

```python
pg = symmetry('2', abg=[90*degree, 100*degree, 90*degree])
```

The monoclinic setting from the lattice angles.

</div>

<div class="mx-form" markdown="1">

```python
pg = symmetry(rotation.byAxisAngle(zvector, 90*degree))
```

The group the elements generate.

</div>

## Description

A group says nothing about where it acts: whether it describes a crystal or a specimen, and
in which coordinate system, is the business of the frame carrying it, crystalFrame or
specimenFrame, which builds its group from the same symbol. The elements are built from the
symbol in the order of its generators, as orthogonal transforms, proper rotations and
rotoinversions; nothing refers to an element by its position.

A symbol of a monoclinic group, '2', 'm' or '2/m', names no unique axis; with the lattice
angles abg the unique axis is the one whose angle is not 90 degree, as MATLAB.

## Input

| `name` | str, the Hermann-Mauguin or Schoenflies symbol, a lattice name or an alias such as 'orthotropic'; or rotation or orthogonalTransform, elements that generate the group; or a symmetry to copy; the triclinic group '1' when omitted |
| `axes` | vector3d or an array (3, 3), the axes a, b, c the elements are written along; x, y, z when omitted |

## Keywords

| keyword | default | description |
|---|---|---|
| `pointId` | `None` | the number of the group in symmetry.pointGroups, 1 to 47 |
| `laueId` | `None` | the number of a Laue class, 1 to 11 |
| `spaceId` | `None` | the number of a space group, 1 to 230, which gives its point group |
| `abg` | `None` | the lattice angles alpha, beta, gamma in radians, which choose the unique axis of a monoclinic group |

## Output

| `pg` | symmetry, with pg.pointGroup its symbol, pg.rot its elements, pg.id its number |

## See also

[crystalFrame](crystalFrame_index_py.html), [specimenFrame](specimenFrame_index_py.html), [symmetry.fundamentalSector](symmetry.fundamentalSector_py.html), [symmetry.fundamentalRegion](symmetry.fundamentalRegion_py.html), [CrystalSymmetries](CrystalSymmetries_py.html)

MATLAB's [symmetry.symmetry](symmetry.symmetry.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/symmetry.py#L172">source</a></font>
{% endraw %}
