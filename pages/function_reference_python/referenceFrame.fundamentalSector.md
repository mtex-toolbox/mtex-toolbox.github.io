---
title: 'referenceFrame.fundamentalSector'
sidebar: function_reference_sidebar
permalink: referenceFrame.fundamentalSector_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [referenceFrame](referenceFrame_index_py.html).

the fundamental sector of the group of the frame on the sphere, the region an inverse pole
figure shows

## Syntax

<div class="mx-form" markdown="1">

```python
sR = cs.fundamentalSector()
```

The conventional sector.

</div>

<div class="mx-form" markdown="1">

```python
sR = cs.fundamentalSector(antipodal=True)
```

Of the Laue group.

</div>

<div class="mx-form" markdown="1">

```python
sR = cs.fundamentalSector(angle=omega)
```

The axes of misorientations of that angle.

</div>

<div class="mx-form" markdown="1">

```python
sR = cs.fundamentalSector(center=v)
```

The Dirichlet domain of a centre.

</div>

## Description

The conventional sector, the one MATLAB and an inverse pole figure show, oriented by the
frame's plotting convention, wherever it is a fundamental domain of the group, which it is
for every crystal frame; for a group turned against its axes the Dirichlet domain. Every
direction has exactly one symmetric equivalent in it; projectIntoFundamentalRegion folds
directions there.

## Input

| `cs` | referenceFrame |

## Keywords

| keyword | default | description |
|---|---|---|
| `center` | `None` | vector3d, return the Dirichlet domain of this centre: the directions closer to it than to any of its symmetric equivalents |
| `antipodal` | `False` | the sector of the group extended by the inversion, half as large |
| `angle` | `None` | the axes of the rotations of this angle in the fundamental region, for axis angle sections of misorientations |

## Output

| `sR` | sphericalRegion |

## See also

[sphericalRegion](sphericalRegion_index_py.html), [referenceFrame.fundamentalRegion](referenceFrame.fundamentalRegion_py.html), [plotIPF](SO3Fun.plotIPDF_py.html), [vector3d.projectIntoFundamentalRegion](Miller.project2FundamentalRegion_py.html), [FundamentalSector](FundamentalSector_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/frames.py#L362">source</a></font>
{% endraw %}
