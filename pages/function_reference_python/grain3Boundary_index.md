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
the faces between the grains of a volume, triangles or polygons over the vertices allV, with
the grains, voxels and phases on their two sides and the misrotation across: grains.boundary

## Members

| | |
|---|---|
| [area](grain3Boundary.area_py.html) | the area of every face |
| [calcGBND](grain3Boundary.calcGBND_py.html) | the boundary normal distribution of a 3D boundary: the face normals in specimen coordinates weighted by area, with grains the normals in the crystal frame of the one phase, with moriRef the grain boundary character of the faces whose misorientation is near moriRef |
| [cat](grain3Boundary.cat_py.html) | cat(a, b, ...) is type(a).cat(a, b, ...): the list of the operands, MATLAB's [a, b], the carried attributes joined |
| [centroid](grain3Boundary.centroid_py.html) | the mean of the corners of a triangle, the area centroid of a polygon |
| [diameter](grain3Boundary.diameter_py.html) | the largest distance between two corners of every face |
| [edges](grain3Boundary.edges_py.html) | the edges of a triangulated boundary, sorted pairs of vertices, and the three edges of every face |
| [F](grain3Boundary.F_py.html) | the triangles as an (m, 3) array, a polygonal boundary as a list of index arrays |
| [flip](grain3Boundary.flip_py.html) | the two sides exchanged, of all faces or a selection, as MATLAB's flip |
| [flipN](grain3Boundary.flipN_py.html) | the faces turned round: the corners in the reverse order, the normals the other way |
| [grain3Boundary](grain3Boundary.grain3Boundary_py.html) | the faces between the grains of a volume, triangles or polygons over the vertices allV, with the grains, voxels and phases on their two sides and the misrotation across: grains.boundary |
| [hasGrain](grain3Boundary.hasGrain_py.html) | whether a face touches a grain, or lies between two |
| [hasPhase](grain3Boundary.hasPhase_py.html) | the faces with a phase on one side, or between two phases, by name, frame or number |
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
| [plot](grain3Boundary.plot_py.html) | plot(gB), plot(gB, values), plot(gB, faceColor=...): the faces of a 3D grain boundary |
| [quiver](grain3Boundary.quiver_py.html) | quiver(grains, dir), quiver(gB, dir): arrows at the centroids of 3D grains or of their boundary faces, as MATLAB's |
| [size](grain3Boundary.size_py.html) | the number of faces |
| [subsref](grain3Boundary.subsref_py.html) |  |
| [V](grain3Boundary.V_py.html) | the vertices the faces use, as vectors |

MATLAB's [grain3Boundary_index](grain3Boundary_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/grain3boundary.py#L29">source</a></font>
{% endraw %}
