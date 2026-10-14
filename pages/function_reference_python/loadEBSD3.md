---
title: 'loadEBSD3'
sidebar: function_reference_sidebar
permalink: loadEBSD3_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the EBSD map of a volume read from a file, the voxel data of a DREAM.3D file, the LabDCT
volume of an xnovo file, or a stack of 2D maps; MATLAB's EBSD3.load

## Syntax

The format from the file:

```python
ebsd = loadEBSD3('volume.dream3d')
```

The format given:

```python
ebsd = loadEBSD3('volume.h5', interface='xnovo')
```

Other phases than the file's:

```python
ebsd = loadEBSD3('volume.dream3d', CS=cs)
```

A stack of 2D maps at their heights:

```python
ebsd = loadEBSD3(['s0.ang', 's1.ang'], z=[0, 1])
```

The format is told by the extension and, for an HDF5 file, by what it holds: a LabDCT group
makes it an xnovo file, the cell data of a grid a DREAM.3D file, whatever the data
containers are called. The voxels of a DREAM.3D or xnovo file form a voxelLattice, so
ebsd[i, j, k] addresses one of them; every further scalar array of the file becomes a
property. A list of files is read by loadEBSD, every file a layer at its height z, as a
list of voxels without a lattice; the phases and the properties are those of the first
file. EBSD3.load is the same function.

## Input

| | |
|---|---|
| `fname` | the file name, or a list of file names of 2D maps |

## Output

| | |
|---|---|
| `ebsd` | EBSD3 |

## Keywords

| | default | |
|---|---|---|
| `interface` | `None` | the format, 'dream3d' or 'xnovo'; by default told by the file |
| `z` | `None` | the height of every map of a stack, by default 0, 1, 2, ... |
| `CS` | `None` | a crystalFrame or a phaseList replacing the phases of the file |

## See also

[loadEBSD](loadEBSD_ang_py.html), [loadGrains3d](loadGrains_Dream3d_py.html), [calcGrains](EBSD.calcGrains_py.html), [EBSD3Analysis](EBSD3Analysis_py.html), [EBSD3Plotting](EBSD3Plotting_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/io/load3d.py#L40">source</a></font>
{% endraw %}
