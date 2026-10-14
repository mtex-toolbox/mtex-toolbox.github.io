---
title: 'The class EBSD'
sidebar: function_reference_sidebar
permalink: EBSD_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD_index.html
status: Reference
---
{% raw %}
an EBSD map: positions, rotations and phase ids with the list of the phases' frames and the
properties of every measurement; MATLAB's EBSD

## Syntax

<div class="mx-form" markdown="1">

```python
ebsd = EBSD(pos, rot, phaseId, CSList)
```

The measurements as a list.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = EBSD(pos, rot, phaseId, CSList, {'mad': mad})
```

With properties.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = EBSD(pos, rot, phaseId, CSList, prop, unitCell=uC)
```

The shape of a pixel stated.

</div>

## Description

A map is a table of measurements, a row per pixel, or, gridified, the same arrays in map
shape, ebsd[i, j] the pixel of row i and column j. phaseId indexes CSList, 0 the not indexed
phase. A position that is NaN is dropped, as MATLAB drops it. The lattice of the positions,
square or hexagonal, is read off the positions, or off the unit cell when it is given;
loadEBSD, mtexdata and the simulations build maps the same way.

## Input

| `pos` | vector3d, or an (n, 2) or (n, 3) array, the centres of the pixels |
| `rotations` | rotation, the rotation of every pixel |
| `phaseId` | int array, the phase of every pixel as the index into CSList |
| `CSList` | phaseList, or a list of crystalFrame with 'notIndexed' first |
| `prop` | dict, a property per pixel of the shape of the map, ebsd.prop['mad'] and ebsd.mad |

## Keywords

| keyword | default | description |
|---|---|---|
| `unitCell` |  | vector3d or (k, 2) array, the corners of a pixel about its centre, from which the lattice is built |
| `scanUnit` |  | the unit of the positions |
| `frame` |  | specimenFrame of the positions, by default that of pos or the default one |
| `lattice` |  | the lattice of the positions, when it is known, instead of reading it off them |
| `meta` |  | dict, what a file states besides the measurements |
| `phaseMap` |  | the phase number the file gives each entry of CSList |
| `id` |  | the id of every pixel, by default its position in the list |
| `isPadding` |  | the mask of the cells a grid adds to close it, MATLAB's NaN phase |

## Output

| `ebsd` | EBSD |

## Properties

| `pos` | vector3d measurement positions in the specimen frame |
| `rotations` | rotation coefficients of the measured orientations |
| `phaseId` | zero-based index into CSList for each measurement; zero is notIndexed |
| `CSList` | phaseList containing the phase frames and mineral metadata |
| `orientations` | orientation data for a selection containing one indexed phase |
| `prop` | additional arrays such as band contrast or grainId, also accessible as attributes |
| `id` | measurement ids, distinct from positional array indices after selection |
| `lattice` | geometry and spacing of a regular scan, or None for scattered data |
| `shape` | measurement-array shape: a list or a spatially gridded array |
| `isPadding` | mask of grid cells without an original measurement |
| `scanUnit` | unit of the spatial coordinates |
| `grainId` | grain assignments, available after calcGrains has written them to the map |

## See also

[loadEBSD](loadEBSD_ang_py.html), [EBSDsquare](EBSDsquare_py.html), [gridify](gridify_py.html), [simulateEBSD](simulateEBSD_index_py.html), [EBSDImport](EBSDImport_py.html), [EBSDSelect](EBSDSelect_py.html), [EBSDPlotting](EBSDPlotting_py.html), [GrainReconstruction](GrainReconstruction_py.html)

## Members

