---
title: 'orientationRegion.orientationRegion'
sidebar: function_reference_sidebar
permalink: orientationRegion.orientationRegion_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientationRegion.orientationRegion.html
status: Reference
---
{% raw %}
a region of orientation space bounded by planes in the quaternions, mostly the fundamental
region of a pair of frames

## Syntax

The fundamental region of a crystal frame:

```python
oR = fundamentalRegion(cs)
```

Of misorientations, with grain exchange:

```python
oR = fundamentalRegion(cs, cs, antipodal=True)
```

The region bounded by the quaternions N:

```python
oR = orientationRegion(N, cs, specimenFrame())
```

The region holds the quaternions q with dot(q, N) <= 0 for every bounding quaternion N; q
and -q are the same rotation. The fundamental region of two frames is the Dirichlet domain
of the identity, the rotations closer to the identity than to any of their symmetric
equivalents, which is what fundamentalRegion builds and projectIntoFundamentalRegion projects
into. Where the two frames share rotations, the rotations about a common axis for instance,
the planes alone do not separate the equivalents and the region keeps a sector of the
rotation axes besides.

## Input

| | |
|---|---|
| `N` | quaternion, or an array (n, 4), the normals of the bounding planes |
| `frameA` | the first frame, the crystal frame |
| `frameB` | the second frame, the specimen or a second crystal frame |

## Output

| | |
|---|---|
| `oR` | orientationRegion, with oR.CS and oR.SS its two frames, MATLAB's CS1 and CS2 |

## Keywords

| | default | |
|---|---|---|
| `antipodal` | `False` | identify a misorientation with its inverse, the grain exchange symmetry |
| `common` | `None` | the rotations, as an array (n, 4), the two frames share |
| `sector` | `None` | sphericalRegion, the sector of rotation axes where the frames share rotations |
| `axisCenter` | `None` | the centre of that sector, an array of three |

## See also

[fundamentalRegion](fundamentalRegion_py.html), [orientation.projectIntoFundamentalRegion](orientation.project2FundamentalRegion_py.html), [orientationRegion.checkInside](orientationRegion.checkInside_py.html), [orientationRegion.plot](orientationRegion.plot_py.html), [fundamentalSector](fundamentalSector_py.html)

MATLAB's [orientationRegion.orientationRegion](orientationRegion.orientationRegion.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientationregion.py#L62">source</a></font>
{% endraw %}
