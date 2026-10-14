---
title: 'grain2d.grain2d'
sidebar: function_reference_sidebar
permalink: grain2d.grain2d_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.grain2d.html
status: Reference
---
{% raw %}
the grains of a map: a table of ids, phases, pixel counts, mean orientations and
properties, with the boundary, the inner boundary and the polygon of every grain; MATLAB's
grain2d

## Syntax

<div class="mx-form" markdown="1">

```python
grains = calcGrains(ebsd)
```

The grains of a map.

</div>

<div class="mx-form" markdown="1">

```python
grains = grain2d(grains.id, grains.phaseId, grains.CSList, grains.numPixel, grains.meanRotation, grains.GOS, grains.frame, boundary=grains.boundary)
```

A table from its columns.

</div>

<div class="mx-form" markdown="1">

```python
grains['Forsterite']
```

The grains of one phase.

</div>

<div class="mx-form" markdown="1">

```python
grains[grains.numPixel > 10]
```

The grains of a condition.

</div>

<div class="mx-form" markdown="1">

```python
grains.selectByGrainId([1, 2, 3])
```

The grains of these ids.

</div>

## Description

Grains are made by calcGrains, which segments a map; the constructor takes the columns of
the table and the boundaries of a segmentation. The polygon of a grain is the loops of the
boundary segments that carry its id, traced from the boundary when no loops are given, so
grains without a boundary have no polygon and no shape. A property given in prop, or
assigned as grains.name = values, is one value per grain and follows every selection.

MATLAB builds grains also from vertices and polygons, grain2d(V, poly, ori, CSList); here
grains come from a segmentation alone.

## Input

| `id` | integer array, the id of every grain |
| `phaseId` | integer array, the position of every grain's phase in CSList |
| `CSList` | phaseList, the frames of the phases |
| `numPixel` | integer array, the number of pixels of every grain |
| `meanRotation` | rotation, the mean orientation of every grain as a rotation from the crystal to the specimen |
| `GOS` | array, the grain orientation spread of every grain in radians |
| `frame` | specimenFrame, the frame the grains lie in |

## Keywords

| keyword | default | description |
|---|---|---|
| `prop` | `None` | dict of further properties, one value per grain, read as grains.name or grains.prop['name'] |
| `boundary` | `None` | grainBoundary, the segments between the grains and to the outside of the map |
| `innerBoundary` | `None` | grainBoundary, the segments inside the grains, the low angle boundaries of a segmentation with two thresholds |
| `loops` | `None` | the polygon of every grain as loops of boundary segments; traced from boundary when not given |
| `phaseMap` | `None` | the phase number of the file for every entry of CSList |

## Output

| `grains` | grain2d |

## See also

[calcGrains](EBSD.calcGrains_py.html), [grain2d.merge](grain2d.merge_py.html), [grain2d.selectByGrainId](grain2d.selectByGrainId_py.html), [grainBoundary](grainBoundary_index_py.html), [GrainReconstruction](GrainReconstruction_py.html), [SelectingGrains](SelectingGrains_py.html), [GrainSpatialPlots](GrainSpatialPlots_py.html), [ShapeParameters](ShapeParameters_py.html)

MATLAB's [grain2d.grain2d](grain2d.grain2d.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/grains.py#L74">source</a></font>
{% endraw %}
