---
title: 'The class grain3d'
sidebar: function_reference_sidebar
permalink: grain3d_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain3d_index.html
status: Reference
---
{% raw %}
the grains of a volume as closed polyhedra, given by the incidence I_GF of grains and the
faces of a grain3Boundary: what calcGrains returns for a volume, the counterpart of grain2d

## Syntax

```python
grains = calcGrains(ebsd3)
grain3d.fromFaces(V, F, I_GF, ori, CSList, phaseId)
grain3d.load('grains.dream3d')
```

## Members

| | |
|---|---|
| [allV](grain3d.allV_py.html) | all vertices of the boundary, as vectors |
| [cat](grain3d.cat_py.html) | cat(a, b, ...) is type(a).cat(a, b, ...): the list of the operands, MATLAB's [a, b], the carried attributes joined |
| [centroid](grain3d.centroid_py.html) | the centroid of every grain, the centre of mass of the polyhedron |
| [color](grain3d.color_py.html) | the colour of the phase of every grain, n x 3, as MATLAB's grains.color |
| [CS](grain3d.CS_py.html) | the crystal frame of grains of one indexed phase |
| [diameter](grain3d.diameter_py.html) | the diameter of every grain, the largest distance between two of its vertices |
| [extent](grain3d.extent_py.html) | the box of the vertices, [xmin, xmax, ymin, ymax, zmin, zmax] |
| [F](grain3d.F_py.html) | the faces of the boundary, an (m, 3) array of triangles or a list of polygons |
| [fromFaces](grain3d.fromFaces_py.html) | the grains of vertices, faces and the incidence of grains and faces |
| [grain3d](grain3d.grain3d_py.html) | the grains of a volume as closed polyhedra, given by the incidence I_GF of grains and the faces of a grain3Boundary: what calcGrains returns for a volume, the counterpart of grain2d |
| [histogram](grain3d.histogram_py.html) | histogram(grains), histogram(grains, prop, bins): the area weighted distribution of a grain property as one histogram per indexed phase, drawn over each other, or with grouped=True side by side (MATLAB's hist) |
| [id2ind](grain3d.id2ind_py.html) | the position of grain ids |
| [indexedPhaseId](grain3d.indexedPhaseId_py.html) | the ids of the indexed phases among the grains |
| [intersected](grain3d.intersected_py.html) | whether a plane runs through a grain |
| [isIndexed](grain3d.isIndexed_py.html) | whether the phase of every grain is indexed |
| [load](grain3d.load_py.html) | grain3d.load('grains.dream3d'), grain3d.load('grains.tess', CS=cs) |
| [meanOrientation](grain3d.meanOrientation_py.html) | the mean orientations of the grains, which must be of one phase |
| [midPoint](grain3d.midPoint_py.html) | the largest distance between two vertices of every grain, on MATLAB's rounding to 1e-4 the centre of the box of the vertices, as MATLAB's midPoint |
| [mineralList](grain3d.mineralList_py.html) | the names of the phases of the phase list |
| [neighbors](grain3d.neighbors_py.html) | the ids of neighbouring grains |
| [numFaces](grain3d.numFaces_py.html) | the number of faces of every grain |
| [numNeighbors](grain3d.numNeighbors_py.html) | the number of neighbouring grains of every grain |
| [orientFaces](grain3d.orientFaces_py.html) | the faces turned consistently around every grain, the normals out of it, as MATLAB's orientFaces |
| [plot](grain3d.plot_py.html) | the 3D grains drawn by their faces, coloured by phase, by a value or an orientation per grain, or in one colour |
| [principalComponents](grain3d.principalComponents_py.html) | the half axes of the ellipsoid of the same second moments and volume, the longest first |
| [quiver](grain3d.quiver_py.html) | arrows at the centroids of 3D grains or of their boundary faces |
| [reduceBoundary](grain3d.reduceBoundary_py.html) | the grains with their triangulated boundary coarsened, the vertices within cells of n edges merged |
| [refineBoundary](grain3d.refineBoundary_py.html) | the grains with their triangulated boundary refined, every triangle split into four at the midpoints of its edges, n times |
| [rotate](grain3d.rotate_py.html) | the grains turned about a centre, their faces and their orientations |
| [size](grain3d.size_py.html) | the number of grains |
| [slice](grain3d.slice_py.html) | the 2D grains a plane cuts from 3D grains |
| [smoothBoundary](grain3d.smoothBoundary_py.html) | the grains with their boundary surfaces smoothed, hierarchically: the triple lines along themselves first, then the faces |
| [subsref](grain3d.subsref_py.html) |  |
| [surface](grain3d.surface_py.html) | MATLAB's name for the surface area |
| [surfaceArea](grain3d.surfaceArea_py.html) | the surface area of every grain, the sum of the areas of its faces |
| [triangulate](grain3d.triangulate_py.html) | the faces of polygonal grains as triangles, the fan from the first corner of every face |
| [V](grain3d.V_py.html) | the vertices the faces of the boundary use |
| [volume](grain3d.volume_py.html) | the volume of every grain, by the divergence theorem over its oriented faces |

MATLAB's [grain3d_index](grain3d_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/grain3d.py#L33">source</a></font>
{% endraw %}
