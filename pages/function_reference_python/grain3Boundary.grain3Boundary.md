---
title: 'grain3Boundary.grain3Boundary'
sidebar: function_reference_sidebar
permalink: grain3Boundary.grain3Boundary_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain3Boundary.grain3Boundary.html
status: Reference
---
{% raw %}
polygonal faces separating neighbouring grains in a three-dimensional volume

## Syntax

<div class="mx-form" markdown="1">

```python
gB = grains.boundary
firstFaces = gB[:10]
areas = gB.area
normals = gB.N
```

</div>

## Description

A boundary contains one row per face, with its adjacent grain ids, voxel ids, phases and
misrotation. Faces share a vertex table. Face normals point from the first adjacent grain
to the second when the mesh is consistently oriented. The exterior uses grain id 0,
voxel id -1 and phase id -1. Select a single phase pair before requesting misorientation.

## Input

| `allV` | vector3d or array of shape (n, 3), all stored vertex positions |
| `F` | array of shape (m, 3) for triangles, or a list of polygon vertex-index arrays; indices are zero-based and a polygon does not repeat its first vertex |
| `grainId` | array of shape (m, 2), adjacent grain ids |
| `ebsdId` | array of shape (m, 2), adjacent voxel ids, or None for unknown ids |
| `phaseId` | array of shape (m, 2), adjacent phase-list indices |
| `misrotation` | rotation across each face |
| `CSList` | list of phase frames |
| `frame` | specimenFrame of the geometry |
| `scanUnit` | spatial unit of vertex coordinates; default 'um' |
| `id` | persistent face ids; default 1 through m |

## Output

| `gB` | grain3Boundary, normally obtained as grains.boundary |

## Properties

| `allV` | numeric vertex coordinates of shape (n, 3) |
| `F` | triangle indices or polygon index arrays into allV |
| `grainId` | grain ids on the two sides of every face |
| `N` | oriented unit face normals as vector3d |
| `centroid` | area-weighted face centres as vector3d |
| `area` | area of every face in squared spatial units |
| `misorientation` | symmetry-aware orientation relationship for one phase pair |
| `isTriangulated` | whether all faces have three corners |

## See also

[grain3d](grain3d_index_py.html), calcGrains3d, [grain3d.orientFaces](grain3d.orientFaces_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
grain3Boundary(allV, F, grainId, ebsdId, phaseId, misrotation, CSList, frame, scanUnit='um', id=None)
```

</div>

MATLAB's [grain3Boundary.grain3Boundary](grain3Boundary.grain3Boundary.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/grain3boundary.py#L29">source</a></font>
{% endraw %}
