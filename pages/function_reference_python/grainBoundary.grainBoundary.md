---
title: 'grainBoundary.grainBoundary'
sidebar: function_reference_sidebar
permalink: grainBoundary.grainBoundary_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.grainBoundary.html
status: Reference
---
{% raw %}
a list of line segments separating neighbouring grains in a two-dimensional map

## Syntax

<div class="mx-form" markdown="1">

```python
gB = grains.boundary
interphase = gB['Forsterite', 'Enstatite']
lengths = gB.segLength
mori = interphase.misorientation
```

</div>

## Description

Grain reconstruction creates these segments together with the adjacent grain ids, EBSD
pixel ids, phases and rotations. Segments are stored head to tail along chains, with the
first adjacent grain on the left of the walk. A chain ends at a junction or closes on itself.
Selecting segments keeps the shared vertex table; segment indices and vertex indices are
different. All Python indices are zero-based.

Select by a mask, integer indices, one phase name, or a pair of phase names. Before asking
for misorientation, select a single phase pair so its crystal frames are unambiguous.
The exterior has grain id 0, pixel id -1 and phase id -1.

## Input

| `V` | array of shape (n, 2), vertex coordinates in the map plane |
| `F` | integer array of shape (m, 2), endpoint indices into V |
| `grainId` | array of shape (m, 2), adjacent grain ids |
| `ebsdId` | array of shape (m, 2), adjacent EBSD pixel ids |
| `phaseId` | array of shape (m, 2), adjacent phase-list indices |
| `misrotation` | rotation across each segment |
| `CSList` | list of phase frames |
| `plane` | map-plane coordinate system converting V to specimen positions |
| `frame` | specimenFrame of the geometry |
| `scanUnit` | unit of vertex coordinates; default 'um' |

## Output

| `gB` | grainBoundary, usually obtained as grains.boundary |

## Properties

| `allV` | all stored vertices as vector3d specimen positions |
| `F` | segment endpoint indices into V |
| `grainId` | grain ids on the two sides; ids need not equal array positions |
| `segLength` | length of each segment in scanUnit |
| `direction` | segment vectors as antipodal vector3d, with segment length |
| `midPoint` | midpoint of each segment as vector3d |
| `misorientation` | symmetry-aware orientation relationship for one phase pair |
| `chainId` | chain membership of each segment |
| `arcLength` | distance along the chain to the end of each segment |
| `triplePoints` | junctions at which three grains meet |

## See also

[calcGrains](EBSD.calcGrains_py.html), [grain2d](grain2d_index_py.html), [grainBoundary.curvature](grainBoundary.curvature_py.html), [grainBoundary.calcMeanDirection](grainBoundary.calcMeanDirection_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
grainBoundary(V, F, grainId, ebsdId, phaseId, misrotation, CSList, plane, frame, scanUnit='um')
```

</div>

MATLAB's [grainBoundary.grainBoundary](grainBoundary.grainBoundary.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L50">source</a></font>
{% endraw %}
