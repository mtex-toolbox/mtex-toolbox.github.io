---
title: 'Spherical and orientation grids'
sidebar: function_reference_sidebar
permalink: geometryGrids_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: geometryGrids_index.html
status: Reference
---
{% raw %}
Grids and triangulations for sampling directions and rotations, and for finding nearby samples.

| Class or function | Description |
| --- | --- |
| [S1Grid](S1Grid_index_py.html) | a sorted list of angles on an interval [min, max], periodic or not, the nearest neighbour and radius search of the tensor product grids S2Grid and SO3Grid |
| [S2Grid](S2Grid_index_py.html) | a grid on the sphere with ring structure, a ladder of polar angles theta and one azimuth grid per ring, whose nearest and radius searches use that structure |
| [S2Triangulation](S2Triangulation_index_py.html) | the Delaunay triangulation of directions on the sphere, their convex hull: the triangles T, counterclockwise from outside, and the triangle opposite each vertex |
| [SO3Grid](SO3Grid_index_py.html) | the equispaced grid of orientations over one fundamental region of its frame pair, MATLAB's SO3Grid: an S2 grid of the images of z with a ladder of gamma per node, so a search costs three binary searches |
| [fibonacciS2Grid](fibonacciS2Grid_index_py.html) | the spherical Fibonacci grid: N = 2n + 1 points along a spiral, z linear in the index and the azimuth advancing by the golden angle |
| [quadratureS2Grid](quadratureS2Grid_index_py.html) | nodes and surface-area weights for integrating functions on the unit sphere |
| [fibonacciSO3Grid](fibonacciSO3Grid_py.html) | a low discrepancy grid of orientations from a super-Fibonacci spiral, restricted to the fundamental region of the frame pair |
| [quadratureSO3Grid](quadratureSO3Grid_index_py.html) | the quadrature grid on SO(3) of a bandwidth: the nodes and weights that integrate every harmonic function up to that degree exactly |
| [HEALPixS2Grid](HEALPixS2Grid_py.html) | the HEALPix nodes of the sphere as a list of directions |
| [SO3FibonacciGrid](SO3FibonacciGrid_index_py.html) | the super-Fibonacci grid of orientations, a low-discrepancy quaternion spiral trimmed to one fundamental region of the frame pair, searched through the quaternion k-d tree |
| [equispacedS2Grid](equispacedS2Grid_py.html) | an equispaced spherical grid, nearly equidistant directions on rings of constant polar angle |
| [regularS2Grid](regularS2Grid_py.html) | a regular spherical grid, the tensor product of a ladder of polar angles and a ladder of azimuths, the layout of pole figure files |
| [equispacedSO3Grid](equispacedSO3Grid_py.html) | nearly equidistant orientations covering one fundamental region of the frame pair |
| [regularSO3Grid](regularSO3Grid_py.html) | the regular raster of Euler angles over the Euler box of the frames, as the ODF sections show it |
| [superfibonacciSO3Grid](superfibonacciSO3Grid_py.html) | a super-Fibonacci grid of orientations covering one fundamental region of the frame pair, its resolution the mean spacing of nearest neighbours |
| [localOrientationGrid](localOrientationGrid_py.html) | an equispaced grid of orientations in a ball about a centre |
| [localS2Grid](localS2Grid_py.html) | an equispaced grid of directions in a spherical cap about a centre |
{% endraw %}
