---
title: 'grain3d.fromFaces'
sidebar: function_reference_sidebar
permalink: grain3d.fromFaces_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [grain3d](grain3d_index_py.html).

the grains of vertices, faces and the incidence of grains and faces; MATLAB's grain3d
constructor

## Syntax

<div class="mx-form" markdown="1">

```python
grains = grain3d.fromFaces(V, F, I_GF)
```

The geometry only.

</div>

<div class="mx-form" markdown="1">

```python
grains = grain3d.fromFaces(V, F, I_GF, ori, CSList, phaseId)
```

With phases and orientations.

</div>

## Description

A face lies between the grain whose row of I_GF is +1 for it, the side its normal points
away from, and the one whose row is -1; a face with one grain only lies on the outer surface.
The misorientation of a face follows from the mean rotations of its two grains. Every grain
is of phase 1 when CSList has an indexed phase, else not indexed; the voxels are unknown.

## Input

| `V` | (n, 3) array or vector3d, the vertices |
| `F` | (m, 3) array of triangles, or a list of polygons, indices into V |
| `I_GF` | (grains x faces) array or sparse matrix of +1, -1 and 0 |
| `ori` | rotation or orientation, or (grains, 4) quaternions, the mean rotation of every grain |
| `CSList` | phaseList, or a list of crystalFrame with 'notIndexed' first |
| `phaseId` | int array, the phase of every grain as the index into CSList |

## Keywords

| keyword | default | description |
|---|---|---|
| `frame` | `None` | specimenFrame of the vertices |

## Output

| `grains` | grain3d |

## See also

[grain3d.load](grain3d.load_py.html), [calcGrains](EBSD.calcGrains_py.html), [grain3d.orientFaces](grain3d.orientFaces_py.html), [Grains3D](Grains3D_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/grain3d.py#L54">source</a></font>
{% endraw %}
