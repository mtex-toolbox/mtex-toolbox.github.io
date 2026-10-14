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
a region of orientation space bounded by planes in the quaternions, mostly the fundamental
region of a pair of frames

## Syntax

<div class="mx-form" markdown="1">

```python
oR = fundamentalRegion(cs)
```

The fundamental region of a crystal frame.

</div>

<div class="mx-form" markdown="1">

```python
oR = fundamentalRegion(cs, cs, antipodal=True)
```

Of misorientations, with grain exchange.

</div>

<div class="mx-form" markdown="1">

```python
oR = orientationRegion(N, cs, specimenFrame())
```

The region bounded by the quaternions N.

</div>

## Description

The region holds the quaternions q with dot(q, N) <= 0 for every bounding quaternion N; q
and -q are the same rotation.

The fundamental region of two frames, which fundamentalRegion builds, is the set of
rotations closer to the identity than to any of their symmetric equivalents;
projectIntoFundamentalRegion maps orientations into it. Where the two frames share
rotations, about a common axis for instance, the planes alone do not separate the
equivalents, and the region also restricts the rotation axes to a sector.

## Input

| `N` | quaternion, or an array (n, 4), the normals of the bounding planes |
| `frameA` | the first frame, the crystal frame |
| `frameB` | the second frame, the specimen or a second crystal frame |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` |  | identify a misorientation with its inverse, the grain exchange symmetry |
| `common` |  | the rotations, as an array (n, 4), the two frames share |
| `sector` |  | sphericalRegion, the sector of rotation axes where the frames share rotations |
| `axisCenter` |  | the centre of that sector, an array of three |

## Output

| `oR` | orientationRegion, with oR.CS and oR.SS its two frames, MATLAB's CS1 and CS2 |

## See also

[fundamentalRegion](fundamentalRegion_py.html), [orientation.projectIntoFundamentalRegion](orientation.project2FundamentalRegion_py.html), [orientationRegion.checkInside](orientationRegion.checkInside_py.html), [orientationRegion.plot](orientationRegion.plot_py.html), [fundamentalSector](fundamentalSector_py.html)

## Members

| [axisSector](orientationRegion.axisSector_py.html) | the sector of rotation axes the region allows at a fixed rotation angle: a bound with N = (-sin(w_i/4), cos(w_i/4) a_i) reads for q = (cos(w/2), sin(w/2) v) as dot(v, a_i) <= cot(w/2) tan(w_i/4), a small circle about the axis |
| [calcAngleDistribution](orientationRegion.calcAngleDistribution_py.html) | the distribution of the misorientation angle: of a misorientation density, of a list of misorientations, or of the uniform density of two crystal frames |
| [calcAxisDistribution](orientationRegion.calcAxisDistribution_py.html) | the axis distribution of an SO(3) function, an S2 function of the rotation axes symmetric under the rotations the two frames share |
| [checkInside](orientationRegion.checkInside_py.html) | whether orientations lie inside the region, up to the tolerance, as a boolean array |
| [CS](orientationRegion.CS_py.html) | the first frame of the region, frameA: the crystal frame (MATLAB's orientationRegion.CS1) |
| [edges](orientationRegion.edges_py.html) | the edges of the region, each a chain of points in axis angle coordinates in radians: every pair of planes meets in a line of Rodrigues space, kept where the other planes allow it |
| [maxAngle](orientationRegion.maxAngle_py.html) | the largest rotation angle inside the region, at a vertex of it in Rodrigues space, or about a given axis |
| [orientationRegion](orientationRegion.orientationRegion_py.html) | a region of orientation space bounded by planes in the quaternions, mostly the fundamental region of a pair of frames |
| [plot](orientationRegion.plot_py.html) | a fundamental region of orientation space drawn in axis angle space |
| [rodriguesPlanes](orientationRegion.rodriguesPlanes_py.html) | the region in Rodrigues space as A rho <= b: a bound dot(q, N) <= 0 reads n  |
| [rotate](orientationRegion.rotate_py.html) | rotate(x, rot) is x.rotate(rot), or rot * x for an object without that method |
| [SS](orientationRegion.SS_py.html) | the second frame of the region, frameB: the specimen or second crystal frame (MATLAB's orientationRegion.CS2) |
| [volume](orientationRegion.volume_py.html) | the share of orientations within a radius of a centre: the integral of f over the ball, int_{angle(g, c) < r} f(g) dg, relative to the integral over all orientations |

MATLAB's [orientationRegion_index](orientationRegion_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientationregion.py#L62">source</a></font>
{% endraw %}
