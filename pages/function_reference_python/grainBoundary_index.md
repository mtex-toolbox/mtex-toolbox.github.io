---
title: 'The class grainBoundary'
sidebar: function_reference_sidebar
permalink: grainBoundary_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary_index.html
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

## Members

| [allV](grainBoundary.allV_py.html) | the vertices as framed points of the specimen, all of them and the ones in use |
| [angle](grainBoundary.angle_py.html) | the angle of every segment to a direction, or to the segments of another boundary, in [0, pi/2], the segments having no sense |
| [arcLength](grainBoundary.arcLength_py.html) | the length along the chain up to the end of each segment |
| [calcGBND](grainBoundary.calcGBND_py.html) | the grain boundary normal distribution in the crystal frame, estimated from the traces of the boundaries in a planar section |
| [calcMeanDirection](grainBoundary.calcMeanDirection_py.html) | the direction of a segment averaged over 2n + 1 of them along the chain: the chord across a window, clamped at the end of an open chain and shorter than a closed one |
| [cat](grainBoundary.cat_py.html) | the segments of several parts of one boundary, MATLAB's [gB1, gB2]: the parts share the vertices of the boundary they were taken from |
| [chainId](grainBoundary.chainId_py.html) | the chain of every segment, counted from 0, from the walk order and the junctions: a chain breaks where the head of one segment is not the tail of the next, and at a junction (MATLAB counts the chains from 1) |
| [chainLength](grainBoundary.chainLength_py.html) | the length of the chain of every segment |
| [chainNeighbors](grainBoundary.chainNeighbors_py.html) | the segment before and after each one along its chain: a closed chain wraps its two ends onto each other, an open one clamps them, so a filter along the chain does not spread the undefined end |
| [chainSize](grainBoundary.chainSize_py.html) | the number of segments of the chain of every segment |
| [chainV](grainBoundary.chainV_py.html) | the vertices of every chain in walk order, the chains separated by -1 |
| [characteristicShape](grainBoundary.characteristicShape_py.html) | the characteristic shape of a set of boundary segments |
| [componentId](grainBoundary.componentId_py.html) | the connected component each segment lies in, junctions included, and its size |
| [componentSize](grainBoundary.componentSize_py.html) | the number of segments of the connected component of every segment |
| [curvature](grainBoundary.curvature_py.html) | the signed curvature of every segment: the Menger curvature through the midpoints of a segment and its two neighbours along the chain, smoothed by a binomial filter along it |
| [direction](grainBoundary.direction_py.html) | the direction of the walk, as a framed axis of the specimen |
| [flip](grainBoundary.flip_py.html) | swap the two sides of the segments marked, or of all of them, and walk the chains again |
| [grainBoundary](grainBoundary.grainBoundary_py.html) | a list of line segments separating neighbouring grains in a two-dimensional map |
| [hasPhase](grainBoundary.hasPhase_py.html) | the segments between the two phases named, in either order, or with one named on either side |
| [inpolygon](grainBoundary.inpolygon_py.html) | the segments whose midpoint lies inside a polygon (N, 2), or the rectangle [x, y, w, h] |
| [intersect](grainBoundary.intersect_py.html) | where the line from p to q crosses each segment, MATLAB's [x, y] = intersect(gB, xy1, xy2): the coordinates per segment, NaN where it is not crossed |
| [isChainEnd](grainBoundary.isChainEnd_py.html) | whether a segment is the last of its chain |
| [isChainStart](grainBoundary.isChainStart_py.html) | whether a segment is the first of its chain |
| [isClosed](grainBoundary.isClosed_py.html) | a chain that closes onto itself, so its walk returns to where it started |
| [isempty](grainBoundary.isempty_py.html) | whether the boundary has no segments |
| [isJunction](grainBoundary.isJunction_py.html) | a vertex where any number of segments other than two meet |
| [isTwinning](grainBoundary.isTwinning_py.html) | the segments whose misorientation is the given one up to a threshold |
| [junctionId](grainBoundary.junctionId_py.html) | the indices of the junctions, the vertices where a number of segments other than two meet |
| [midPoint](grainBoundary.midPoint_py.html) | the midpoint of every segment, a direction of the map as MATLAB's is |
| [misorientation](grainBoundary.misorientation_py.html) | the misorientations of the boundary, which needs one pair of phases in one order throughout, with the grain exchange symmetry where both sides are one phase |
| [perimeter](grainBoundary.perimeter_py.html) | the total length of the boundary, the sum of the segment lengths |
| [plot](grainBoundary.plot_py.html) | the grain boundary segments, in one colour or coloured segment by segment |
| [quiver](grainBoundary.quiver_py.html) | arrows: tangent vectors at directions, a vector or axis field on the sphere, arrows at orientations in the sections of the current figure, or directions on a map or a volume |
| [reduce](grainBoundary.reduce_py.html) | the boundary coarsened by keeping every n-th vertex along each chain, whatever the shape |
| [refine](grainBoundary.refine_py.html) | split every segment into pieces of about length delta: the old vertices stay where they are and the new ones lie on the old segments, so the boundary keeps its shape and its length and only the sampling gets finer, which gives a smoothing that follows evenly spaced degrees of freedom |
| [rotate](grainBoundary.rotate_py.html) | rotate(x, rot) is x.rotate(rot), or rot * x for an object without that method |
| [segLength](grainBoundary.segLength_py.html) | the length of every segment |
| [selectByGrainId](grainBoundary.selectByGrainId_py.html) | the segments with a grain of the list on either side, walked again: a junction of the whole boundary may have lost its third segment, so the chains of the subset are longer |
| [simplify](grainBoundary.simplify_py.html) | the boundary with the vertices dropped that carry no shape, Douglas-Peucker chain by chain |
| [size](grainBoundary.size_py.html) | the number of segments |
| [subsref](grainBoundary.subsref_py.html) |  |
| [surfor](grainBoundary.surfor_py.html) | the cumulative projection length of the boundary segments (Panozzo 1984) |
| [triplePoints](grainBoundary.triplePoints_py.html) | the triple points of the network, of a selection those at a vertex of its segments, with boundaryId into the whole network, as MATLAB's |
| [V_used](grainBoundary.V_used_py.html) | the indices of the vertices the segments use, sorted |
| [vertexDegree](grainBoundary.vertexDegree_py.html) | the number of segments meeting at every vertex |

MATLAB's [grainBoundary_index](grainBoundary_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L50">source</a></font>
{% endraw %}
