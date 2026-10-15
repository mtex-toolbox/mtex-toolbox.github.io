---
title: 'The class EBSD3'
sidebar: function_reference_sidebar
permalink: EBSD3square_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD3square_index.html
status: Reference
---
{% raw %}
the measurements of a volume: positions, rotations and phase ids of voxels with the list of
the phases' frames and the properties of every measurement

## Syntax

<div class="mx-form" markdown="1">

```python
ebsd = EBSD3(pos, rot, phaseId, CSList)
```

The voxels as a list.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = EBSD3(pos, rot, phaseId, CSList, prop={'ci': ci})
```

With properties.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = EBSD3(pos, rot, phaseId, CSList, D=D)
```

The steps of the voxel lattice stated.

</div>

<div class="mx-form" markdown="1">

```python
ebsd = EBSD3square(rot, phaseId, CSList, dxyz=(dx, dy, dz))
```

An (n1, n2, n3) array of voxels.

</div>

## Description

A volume is the three dimensional EBSD: a list of voxels, or arrays of shape (n1, n2, n3)
with ebsd[i, j, k] one voxel, where orientation gradients are available along all three
axes. phaseId indexes CSList, 0 being the not indexed phase. EBSD3.load reads the volumes of
DREAM.3D and Neper.

The voxel lattice, the origin and the three steps d1, d2, d3, is inferred from the
positions unless it is given: the steps are the shortest independent differences between
neighbours, or the rows of D. Positions on no lattice leave ebsd.lattice None.

## Input

| `pos` | vector3d, or an (..., 3) array, the centres of the voxels |
| `rotations` | rotation, the rotation of every voxel |
| `phaseId` | int array, the phase of every voxel as the index into CSList |
| `CSList` | phaseList, or a list of crystalFrame with 'notIndexed' first |
| `prop` | dict, a property per voxel of the shape of the volume |

## Keywords

| keyword | default | description |
|---|---|---|
| `scanUnit` |  | the unit of the positions |
| `frame` |  | specimenFrame of the positions, by default that of pos or the default one |
| `lattice` |  | voxelLattice of the positions, when it is known, instead of inferring it |
| `meta` |  | dict, what a file states besides the measurements |
| `phaseMap` |  | the phase number the file gives each entry of CSList |
| `id` |  | the id of every voxel, by default its position in the list |
| `isPadding` |  | the mask of the cells a grid adds to close it |
| `D` |  | 3 x 3 array, the steps of the voxel lattice as rows, instead of inferring them |

## Output

| `ebsd` | EBSD3 |

## Properties

| `pos` | vector3d voxel-centre positions |
| `rotations` | measured rotation at each voxel |
| `phaseId` | phase-list index at each voxel, zero for notIndexed |
| `CSList` | phase metadata and crystal frames |
| `shape` | voxel-array shape or shape of a scattered selection |
| `lattice` | voxel grid geometry and spacing |
| `isPadding` | mask of unmeasured cells introduced by gridding |
| `scanUnit` | unit of spatial positions |

## See also

[EBSD3square](EBSD3square_py.html), [EBSD](EBSD_index_py.html), [voxelLattice](voxelLattice_index_py.html), [calcGrains](EBSD.calcGrains_py.html), [grain3d](grain3d_index_py.html), [EBSD3Analysis](EBSD3Analysis_py.html)

## Members

