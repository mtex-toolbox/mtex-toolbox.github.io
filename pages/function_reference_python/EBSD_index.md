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
properties, a scattered list or, gridified, arrays in map shape; nan positions are dropped and
the lattice is read off the positions or a unit cell

```python
EBSD(pos, rotations, phaseId, CSList, prop)
EBSD(pos, rotations, phaseId, CSList, prop, unitCell=uC)
```

## Members

| | |
|---|---|
| [calcGND](EBSD.calcGND_py.html) | gnd, rho = calcGND(ebsd, dS): the geometrically necessary dislocation content of every pixel after Pantleon (2008), MATLAB's route: the curvature of the map, the systems rotated into every pixel, the densities of least total line energy reproducing the curvature |
| [calcGrains](EBSD.calcGrains_py.html) | the grains of a map, the pixels joined across every boundary the criterion keeps: a misorientation angle below angle (or threshold), or a grainBoundaryCriterion |
| [calcGROD](EBSD.calcGROD_py.html) | the grain reference orientation deviation, mis2mean: the misorientation of every pixel from the mean orientation of its grain, or from a given reference |
| [calcKernel](EBSD.calcKernel_py.html) | the de la Vallee Poussin kernel a density estimate of orientations or directions should use (MATLAB calcKernel): 'UCV', the default, and 'conservative' select from the degree energies of the sample and are bounded below by a noise floor unless noiseFloor=False (docs/plans/halfwidth.md) |
| [calcMisorientation](EBSD.calcMisorientation_py.html) | uncorrelated misorientations: random pairs of measurements far enough apart that they say nothing about one another, which is what an uncorrelated distribution is compared against |
| [calcTensor](EBSD.calcTensor_py.html) | the texture average of a single crystal tensor |
| [calcTraces](EBSD.calcTraces_py.html) | traces, rel, cSize = calcTraces(ebsd \| grains, clusterId, 'Radon' \| 'Fourier' \| 'calliper' \| 'hist', minClusterSize=100) |
| [cat](EBSD.cat_py.html) | the list of several maps, the phases of the first, MATLAB's [ebsd1, ebsd2] |
| [color](EBSD.color_py.html) | the colour of the one phase of the map, read and set on its frame: ebsd['Diopside'].color |
| [colorList](EBSD.colorList_py.html) | the colours of the phases, in the order of CSList |
| [copy](EBSD.copy_py.html) | a copy of the map with its own arrays |
| [CS](EBSD.CS_py.html) | the crystal frame of the one indexed phase present |
| [cube2hex](EBSDhex.cube2hex_py.html) | the row and column (counted from 0) of the cells with cube coordinates x, y, z, NaN for a cell outside the grid |
| [curvature](EBSD.curvature_py.html) | the curvature tensor of every pixel, kappa = d omega / d x, in the specimen frame per scan unit, its rows the components of the rotation vector and its columns the directions of the specimen |
| [dPos](EBSD.dPos_py.html) | MATLAB's spacing of the positions: the shortest distance from the first corner of the unit cell to the others, the step on a square lattice and the step over sqrt(3) on a hexagonal one, where lattice.dxy is the step |
| [dtype](EBSD.dtype_py.html) | the floating point type of the rotations, single or double precision |
| [EBSD](EBSD.EBSD_py.html) | an EBSD map: positions, rotations and phase ids with the list of the phases' frames and the properties, a scattered list or, gridified, arrays in map shape |
| [EBSDgrid](EBSDgrid.EBSDgrid_py.html) | an EBSD map: positions, rotations and phase ids with the list of the phases' frames and the properties, a scattered list or, gridified, arrays in map shape |
| [EBSDhex](EBSDhex.EBSDhex_py.html) | an EBSD map: positions, rotations and phase ids with the list of the phases' frames and the properties, a scattered list or, gridified, arrays in map shape |
| [EBSDsquare](EBSDsquare.EBSDsquare_py.html) | an EBSD map: positions, rotations and phase ids with the list of the phases' frames and the properties, a scattered list or, gridified, arrays in map shape |
| [EulerCorrection](EBSD.EulerCorrection_py.html) | the frame change the import applied to the Euler angles, the identity when none |
| [export](EBSD.export_py.html) | ebsd.export('map.ang'): the map written by the format the extension names |
| [extent](EBSD.extent_py.html) | the bounds of the measured positions, [xmin, xmax, ymin, ymax] |
| [fill](EBSD.fill_py.html) | the map with every pixel that carries no measurement solved for, the measured ones left exactly as they are: the hole is filled with the continuation of the field that encloses it |
| [fillByGrainId](EBSD.fillByGrainId_py.html) | the map with every pixel of a grain given the mean orientation of that grain, which is the map the grains describe rather than the one they were built from |
| [findByLocation](EBSD.findByLocation_py.html) | the measurements closest to positions, or within a radius of them |
| [findByOrientation](EBSD.findByOrientation_py.html) | the measurements of the phase of ori within an angle of it, or of a fibre |
| [flatten](EBSD.flatten_py.html) | the map as a list, one dimensional arrays in the order of the grid |
| [frame](EBSD.frame_py.html) | the specimen frame of the positions |
| [gradient](EBSD.gradient_py.html) | the derivative of the orientation along the two axes of the plane of the map, per unit length, as a pair of framed vectors |
| [gradientX](EBSD.gradientX_py.html) | the derivative of the orientation along the specimen x axis per unit length, gradient(ebsd, xvector) |
| [gradientY](EBSD.gradientY_py.html) | the derivative of the orientation along the specimen y axis per unit length, gradient(ebsd, yvector) |
| [gradientZ](EBSD.gradientZ_py.html) | the derivative of the orientation along the specimen z axis per unit length, gradient(ebsd, zvector), which a planar map has only where z lies in its plane |
| [grainMean](EBSD.grainMean_py.html) | the average of a property over each grain: one value per grain when the grains are given, and the value of its own grain at every pixel when they are not |
| [gridify](EBSD.gridify_py.html) | the same map with its arrays in map shape, the missing cells padding |
| [hex2cube](EBSDhex.hex2cube_py.html) | the cube coordinates x, y, z of cells of a hexagonal grid, given by their row and column (counted from 0) or by their flat index |
| [how2plot](EBSD.how2plot_py.html) | the plotting convention of the specimen frame the map is written in |
| [indexedPhaseId](EBSD.indexedPhaseId_py.html) | the indexed phases at least one measurement belongs to |
| [inpolygon](EBSD.inpolygon_py.html) | the mask of the measurements inside a rectangle [x, y, w, h] or a polygon (N, 2), edges included |
| [interp](EBSD.interp_py.html) | the map read at positions of one's own choosing: the field is filled where it has holes, by the same solver smooth and fill use, and interpolated within the lattice cell each position falls in, linearly in the tangent space of the component the nearest measurement belongs to and over the corners that belong to it as well, so nothing is averaged across a grain boundary |
| [isempty](EBSD.isempty_py.html) | whether the map holds no measurement |
| [isGridded](EBSD.isGridded_py.html) | whether the arrays are in map shape, two dimensional |
| [isIndexed](EBSD.isIndexed_py.html) | whether a measurement belongs to an indexed phase |
| [isPadding](EBSD.isPadding_py.html) | the cells of a grid that hold no measurement |
| [KAM](EBSD.KAM_py.html) | the kernel average misorientation: the mean misorientation angle of a pixel to its neighbours, NaN where it has none to compare with |
| [latticeBasis](EBSD.latticeBasis_py.html) | the basis, the stencil and the spacing a cell polygon of four or six corners describes |
| [layout](EBSD.layout_py.html) | the directions the indices of a gridded map run along (MATLAB ebsd.layout) |
| [load](EBSD.load_py.html) | EBSD.load('map.ang'): the map a file holds, read by the interfaces layer above this one |
| [mineralList](EBSD.mineralList_py.html) | the mineral names of the phases, in the order of CSList |
| [N](EBSD.N_py.html) | the normal of the measurement plane |
| [name2id](EBSD.name2id_py.html) | the phase id of a mineral name, MATLAB's name2id |
| [ndim](EBSD.ndim_py.html) | the number of array axes, 1 for a list and 2 for a grid |
| [orientations](EBSD.orientations_py.html) | the orientations of the one indexed phase present, framed by it and by the specimen |
| [phase](EBSD.phase_py.html) | the phase numbers of the file, the phase ids translated through phaseMap |
| [plot](EBSD.plot_py.html) | plot(ebsd), plot(ebsd, values), plot(ebsd, ori), plot(ebsd, rgb), plot(ebsd, faceColor='black') |
| [project2FundamentalRegion](EBSD.project2FundamentalRegion_py.html) | the map with every orientation replaced by its representative in the fundamental region of its phase (MATLAB's EBSD.project2FundamentalRegion) |
| [quiver](EBSD.quiver_py.html) | quiver(v, w), quiver(vF), quiver(ori, w): arrows at directions, a vector or axis field, or arrows at orientations in the sections of the current figure |
| [reduce](EBSD.reduce_py.html) | every n-th measurement along each lattice direction, which is the map at a coarser step |
| [rotate](EBSD.rotate_py.html) | a rigid motion of the map |
| [rotate](EBSDsquare.rotate_py.html) | a rigid motion of the map |
| [shape](EBSD.shape_py.html) | the shape of the map, (n,) for a list and (rows, columns) for a grid |
| [shift](EBSD.shift_py.html) | the map with every position moved by the vector v, the arrays not reordered |
| [size](EBSD.size_py.html) | the number of measurements, the padding of a grid included |
| [smooth](EBSD.smooth_py.html) | the map with every orientation replaced by one computed from its neighbours, within the grains where the map knows them and within the phases where it does not |
| [spatialProfile](EBSD.spatialProfile_py.html) | the measurements along a polyline, in the order they are met, and the distance along the line of each of them, as MATLAB's pair |
| [spatialProfile](EBSDsquare.spatialProfile_py.html) | the measurements along a polyline, in the order they are met, and the distance along the line of each of them, as MATLAB's pair |
| [subsref](EBSD.subsref_py.html) |  |
| [text](EBSD.text_py.html) | text(v, labels): text at directions, text(v, labeled=True) each direction's own name |
| [transform](EBSD.transform_py.html) | any map of the positions |
| [unitCell](EBSD.unitCell_py.html) | the cell of the lattice about a site, as its corners |
| [weightedBurgersVec](EBSD.weightedBurgersVec_py.html) | weightedBurgersVec(ebsd), weightedBurgersVec(ebsd, windowSize=2), weightedBurgersVec(ebsd, 'gradient', stencil='full'): the net Burgers vector crossing the map per unit area, after Wheeler et al |
| [x](EBSD.x_py.html) | the x coordinates of the positions |
| [xyz](EBSD.xyz_py.html) | the positions as one array of shape shape + (3,) |
| [y](EBSD.y_py.html) | the y coordinates of the positions |
| [z](EBSD.z_py.html) | the z coordinates of the positions |

## Used on

[EBSDKAM](EBSDKAM_py.html)

MATLAB's [EBSD_index](EBSD_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/ebsd.py#L41">source</a></font>
{% endraw %}