| [calcGND](EBSD.calcGND_py.html) | the geometrically necessary dislocation content of every pixel after Pantleon (2008) |
| [calcGrains](EBSD.calcGrains_py.html) | the grains of a map, the pixels joined across every boundary the criterion keeps |
| [calcGROD](EBSD.calcGROD_py.html) | the grain reference orientation deviation, mis2mean: the misorientation of every pixel from the mean orientation of its grain, or from a given reference |
| [calcKernel](EBSD.calcKernel_py.html) | the kernel a density estimate of orientations or directions should use, a de la Vallee Poussin kernel of the halfwidth chosen from the sample |
| [calcMisorientation](EBSD.calcMisorientation_py.html) | uncorrelated misorientations: those of random pairs of measurements far enough apart that they say nothing about one another |
| [calcTensor](EBSD.calcTensor_py.html) | the texture average of a single crystal tensor over an ODF, a list of orientations or a map |
| [calcTraces](EBSD.calcTraces_py.html) | the traces of subregions of a map or of sets of grains, the direction their lamellae run along |
| [cat](EBSD.cat_py.html) | the list of several maps, the phases of the first, MATLAB's [ebsd1, ebsd2] |
| [color](EBSD.color_py.html) | the colour of the one phase of the map, read and set on its frame: ebsd['Diopside'].color |
| [colorList](EBSD.colorList_py.html) | the colours of the phases, in the order of CSList |
| [copy](EBSD.copy_py.html) | a copy of the map with its own arrays |
| [CS](EBSD.CS_py.html) | the crystal frame of the one indexed phase present |
| [cube2hex](EBSDhex.cube2hex_py.html) | the row and column (counted from 0) of the cells with cube coordinates x, y, z, NaN for a cell outside the grid |
| [curvature](EBSD.curvature_py.html) | the curvature tensor of every pixel, kappa = d omega / d x, in the specimen frame per scan unit |
| [dPos](EBSD.dPos_py.html) | MATLAB's spacing of the positions: the shortest distance from the first corner of the unit cell to the others, the step on a square lattice and the step over sqrt(3) on a hexagonal one, where lattice.dxy is the step |
| [dtype](EBSD.dtype_py.html) | the floating point type of the rotations, single or double precision |
| [EBSD](EBSD.EBSD_py.html) | an EBSD map: positions, rotations and phase ids with the list of the phases' frames and the properties of every measurement |
| [EBSDgrid](EBSDgrid.EBSDgrid_py.html) | an EBSD map: positions, rotations and phase ids with the list of the phases' frames and the properties of every measurement |
| [EBSDhex](EBSDhex.EBSDhex_py.html) | an EBSD map: positions, rotations and phase ids with the list of the phases' frames and the properties of every measurement |
| [EBSDsquare](EBSDsquare.EBSDsquare_py.html) | an EBSD map: positions, rotations and phase ids with the list of the phases' frames and the properties of every measurement |
| [EulerCorrection](EBSD.EulerCorrection_py.html) | the frame change the import applied to the Euler angles, the identity when none |
| [export](EBSD.export_py.html) | write the EBSD map to a vendor format or a text table |
| [extent](EBSD.extent_py.html) | the bounds of the measured positions, [xmin, xmax, ymin, ymax] |
| [fill](EBSD.fill_py.html) | the map with every pixel that carries no measurement filled, the measured ones left as they are |
| [fillByGrainId](EBSD.fillByGrainId_py.html) | the map with every pixel of a grain given the mean orientation of that grain, which is the map the grains describe rather than the one they were built from |
| [findByLocation](EBSD.findByLocation_py.html) | the measurements closest to positions, or within a radius of them |
| [findByOrientation](EBSD.findByOrientation_py.html) | select measurements close to a reference orientation or an orientation fibre |
| [flatten](EBSD.flatten_py.html) | the map as a list, one dimensional arrays in the order of the grid |
| [frame](EBSD.frame_py.html) | the specimen frame of the positions |
| [gradient](EBSD.gradient_py.html) | the derivative of the orientation along the two axes of the plane of the map, per unit length, as a pair of framed vectors |
| [gradientX](EBSD.gradientX_py.html) | the derivative of the orientation along the specimen x axis per unit length, gradient(ebsd, xvector) |
| [gradientY](EBSD.gradientY_py.html) | the derivative of the orientation along the specimen y axis per unit length, gradient(ebsd, yvector) |
| [gradientZ](EBSD.gradientZ_py.html) | the derivative of the orientation along the specimen z axis per unit length, gradient(ebsd, zvector) |
| [grainMean](EBSD.grainMean_py.html) | the average of a property over each grain |
| [gridify](EBSD.gridify_py.html) | the same map with its arrays in map shape, the missing cells padding |
| [hex2cube](EBSDhex.hex2cube_py.html) | the cube coordinates x, y, z of cells of a hexagonal grid, given by their row and column (counted from 0) or by their flat index |
| [how2plot](EBSD.how2plot_py.html) | the plotting convention of the specimen frame the map is written in |
| [indexedPhaseId](EBSD.indexedPhaseId_py.html) | the indexed phases at least one measurement belongs to |
| [inpolygon](EBSD.inpolygon_py.html) | the mask of the measurements inside a rectangle [x, y, w, h] or a polygon (N, 2), edges included |
| [interp](EBSD.interp_py.html) | the map read at positions of one's own choosing, a new map with these positions |
| [isempty](EBSD.isempty_py.html) | whether the map holds no measurement |
| [isGridded](EBSD.isGridded_py.html) | whether the arrays are in map shape, two dimensional |
| [isIndexed](EBSD.isIndexed_py.html) | whether a measurement belongs to an indexed phase |
| [isPadding](EBSD.isPadding_py.html) | the cells of a grid that hold no measurement |
| [KAM](EBSD.KAM_py.html) | the kernel average misorientation: the mean misorientation angle of every pixel to its neighbours |
| [latticeBasis](EBSD.latticeBasis_py.html) | the basis, the stencil and the spacing a cell polygon of four or six corners describes |
| [layout](EBSD.layout_py.html) | the directions the indices of a gridded map run along (MATLAB ebsd.layout) |
| [load](EBSD.load_py.html) | read an EBSD map from a supported vendor file or a text table |
| [mineralList](EBSD.mineralList_py.html) | the mineral names of the phases, in the order of CSList |
| [N](EBSD.N_py.html) | the normal of the measurement plane |
| [name2id](EBSD.name2id_py.html) | the phase id of a mineral name, MATLAB's name2id |
| [ndim](EBSD.ndim_py.html) | the number of array axes, 1 for a list and 2 for a grid |
| [orientations](EBSD.orientations_py.html) | the orientations of the one indexed phase present, framed by it and by the specimen |
| [phase](EBSD.phase_py.html) | the phase numbers of the file, the phase ids translated through phaseMap |
| [plot](EBSD.plot_py.html) | a spatial EBSD map, coloured by phase, by a value, by orientation or by colours given |
| [project2FundamentalRegion](EBSD.project2FundamentalRegion_py.html) | the map with every orientation replaced by its representative in the fundamental region of its phase (MATLAB's EBSD.project2FundamentalRegion) |
| [quiver](EBSD.quiver_py.html) | arrows: tangent vectors at directions, a vector or axis field on the sphere, arrows at orientations in the sections of the current figure, or directions on a map or a volume |
| [reduce](EBSD.reduce_py.html) | every n-th measurement along each lattice direction, which is the map at a coarser step |
| [rotate](EBSD.rotate_py.html) | a rigid motion of the map |
| [rotate](EBSDsquare.rotate_py.html) | a rigid motion of the map |
| [shape](EBSD.shape_py.html) | the shape of the map, (n,) for a list and (rows, columns) for a grid |
| [shift](EBSD.shift_py.html) | the map with every position moved by the vector v, the arrays not reordered |
| [size](EBSD.size_py.html) | the number of measurements, the padding of a grid included |
| [smooth](EBSD.smooth_py.html) | the map with its orientations denoised, every one replaced by one computed from its neighbours, within the grains where the map knows them and within the phases otherwise |
| [spatialProfile](EBSD.spatialProfile_py.html) | the measurements along a polyline, in the order they are met, and the distance along the line of each of them |
| [spatialProfile](EBSDsquare.spatialProfile_py.html) | the measurements along a polyline, in the order they are met, and the distance along the line of each of them |
| [subsref](EBSD.subsref_py.html) |  |
| [text](EBSD.text_py.html) | text at directions on the sphere, at the measurements or grains of a map, or at a point of the current axes |
| [transform](EBSD.transform_py.html) | any map of the positions |
| [unitCell](EBSD.unitCell_py.html) | the cell of the lattice about a site, as its corners |
| [weightedBurgersVec](EBSD.weightedBurgersVec_py.html) | the weighted Burgers vector: the net Burgers vector of the dislocations crossing the map per unit area, by the integral or the gradient method |
| [x](EBSD.x_py.html) | the x coordinates of the positions |
| [xyz](EBSD.xyz_py.html) | the positions as one array of shape shape + (3,) |
| [y](EBSD.y_py.html) | the y coordinates of the positions |
| [z](EBSD.z_py.html) | the z coordinates of the positions |

## Used on

[EBSDKAM](EBSDKAM_py.html)

MATLAB's [EBSD_index](EBSD_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/ebsd.py#L41">source</a></font>
{% endraw %}
