---
title: 'dirichletSector'
sidebar: function_reference_sidebar
permalink: dirichletSector_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the Dirichlet domain of a point group about a centre, a fundamental domain for every group,
whatever axes it is written in

## Syntax

About the centre of the conventional sector:

```python
sR = dirichletSector(cs)
```

About another centre:

```python
sR = dirichletSector(cs, center=vector3d(1, 2, 3))
```

Of the Laue group, for axes:

```python
sR = dirichletSector(cs, antipodal=True)
```

Of a group, the region given in a frame:

```python
sR = dirichletSector(pg, frame=cs)
```

The region is bounded by the great circles bisecting the centre and each of its images
under the group: the directions nearer the centre than any of its other images. Where the
centre is not given, it is the centre of the conventional sector, or, when the inversion
cancels it, the one of the proper subgroup. fundamentalSector takes the Dirichlet domain only
for a group the conventional sector does not fit, such as the rotations two frames share.

## Input

| | |
|---|---|
| `pg` | a point group, or a reference frame, whose group is taken and which the region is given in |

## Output

| | |
|---|---|
| `sR` | sphericalRegion |

## Keywords

| | default | |
|---|---|---|
| `center` | `None` | vector3d, the centre of the domain; by default the centre of the conventional sector |
| `frame` | `None` | the referenceFrame the region is given in |
| `antipodal` | `False` | the domain of the Laue group, for axes |

## See also

[fundamentalSector](fundamentalSector_py.html), [sphericalRegion](sphericalRegion_index_py.html), [tilesSphere](tilesSphere_py.html), [FundamentalSector](FundamentalSector_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/sphericalregion.py#L313">source</a></font>
{% endraw %}
