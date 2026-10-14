---
title: 'EBSDsquare.EBSDsquare'
sidebar: function_reference_sidebar
permalink: EBSDsquare.EBSDsquare_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSDsquare.EBSDsquare.html
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
| `unitCell` | `None` | vector3d or (k, 2) array, the corners of a pixel about its centre, from which the lattice is built |
| `scanUnit` | `'um'` | the unit of the positions |
| `frame` | `None` | specimenFrame of the positions, by default that of pos or the default one |
| `lattice` | `None` | the lattice of the positions, when it is known, instead of reading it off them |
| `meta` | `None` | dict, what a file states besides the measurements |
| `phaseMap` | `None` | the phase number the file gives each entry of CSList |
| `id` | `None` | the id of every pixel, by default its position in the list |
| `isPadding` | `None` | the mask of the cells a grid adds to close it, MATLAB's NaN phase |

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

## Used on

[EBSDKAM](EBSDKAM_py.html)

MATLAB's [EBSDsquare.EBSDsquare](EBSDsquare.EBSDsquare.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/ebsd.py#L41">source</a></font>
{% endraw %}
