---
title: 'symmetry.fundamentalSector'
sidebar: function_reference_sidebar
permalink: symmetry.fundamentalSector_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: symmetry.fundamentalSector.html
status: Reference
---
{% raw %}
A method of [symmetry](symmetry_index_py.html).

the fundamental sector of the group on the sphere, the region of the directions one
symmetric copy of each falls into

## Syntax

The conventional sector:

```python
sR = pg.fundamentalSector()
```

With the inversion added:

```python
sR = pg.fundamentalSector(antipodal=True)
```

The Dirichlet domain about a centre:

```python
sR = pg.fundamentalSector(center=vector3d(1, 2, 3))
```

The rotation axes allowed at one rotation angle:

```python
sR = pg.fundamentalSector(angle=55*degree)
```

The sector is the conventional one, the sector an inverse pole figure shows, wherever it is
a fundamental domain of the group, which it is for every crystal symmetry; for a group
turned against its axes it is a Dirichlet domain. With a centre it is
the Dirichlet domain of that centre, the directions nearer to it than to any of its
symmetric copies.

With an angle it is the sector of rotation axes the fundamental region of orientations
allows at that rotation angle: small circles about the symmetry axes, of radius set by the
angle and the fold of the axis; MATLAB intersects them with the conventional sector, here
they stand alone.

A frame's fundamentalSector places the sector by the frame's plotting convention; a group
has no convention and places it on x, y, z.

## Input

| | |
|---|---|
| `pg` | symmetry |

## Output

| | |
|---|---|
| `sR` | sphericalRegion |

## Keywords

| | default | |
|---|---|---|
| `center` | `None` | vector3d, the centre of a Dirichlet domain |
| `antipodal` | `False` | add the inversion to the group, the sector of axes |
| `angle` | `None` | the rotation angle of misorientations, in radians, whose allowed axes are sought |

## See also

[sphericalRegion](sphericalRegion_index_py.html), [symmetry.fundamentalRegion](symmetry.fundamentalRegion_py.html), [conventionalSector](conventionalSector_py.html), [dirichletSector](dirichletSector_py.html), [CrystalSymmetries](CrystalSymmetries_py.html)

MATLAB's [symmetry.fundamentalSector](symmetry.fundamentalSector.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/symmetry.py#L433">source</a></font>
{% endraw %}
