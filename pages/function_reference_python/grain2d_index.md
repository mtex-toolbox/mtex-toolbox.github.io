---
title: 'The class grain2d'
sidebar: function_reference_sidebar
permalink: grain2d_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d_index.html
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
| `prop` |  | dict of further properties, one value per grain, read as grains.name or grains.prop['name'] |
| `boundary` |  | grainBoundary, the segments between the grains and to the outside of the map |
| `innerBoundary` |  | grainBoundary, the segments inside the grains, the low angle boundaries of a segmentation with two thresholds |
| `loops` |  | the polygon of every grain as loops of boundary segments; traced from boundary when not given |
| `phaseMap` |  | the phase number of the file for every entry of CSList |

## Output

| `grains` | grain2d |

## See also

[calcGrains](EBSD.calcGrains_py.html), [grain2d.merge](grain2d.merge_py.html), [grain2d.selectByGrainId](grain2d.selectByGrainId_py.html), [grainBoundary](grainBoundary_index_py.html), [GrainReconstruction](GrainReconstruction_py.html), [SelectingGrains](SelectingGrains_py.html), [GrainSpatialPlots](GrainSpatialPlots_py.html), [ShapeParameters](ShapeParameters_py.html)

## Members

| [allV](grain2d.allV_py.html) | the vertices of the boundary as framed points of the specimen |
| [area](grain2d.area_py.html) | the area an outline covers, its holes taken off |
| [aspectRatio](grain2d.aspectRatio_py.html) | the ratio of the two half axes, one for a circle |
| [boundarySize](grain2d.boundarySize_py.html) | the number of vertices on the loops of an outline, the holes included |
| [calcTraces](grain2d.calcTraces_py.html) | the traces of subregions of a map or of sets of grains, the direction their lamellae run along |
| [caliper](grain2d.caliper_py.html) | the caliper, the Feret diameter, of every outline: its width across a direction, or the longest or the shortest width as a framed axis of that length |
| [cat](grain2d.cat_py.html) | the grains of several parts of one segmentation, MATLAB's [grains1, grains2]: the parts share its phases, frame and boundary vertices |
| [centroid](grain2d.centroid_py.html) | the centroid of the area, holes taken off, as a framed point |
| [checkInside](grain2d.checkInside_py.html) | whether points lie inside the outlines: within the outer loop and outside the holes, as a (points, outlines) matrix |
| [copy](grain2d.copy_py.html) | a copy of the grains with their own table and properties, the boundaries shared |
| [cs2phaseId](grain2d.cs2phaseId_py.html) | the phase id of a frame, a mineral name or a number, MATLAB's cs2phaseId |
| [CS](grain2d.CS_py.html) | the crystal frame of the one indexed phase of the grains, an error where there are several |
| [diameter](grain2d.diameter_py.html) | the largest distance between two vertices of the outer loop, which two of its hull vertices span |
| [equivalentPerimeter](grain2d.equivalentPerimeter_py.html) | the perimeter of the disc of the same area, 2 pi times the equivalent radius |
| [equivalentRadius](grain2d.equivalentRadius_py.html) | the radius of the disc of the same area, sqrt(area / pi) |
| [findByLocation](grain2d.findByLocation_py.html) | the positions of the outlines a point lies in the position of the outline holding each point, -1 for a point in none |
| [findByOrientation](grain2d.findByOrientation_py.html) | the grains of the phase of ori whose mean orientation lies within epsilon of it, or of a fibre |
| [fitEllipse](grain2d.fitEllipse_py.html) | the ellipse of the same second moments: its centre and its two half axes |
| [grain2d](grain2d.grain2d_py.html) | the grains of a map: a table of ids, phases, pixel counts, mean orientations and properties, with the boundary, the inner boundary and the polygon of every grain |
| [grainSize](grain2d.grainSize_py.html) | the number of pixels of every grain, grains.numPixel |
| [hasHole](grain2d.hasHole_py.html) | whether an outline has holes, one entry per outline |
| [hist](grain2d.hist_py.html) | histogram(grains), histogram(grains, prop, bins): the area weighted distribution of a grain property as one histogram per indexed phase, drawn over each other, or with grouped=True side by side (MATLAB's hist) |
| [histogram](grain2d.histogram_py.html) | histogram(grains), histogram(grains, prop, bins): the area weighted distribution of a grain property as one histogram per indexed phase, drawn over each other, or with grouped=True side by side (MATLAB's hist) |
| [how2plot](grain2d.how2plot_py.html) | the plotting convention of the specimen frame the grains are written in |
| [hull](grain2d.hull_py.html) | the grains with their convex hulls for polygons: the hull edges form the boundary, with nothing on the other side, and there is no inner boundary |
| [id2ind](grain2d.id2ind_py.html) | the positions of grain ids in this list the positions of grain ids in the list, in the shape of the ids: one for a number, a pair per boundary segment for gB.grainId |
| [inclusionHost](grain2d.inclusionHost_py.html) | the id of the grain whose hole the grain lies in, 0 for none: every grain bordering a hole of another, MATLAB's second output of isInclusion |
| [indexedPhaseId](grain2d.indexedPhaseId_py.html) | the ids of the indexed phases present among the grains |
| [inpolygon](grain2d.inpolygon_py.html) | the mask of the outlines whose centroid lies inside a rectangle [xmin, ymin, dx, dy] or a polygon (N, 2), edges included, as MATLAB's |
| [isBoundary](grain2d.isBoundary_py.html) | a grain that touches the border of the map |
| [isInclusion](grain2d.isInclusion_py.html) | a grain that sits inside the hole of another one: where the grain lies, not what it touches |
| [isIndexed](grain2d.isIndexed_py.html) | whether each grain belongs to an indexed phase |
| [longAxis](grain2d.longAxis_py.html) | the long half axis of the ellipse of every outline, the larger principal component |
| [meanOrientation](grain2d.meanOrientation_py.html) | the mean orientations of the grains of the one indexed phase present |
| [merge](grain2d.merge_py.html) | the grains joined into one along given boundaries, by pairs of ids, by a label per grain, below a misorientation angle, or every inclusion into the grain around it |
| [mineral](grain2d.mineral_py.html) | the mineral name of the one indexed phase of the grains |
| [mineralList](grain2d.mineralList_py.html) | the mineral names of the phases of the phase list |
| [N](grain2d.N_py.html) | the normal of the plane the map lies in, as a direction of the specimen |
| [neighbors](grain2d.neighbors_py.html) | the pairs of ids of grains sharing a boundary, both in the selection, or either with full |
| [numNeighbors](grain2d.numNeighbors_py.html) | the number of grains every grain shares a boundary with, the neighbours outside the selection included |
| [paris](grain2d.paris_py.html) | how much the outline is indented against its convex hull, in percent |
| [paror](grain2d.paror_py.html) | the cumulative particle projection function of the outlines (Panozzo 1983) |
| [perimeter](grain2d.perimeter_py.html) | the length of the outer loop of an outline, as MATLAB's default |
| [phase](grain2d.phase_py.html) | the phase number of every grain as the file numbered it |
| [plane](grain2d.plane_py.html) | the plane the map lies in, a mapPlane |
| [plot](grain2d.plot_py.html) | the grains of a map as polygons, coloured by phase, by a value or by orientation, with their boundaries on top |
| [principalComponents](grain2d.principalComponents_py.html) | the two half axes of the ellipse with the same second area moments as every outline, the long one first, as antipodal vectors of the specimen frame |
| [quiver](grain2d.quiver_py.html) | arrows: tangent vectors at directions, a vector or axis field on the sphere, arrows at orientations in the sections of the current figure, or directions on a map or a volume |
| [reduceBoundary](grain2d.reduceBoundary_py.html) | the grains with every n-th vertex of their boundary kept along each chain, whatever the shape, the inner boundary kept on it |
| [refineBoundary](grain2d.refineBoundary_py.html) | the grains with their boundary and inner boundary refined, every segment split into pieces of about length delta |
| [rotate](grain2d.rotate_py.html) | rotate(x, rot) is x.rotate(rot), or rot * x for an object without that method |
| [scanUnit](grain2d.scanUnit_py.html) | the unit of the map the grains were reconstructed from, as their boundary carries it |
| [selectByGrainId](grain2d.selectByGrainId_py.html) | the grains named by id, in the order asked for |
| [shape](grain2d.shape_py.html) | the shape of the list of grains, (size,) |
| [shapeFactor](grain2d.shapeFactor_py.html) | the perimeter against that of the circle of the same area, one for a circle |
| [sharedVertices](grain2d.sharedVertices_py.html) | the vertices both boundaries walk over: a vertex where an inner boundary ends on the outer one has degree two to either and would be dissolved, leaving the other hanging off a vertex its walk no longer reaches |
| [shortAxis](grain2d.shortAxis_py.html) | the short half axis of the ellipse of every outline, the smaller principal component |
| [simplifyBoundary](grain2d.simplifyBoundary_py.html) | the grains with the vertices of their boundary that carry no shape dropped, those whose removal moves the boundary by less than epsilon, the inner boundary kept on it |
| [size](grain2d.size_py.html) | the number of grains |
| [smoothBoundary](grain2d.smoothBoundary_py.html) | the grains with the pixel staircase of their boundaries turned into smooth curves |
| [subBoundaryLength](grain2d.subBoundaryLength_py.html) | the length of the subgrain boundaries inside every grain, of the inner boundary segments sel selects if given |
| [subBoundarySize](grain2d.subBoundarySize_py.html) | the inner boundary of every grain: how many segments of the subgrain boundaries lie in it |
| [subsref](grain2d.subsref_py.html) |  |
| [text](grain2d.text_py.html) | text at directions on the sphere, at the measurements or grains of a map, or at a point of the current axes |
| [triplePoints](grain2d.triplePoints_py.html) | the triple points of the grain boundary |
| [update](grain2d.update_py.html) | the grains with the phase of every boundary segment read off the grain it borders, as it has to be after the grains changed phase (MATLAB grains.update) |
| [V](grain2d.V_py.html) | the vertices of the boundary in the coordinates of the map plane, (n, 2) |

MATLAB's [grain2d_index](grain2d_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/grains.py#L74">source</a></font>
{% endraw %}
