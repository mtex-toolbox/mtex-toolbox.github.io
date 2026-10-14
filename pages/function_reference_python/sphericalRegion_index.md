---
title: 'The class sphericalRegion'
sidebar: function_reference_sidebar
permalink: sphericalRegion_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: sphericalRegion_index.html
status: Reference
---
{% raw %}
a region on the sphere: all v with dot(v, N_i) >= alpha_i

```python
sphericalRegion()                    the whole sphere
sphericalRegion(N)                   the intersection of the hemispheres about N
sphericalRegion(N, alpha)            the caps dot(v, N_i) >= alpha_i
sphericalRegion('upper'), 'lower'    a hemisphere about z
sphericalRegion.byVertices(V)        the polygon through the vertices
```

## Members

| | |
|---|---|
| [boundary](sphericalRegion.boundary_py.html) | the boundary as arcs, one vector3d per arc: each circle is cut at the corners on it and the pieces whose midpoint lies inside are kept |
| [byVertices](sphericalRegion.byVertices_py.html) | the region bounded by the great circles through consecutive vertices V, taken counterclockwise |
| [center](sphericalRegion.center_py.html) | the centre (MATLAB @sphericalRegion/center): the pole of a single circle, the bisector of the two boundaries furthest apart for a lune, the barycentre of the vertices of a triangle, and the area centroid of anything larger |
| [checkInside](sphericalRegion.checkInside_py.html) | whether directions lie in the region, up to a small tolerance at the boundary |
| [eq](sphericalRegion.eq_py.html) | Return self==value |
| [isLower](sphericalRegion.isLower_py.html) | whether the region lies within the hemisphere into the screen of the convention pC |
| [isUpper](sphericalRegion.isUpper_py.html) | whether the region lies within the hemisphere out of the screen of the convention pC |
| [plot](sphericalRegion.plot_py.html) | plot(sR): the outline of a spherical region |
| [polarCoordinates](sphericalRegion.polarCoordinates_py.html) | polar coordinates of a region (MATLAB @sphericalRegion/polarCoordinates), which is what a colour key is built on: the radius is one at the centre and zero on the boundary, taken along the great circle through the centre, and the azimuth is measured about the centre from a reference direction and then equalised, so that a wide part of the sector takes as much of the turn as a narrow one and the vertices sit at equal angles |
| [restrict2Lower](sphericalRegion.restrict2Lower_py.html) | the hemisphere opposite to a direction, z by default, added to the region (MATLAB's sphericalRegion.restrict2Lower) |
| [restrict2Upper](sphericalRegion.restrict2Upper_py.html) | the hemisphere seen from a direction added to the region (MATLAB's sphericalRegion.restrict2Upper) |
| [rhoRange](sphericalRegion.rhoRange_py.html) | the azimuth interval of a region: the whole circle when a pole lies inside, otherwise the complement of the widest gap between the azimuths of its boundary |
| [rotate](sphericalRegion.rotate_py.html) | rotate(x, rot) is x.rotate(rot), or rot * x for an object without that method |
| [sphericalRegion](sphericalRegion.sphericalRegion_py.html) | a region on the sphere: all v with dot(v, N_i) >= alpha_i |
| [thetaInterval](sphericalRegion.thetaInterval_py.html) | the polar interval (min, max) of the region along the meridian rho, None where it misses it |
| [thetaIntervals](sphericalRegion.thetaIntervals_py.html) | the polar intervals of the region along the meridian rho: every circle dot(v, n) >= alpha cuts the meridian in R cos(theta - phi) >= alpha, whose solutions are arcs |
| [vertices](sphericalRegion.vertices_py.html) | the corners of the region: the intersections of its circles that lie inside |
| [volume](sphericalRegion.volume_py.html) | the fraction of the sphere the region covers, by a quadrature on a fine grid |

MATLAB's [sphericalRegion_index](sphericalRegion_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/sphericalregion.py#L27">source</a></font>
{% endraw %}