| [calcGND](EBSD3square.calcGND_py.html) | the geometrically necessary dislocation content of every pixel after Pantleon (2008) |
| [calcGrains](EBSD3.calcGrains_py.html) | the grains of a map, the pixels joined across every boundary the criterion keeps |
| [calcGrains](EBSD3square.calcGrains_py.html) | the grains of a map, the pixels joined across every boundary the criterion keeps |
| [calcTraces](EBSD3.calcTraces_py.html) | the traces of subregions of a map or of sets of grains, the direction their lamellae run along |
| [cat](EBSD3.cat_py.html) | the list of several maps, the phases of the first, MATLAB's [ebsd1, ebsd2] |
| [copy](EBSD3.copy_py.html) | a copy of the volume with its own arrays, the frames shared |
| [curvature](EBSD3square.curvature_py.html) | the curvature tensor of every voxel |
| [d1](EBSD3.d1_py.html) | the first step vector of the voxel lattice |
| [d2](EBSD3.d2_py.html) | the second step vector of the voxel lattice |
| [d3](EBSD3.d3_py.html) | the third step vector of the voxel lattice |
| [dPos](EBSD3.dPos_py.html) | the shortest step of the voxel lattice, NaN without a lattice |
| [dx](EBSD3.dx_py.html) | the length of the first step of the voxel lattice |
| [dy](EBSD3.dy_py.html) | the length of the second step of the voxel lattice |
| [dz](EBSD3.dz_py.html) | the length of the third step of the voxel lattice |
| [EBSD3](EBSD3.EBSD3_py.html) | the measurements of a volume: positions, rotations and phase ids of voxels with the list of the phases' frames and the properties of every measurement |
| [EBSD3square](EBSD3square.EBSD3square_py.html) | the measurements of a volume: positions, rotations and phase ids of voxels with the list of the phases' frames and the properties of every measurement |
| [extent](EBSD3.extent_py.html) | the bounding box of the voxels, [xmin, xmax, ymin, ymax, zmin, zmax], the padding left out |
| [fill](EBSD3.fill_py.html) | the empty voxels of a volume filled from their nearest measured voxel |
| [fillByGrainId](EBSD3.fillByGrainId_py.html) | the map with every pixel of a grain given the mean orientation of that grain, which is the map the grains describe rather than the one they were built from |
| [findByLocation](EBSD3.findByLocation_py.html) | the measurements closest to positions, or within a radius of them |
| [flatten](EBSD3.flatten_py.html) | the voxels as a list, the volume itself when it is one |
| [gradientDim](EBSD3.gradientDim_py.html) | the derivative of the orientation along the array axis dim of a gridded volume per unit length, the forward difference, backwards at the last voxel, NaN across a grain boundary |
| [gradientX](EBSD3.gradientX_py.html) | the derivative of the orientation along the first axis of the volume per unit length |
| [gradientY](EBSD3.gradientY_py.html) | the derivative of the orientation along the second axis of the volume per unit length |
| [gradientZ](EBSD3.gradientZ_py.html) | the derivative of the orientation along the third axis of the volume per unit length |
| [gridify](EBSD3.gridify_py.html) | a list of voxels put back onto the (n1, n2, n3) array of its lattice |
| [interp](EBSD3.interp_py.html) | the voxel holding every position, or none outside the box of voxel centres, as MATLAB's nearest griddedInterpolant without extrapolation |
| [interp](EBSD3square.interp_py.html) | the voxel holding every position, or none outside the box of voxel centres, as MATLAB's nearest griddedInterpolant without extrapolation |
| [isGridded](EBSD3.isGridded_py.html) | whether the voxels are held as an (n1, n2, n3) array |
| [KAM](EBSD3.KAM_py.html) | the kernel average misorientation of a volume: the mean misorientation angle of every voxel to its neighbours |
| [load](EBSD3.load_py.html) | EBSD3.load('volume.dream3d'), EBSD3.load(['s0.ang', 's1.ang'], z=[0, 1]) |
| [N](EBSD3.N_py.html) | a volume has no measurement plane |
| [plot](EBSD3.plot_py.html) | the voxels of a volume in three orthogonal slice planes, coloured by phase, by a value, a colour or an orientation per voxel |
| [reduce](EBSD3.reduce_py.html) | every n-th measurement along each lattice direction, which is the map at a coarser step |
| [slice](EBSD3.slice_py.html) | the 2D map of the section of a volume through a plane |
| [smooth](EBSD3.smooth_py.html) | the map with its orientations denoised, every one replaced by one computed from its neighbours, within the grains where the map knows them and within the phases otherwise |
| [spatialProfile](EBSD3.spatialProfile_py.html) | the voxels along a polyline, sampled at the voxel spacing, and their distance along it |
| [spatialProfile](EBSD3square.spatialProfile_py.html) | the voxels along a polyline, sampled at the voxel spacing, and their distance along it |
| [weightedBurgersVec](EBSD3.weightedBurgersVec_py.html) | the weighted Burgers vector: the net Burgers vector of the dislocations crossing the map per unit area, by the integral or the gradient method |

MATLAB's [EBSD3square_index](EBSD3square_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/ebsd3.py#L28">source</a></font>
{% endraw %}
