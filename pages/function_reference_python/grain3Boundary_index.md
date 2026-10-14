---
title: 'The class grain3Boundary'
sidebar: function_reference_sidebar
permalink: grain3Boundary_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain3Boundary_index.html
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

## Members

| [area](grain3Boundary.area_py.html) | the area of every face |
| [calcGBND](grain3Boundary.calcGBND_py.html) | the boundary normal distribution of a 3D boundary: the face normals in specimen coordinates weighted by area, with grains the normals in the crystal frame of the one phase, with moriRef the grain boundary character of the faces whose misorientation is near moriRef |
| [cat](grain3Boundary.cat_py.html) | cat(a, b, ...) is type(a).cat(a, b, ...): the list of the operands, MATLAB's [a, b], the carried attributes joined |
| [centroid](grain3Boundary.centroid_py.html) | the mean of the corners of a triangle, the area centroid of a polygon |
| [diameter](grain3Boundary.diameter_py.html) | the largest distance between two corners of every face |
| [edges](grain3Boundary.edges_py.html) | the edges of a triangulated boundary, sorted pairs of vertices, and the three edges of every face |
| [F](grain3Boundary.F_py.html) | the triangles as an (m, 3) array, a polygonal boundary as a list of index arrays |
| [flip](grain3Boundary.flip_py.html) | the boundary faces with their two sides exchanged, of all faces or a selection |
| [flipN](grain3Boundary.flipN_py.html) | the boundary faces turned round, their normals pointing the other way |
| [grain3Boundary](grain3Boundary.grain3Boundary_py.html) | polygonal faces separating neighbouring grains in a three-dimensional volume |
| [hasGrain](grain3Boundary.hasGrain_py.html) | the boundary faces of a grain, or between two grains |
| [hasPhase](grain3Boundary.hasPhase_py.html) | the boundary faces with a phase on one side, or between two phases |
| [I_FG](grain3Boundary.I_FG_py.html) | faces x grains, the columns the grain ids |
| [I_VF](grain3Boundary.I_VF_py.html) | the incidence of vertices and faces, a sparse boolean matrix vertices x faces |
| [I_VG](grain3Boundary.I_VG_py.html) | the incidence of vertices and grains, a sparse boolean matrix vertices x grains |
| [idV](grain3Boundary.idV_py.html) | the indices into allV of the vertices the faces use, sorted |
| [isIndexed](grain3Boundary.isIndexed_py.html) | whether the grain on either side is indexed, (m, 2) |
| [isTriangulated](grain3Boundary.isTriangulated_py.html) | whether every face is a triangle |
| [misorientation](grain3Boundary.misorientation_py.html) | the misorientation of every face from the second side to the first, NaN where a side is not indexed |
| [N](grain3Boundary.N_py.html) | the unit normal of every face, NaN for a face of no area |
| [nodeType](grain3Boundary.nodeType_py.html) | the number of grains meeting at every vertex, plus 10 on the surface of the volume |
| [numCorners](grain3Boundary.numCorners_py.html) | the number of corners of every face |
| [perimeter](grain3Boundary.perimeter_py.html) | the perimeter of every face, the length of its edges |
| [plot](grain3Boundary.plot_py.html) | the faces of a 3D grain boundary, light blue, in one colour, or coloured by a value or a colour per face |
| [quiver](grain3Boundary.quiver_py.html) | arrows at the centroids of 3D grains or of their boundary faces |
| [size](grain3Boundary.size_py.html) | the number of faces |
| [subsref](grain3Boundary.subsref_py.html) |  |
| [V](grain3Boundary.V_py.html) | the vertices the faces use, as vectors |

MATLAB's [grain3Boundary_index](grain3Boundary_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/grain3boundary.py#L29">source</a></font>
{% endraw %}
