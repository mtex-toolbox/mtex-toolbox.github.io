---
title: 'The class EBSD3'
sidebar: function_reference_sidebar
permalink: EBSD3_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD3_index.html
status: Reference
---
{% raw %}
the measurements of a volume, a list or an (n1, n2, n3) array of voxels with their positions,
rotations and phases, the voxel lattice inferred from the positions when not given

```python
ebsd = EBSD3(pos, rot, phaseId, CSList)
ebsd = EBSD3(pos, rot, phaseId, CSList, prop={'ci': ci})
```

## Members

| | |
|---|---|
| [calcGND](EBSD3square.calcGND_py.html) | gnd, rho = calcGND(ebsd, dS): the geometrically necessary dislocation content of every pixel after Pantleon (2008), MATLAB's route: the curvature of the map, the systems rotated into every pixel, the densities of least total line energy reproducing the curvature |
| [calcGrains](EBSD3.calcGrains_py.html) | the grains of a map, the pixels joined across every boundary the criterion keeps: a misorientation angle below angle (or threshold), or a grainBoundaryCriterion |
| [calcGrains](EBSD3square.calcGrains_py.html) | the grains of a map, the pixels joined across every boundary the criterion keeps: a misorientation angle below angle (or threshold), or a grainBoundaryCriterion |
| [calcTraces](EBSD3.calcTraces_py.html) | traces, rel, cSize = calcTraces(ebsd \| grains, clusterId, 'Radon' \| 'Fourier' \| 'calliper' \| 'hist', minClusterSize=100) |
| [cat](EBSD3.cat_py.html) | the list of several maps, the phases of the first, MATLAB's [ebsd1, ebsd2] |
| [copy](EBSD3.copy_py.html) | a copy of the volume with its own arrays, the frames shared |
| [curvature](EBSD3square.curvature_py.html) | the curvature tensor of every voxel, the gradients along the three lattice directions, in the specimen frame and in the inverse scan unit |
| [d1](EBSD3.d1_py.html) | the first step vector of the voxel lattice |
| [d2](EBSD3.d2_py.html) | the second step vector of the voxel lattice |
| [d3](EBSD3.d3_py.html) | the third step vector of the voxel lattice |
| [dPos](EBSD3.dPos_py.html) | the shortest step of the voxel lattice, NaN without a lattice |
| [dx](EBSD3.dx_py.html) | the length of the first step of the voxel lattice |
| [dy](EBSD3.dy_py.html) | the length of the second step of the voxel lattice |
| [dz](EBSD3.dz_py.html) | the length of the third step of the voxel lattice |
| [EBSD3](EBSD3.EBSD3_py.html) | the measurements of a volume, a list or an (n1, n2, n3) array of voxels with their positions, rotations and phases, the voxel lattice inferred from the positions when not given |
| [EBSD3square](EBSD3square.EBSD3square_py.html) | the measurements of a volume, a list or an (n1, n2, n3) array of voxels with their positions, rotations and phases, the voxel lattice inferred from the positions when not given |
| [extent](EBSD3.extent_py.html) | the bounding box of the voxels, [xmin, xmax, ymin, ymax, zmin, zmax], the padding left out |
| [fill](EBSD3.fill_py.html) | the empty voxels, padding and not indexed, given the phase, orientation and properties of the nearest measured voxel |
| [fillByGrainId](EBSD3.fillByGrainId_py.html) | the map with every pixel of a grain given the mean orientation of that grain, which is the map the grains describe rather than the one they were built from |
| [findByLocation](EBSD3.findByLocation_py.html) | the measurements closest to positions, or within a radius of them |
| [flatten](EBSD3.flatten_py.html) | the voxels as a list, the volume itself when it is one |
| [gradientDim](EBSD3.gradientDim_py.html) | the derivative of the orientation along the array axis dim of a gridded volume per unit length, the forward difference, backwards at the last voxel, NaN across a grain boundary |
| [gradientX](EBSD3.gradientX_py.html) | the derivative of the orientation along the first axis of the volume per unit length, gradientDim(ebsd, 0) |
| [gradientY](EBSD3.gradientY_py.html) | the derivative of the orientation along the second axis of the volume per unit length, gradientDim(ebsd, 1) |
| [gradientZ](EBSD3.gradientZ_py.html) | the derivative of the orientation along the third axis of the volume per unit length, gradientDim(ebsd, 2) |
| [gridify](EBSD3.gridify_py.html) | the list on the (n1, n2, n3) array of its lattice, every cell no voxel occupies padded as notIndexed |
| [interp](EBSD3.interp_py.html) | the voxel holding every position, or none outside the box of voxel centres, as MATLAB's nearest griddedInterpolant without extrapolation |
| [interp](EBSD3square.interp_py.html) | the voxel holding every position, or none outside the box of voxel centres, as MATLAB's nearest griddedInterpolant without extrapolation |
| [isGridded](EBSD3.isGridded_py.html) | whether the voxels are held as an (n1, n2, n3) array |
| [KAM](EBSD3.KAM_py.html) | the mean misorientation angle to the voxels within order steps along the axes, among those of the same grain, or below the threshold where the volume has no grains |
| [load](EBSD3.load_py.html) | EBSD3.load('volume.dream3d'), EBSD3.load(['s0.ang', 's1.ang'], z=[0, 1]) |
| [N](EBSD3.N_py.html) | a volume has no measurement plane |
| [plot](EBSD3.plot_py.html) | plot(ebsd), plot(ebsd, values), plot(ebsd, ori): three orthogonal slices through the voxels of a volume, as MATLAB's EBSD3/plot shows it in slice planes |
| [reduce](EBSD3.reduce_py.html) | every n-th measurement along each lattice direction, which is the map at a coarser step |
| [slice](EBSD3.slice_py.html) | the section through a plane: the volume sampled on a square grid of the voxel spacing in the plane, spanned by the direction of the box nearest to the plane and the one across |
| [smooth](EBSD3.smooth_py.html) | the map with every orientation replaced by one computed from its neighbours, within the grains where the map knows them and within the phases where it does not |
| [spatialProfile](EBSD3.spatialProfile_py.html) | the voxels along a polyline, sampled at the voxel spacing, and their distance along it |
| [spatialProfile](EBSD3square.spatialProfile_py.html) | the voxels along a polyline, sampled at the voxel spacing, and their distance along it |
| [weightedBurgersVec](EBSD3.weightedBurgersVec_py.html) | weightedBurgersVec(ebsd), weightedBurgersVec(ebsd, windowSize=2), weightedBurgersVec(ebsd, 'gradient', stencil='full'): the net Burgers vector crossing the map per unit area, after Wheeler et al |

MATLAB's [EBSD3_index](EBSD3_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/ebsd3.py#L28">source</a></font>
{% endraw %}
