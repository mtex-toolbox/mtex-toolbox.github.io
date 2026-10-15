---
title: 'Lattice and grid helpers'
sidebar: function_reference_sidebar
permalink: latticeHelpers_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: latticeHelpers_index.html
status: Reference
---
{% raw %}
Lattices, measurement planes and grid variants used to locate and index measurements in maps and volumes.

| Class or function | Description |
| --- | --- |
| [lattice](lattice_index_py.html) | the lattice an EBSD map is measured on: the basis of the two shortest translations, the cell shape 'square' or 'hex', the plane and the integer index of every position, inferred from the positions or fitted to a known basis |
| [mapPlane](mapPlane_index_py.html) | the plane of a set of positions with an orthonormal frame: the normal fitted and pointing up, e1 the given direction projected into the plane, the origin the specimen origin's foot on it |
| [voxelLattice](voxelLattice_index_py.html) | the lattice a volume is measured on: the origin, the translations d1, d2, d3 as the rows of D and the integer index of every voxel, voxel n at origin + ijk[n] @ D |
| [cellComplex](cellComplex_index_py.html) | the spatial decomposition of a map, one cell per site: the vertices V, the vertex pair F and the site pair of every face, the sites and the lattice |
| [latticeBasis](latticeBasis_py.html) | the basis, the stencil and the spacing a cell polygon of four or six corners describes |
| [EBSDsquare](EBSDsquare_py.html) | a map on a square grid from arrays in map shape, the rows of the array its rows of pixels |
| [EBSD3square](EBSD3square_py.html) | a volume on its (n1, n2, n3) array of voxels, on a rectangular lattice |
{% endraw %}
