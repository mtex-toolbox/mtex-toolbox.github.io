---
title: 'symmetry.conventionalSector'
sidebar: function_reference_sidebar
permalink: symmetry.conventionalSector_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [symmetry](symmetry_index_py.html).

the conventional sector of the group, the one MTEX draws, with up and east choosing its
placement

## Syntax

Towards z:

```python
sR = cs.sym.conventionalSector()
```

On the lower hemisphere:

```python
sR = cs.sym.conventionalSector(up=-zvector)
```

The hemisphere towards up when some element sends up below it, a wedge about the c axis
starting on a mirror plane, else on a two-fold axis, else at a, and the standard
triangles of the cubic groups. east matters only where the sector has a choice of side:
the monoclinic groups and the orthorhombic ones with a mirror. Called on the group it
has no frame; frame.fundamentalSector() takes up and east from the frame's plotting
convention.

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
| `up` | `None` | vector3d, the direction out of the screen, z by default |
| `east` | `None` | vector3d, the direction to the right, by default the a axis |

## See also

[fundamentalSector](fundamentalSector_py.html), [dirichletSector](dirichletSector_py.html), [tilesSphere](tilesSphere_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/symmetry.py#L509">source</a></font>
{% endraw %}
