---
title: 'crystalAxes'
sidebar: function_reference_sidebar
permalink: crystalAxes_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the crystal axes a, b, c in Cartesian coordinates, from the cell of a lattice; MATLAB's
calcAxis, what crystalFrame builds its axes with

## Syntax

<div class="mx-form" markdown="1">

```python
axes = crystalAxes(lattice, abc, abg)
```

X||a*, Z||c.

</div>

<div class="mx-form" markdown="1">

```python
axes = crystalAxes(lattice, abc, abg, alignment=['X||a', 'Z||c*'])
```

Another alignment.

</div>

<div class="mx-form" markdown="1">

```python
axes = crystalAxes(lattice, abc, abg, alignment=['EDAX'], rotate=rot)
```

The vendor's alignment, turned.

</div>

## Description

The default alignment puts a* along x and c along z. An alignment names the lattice
direction a Cartesian axis lies along: a, b, c, their reciprocals a*, b*, c*, m = a + b or
d = a + b + c.

- X or Y named, no Z: Z lies along c, or along c* when a direct axis was named
- Z alone named: X takes the partner of the usual setting
- 'EDAX', 'TSL' or 'OIM': the vendors' alignment X||a for the triclinic, trigonal and
hexagonal lattices, where a and a* differ

A length of 0 is filled from the others and an angle of 0 from its partners, as MTEX fills
them; a cell the lattice does not allow is refused unless check=False.

## Input

| `lattice` | latticeType, the lattice system |
| `abc` | the lengths a, b, c of the cell |
| `abg` | the angles alpha, beta, gamma of the cell, in radians; by default those of the lattice |

## Keywords

| keyword | default | description |
|---|---|---|
| `alignment` | `()` | a list of strings like 'X\|\|a', 'Z\|\|c*' or a vendor's name |
| `rotate` | `None` | a rotation, or a 3 x 3 matrix, applied to the aligned axes |
| `uniqueAxis` | `1` | the index of the unique axis of a monoclinic lattice, 0 to 2 for a to c |
| `check` | `True` | refuse a cell the lattice does not allow: unequal lengths a and b of a trigonal, hexagonal or tetragonal lattice, unequal lengths of a cubic one, angles not 90 degree with the unique axis of a monoclinic one |

## Output

| `axes` | a (3, 3) array, the axes a, b, c in Cartesian coordinates, one per row |

## See also

[crystalFrame](crystalFrame_index_py.html), [reciprocalAxes](reciprocalAxes_py.html), [CrystalReferenceSystem](CrystalReferenceSystem_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames/crystalaxes.py#L147">source</a></font>
{% endraw %}
