---
title: 'volumeSlices'
sidebar: function_reference_sidebar
permalink: volumeSlices_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
three orthogonal slices through the voxels of an EBSD volume as an item of a scene3d;
what plot(ebsd) draws for an EBSD3, MATLAB's EBSD3/plot

## Syntax

<div class="mx-form" markdown="1">

```python
s = volumeSlices(ebsd)
```

Coloured by phase, through the middle.

</div>

<div class="mx-form" markdown="1">

```python
s = volumeSlices(ebsd, ebsd.orientations)
```

By orientation, the ipf key of the phase.

</div>

<div class="mx-form" markdown="1">

```python
s = volumeSlices(ebsd, ebsd.orientations, ipfDirection=xvector, at=(5, None, 3))
```

Two slices at voxels 5 and 3.

</div>

## Description

A slice is the plane of voxels normal to one of the three voxel axes. Coloured by phase,
the notIndexed voxels show in their own colour, as on a map; otherwise the voxels that are
not indexed or have no value are white.

## Input

| `ebsd` | EBSD3, a map of volumes |

## Keywords

| keyword | default | description |
|---|---|---|
| `color` | `None` | what colours a voxel: None for its phase, an orientation per voxel, a value per voxel mapped by the colour map, an RGB row per voxel, or the name of a property |
| `faceColor` | `None` | one colour for all voxels, when color is not given |
| `colormap` | `None` | the colour map for values |
| `colorRange` | `None` | (min, max), the values the colour map spans; by default their range |
| `ipfDirection` | `None` | the specimen direction of the inverse pole figure key for orientations |
| `at` | `None` | the voxel index of the slice along each of the three axes, None for a slice left out; by default the middle of every axis |

## Output

| `s` | slices3d, the colours of the voxels and the three slices; with a value per voxel it keeps the values, the colour map and the range for the colour bar |

## See also

[grainMesh](grainMesh_py.html), [scene3d](scene3d_index_py.html), [plot3d](S2Fun.plot3d_py.html), [EBSD3Plotting](EBSD3Plotting_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/scene3d.py#L440">source</a></font>
{% endraw %}
