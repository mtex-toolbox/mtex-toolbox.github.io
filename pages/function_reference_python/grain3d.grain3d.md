---
title: 'grain3d.grain3d'
sidebar: function_reference_sidebar
permalink: grain3d.grain3d_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain3d.grain3d.html
status: Reference
---
{% raw %}
the grains of a volume as closed polyhedra, given by the incidence I_GF of grains and the
faces of a grain3Boundary: what calcGrains returns for a volume, the counterpart of grain2d

## Syntax

<div class="mx-form" markdown="1">

```python
grains = calcGrains(ebsd3)
grain3d.fromFaces(V, F, I_GF, ori, CSList, phaseId)
grain3d.load('grains.dream3d')
```

</div>

## Input

| `id` | persistent grain ids |
| `phaseId` | phase-list index of every grain |
| `CSList` | phaseList or list of crystal frames |
| `numPixel` | voxel count of every grain |
| `meanRotation` | rotation representing each grain mean |
| `GOS` | grain orientation spread in radians |
| `I_GF` | sparse signed grain-by-face incidence matrix |
| `boundary` | grain3Boundary mesh shared by the grains |
| `frame` | specimen reference frame |
| `prop` | optional dictionary of per-grain properties |
| `phaseMap` | optional mapping from phase-list entries to original file phase numbers |

## Properties

| `id` | grain ids, which need not equal positions in a selected list |
| `phaseId` | phase-list index of each grain |
| `numPixel` | number of voxels assigned to each grain |
| `meanOrientation` | mean orientations for grains of one phase |
| `GOS` | grain orientation spread in radians |
| `boundary` | grain3Boundary mesh separating the grains |
| `I_GF` | sparse signed incidence matrix, grain rows by boundary-face columns |
| `volume` | enclosed volume of each grain in cubed spatial units |
| `surfaceArea` | surface area of each grain in squared spatial units |
| `frame` | specimenFrame of the geometry |

## Signature

<div class="mx-form" markdown="1">

```python
grain3d(id, phaseId, CSList, numPixel, meanRotation, GOS, I_GF, boundary, frame, prop=None, phaseMap=None)
```

</div>

MATLAB's [grain3d.grain3d](grain3d.grain3d.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/grain3d.py#L33">source</a></font>
{% endraw %}
