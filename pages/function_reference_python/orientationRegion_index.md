---
title: 'The class orientationRegion'
sidebar: function_reference_sidebar
permalink: orientationRegion_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientationRegion_index.html
status: Reference
---
{% raw %}
a fundamental region of orientation space: the Dirichlet domain of the identity, the
quaternions q with dot(q, N) <= 0 for the bounding quaternions N, and a sector of the axes
where the two frames share rotations

## Members

| | |
|---|---|
| [axisSector](orientationRegion.axisSector_py.html) | the sector of rotation axes the region allows at a fixed rotation angle: a bound with N = (-sin(w_i/4), cos(w_i/4) a_i) reads for q = (cos(w/2), sin(w/2) v) as dot(v, a_i) <= cot(w/2) tan(w_i/4), a small circle about the axis |
| [calcAngleDistribution](orientationRegion.calcAngleDistribution_py.html) | the distribution of the misorientation angle, MATLAB's order (density, omega):   calcAngleDistribution(cs1, cs2)   the uniform one, the area of the axis sector at each                                     angle times sin^2(omega/2), with mean one over the angles   calcAngleDistribution(mori)       a histogram of the disorientation angles in percent   calcAngleDistribution(f)          the uniform one times the mean of f over the axes at each                                     angle, found by sampling the axes with a count following                                     sin^2(omega/2) and keeping the rotations of minimal angle |
| [calcAxisDistribution](orientationRegion.calcAxisDistribution_py.html) | the axis distribution of an SO(3) function, an S2 function of the rotation axes symmetric under the rotations the two frames share |
| [checkInside](orientationRegion.checkInside_py.html) | whether orientations lie inside the region, up to the tolerance, as a boolean array |
| [CS](orientationRegion.CS_py.html) | the first frame of the region, frameA: the crystal frame (MATLAB's orientationRegion.CS1) |
| [edges](orientationRegion.edges_py.html) | the edges of the region, each a chain of points in axis angle coordinates in radians: every pair of planes meets in a line of Rodrigues space, kept where the other planes allow it |
| [maxAngle](orientationRegion.maxAngle_py.html) | the largest rotation angle inside the region, at a vertex of it in Rodrigues space, or about a given axis |
| [orientationRegion](orientationRegion.orientationRegion_py.html) | a fundamental region of orientation space: the Dirichlet domain of the identity, the quaternions q with dot(q, N) <= 0 for the bounding quaternions N, and a sector of the axes where the two frames share rotations |
| [plot](orientationRegion.plot_py.html) | plot(oR), plot(oR, boundaryColor='r', surface=False): the fundamental region in axis angle space, in degrees, its surface with the parallels and meridians on it and its edges |
| [rodriguesPlanes](orientationRegion.rodriguesPlanes_py.html) | the region in Rodrigues space as A rho <= b: a bound dot(q, N) <= 0 reads n  |
| [rotate](orientationRegion.rotate_py.html) | rotate(x, rot) is x.rotate(rot), or rot * x for an object without that method |
| [SS](orientationRegion.SS_py.html) | the second frame of the region, frameB: the specimen or second crystal frame (MATLAB's orientationRegion.CS2) |
| [volume](orientationRegion.volume_py.html) | the share of orientations within a radius of a centre: the mean of f on a local grid in the ball, times the ball's share of the fundamental region (its Haar measure times the number of symmetric copies, at most one) |

MATLAB's [orientationRegion_index](orientationRegion_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientationregion.py#L62">source</a></font>
{% endraw %}
