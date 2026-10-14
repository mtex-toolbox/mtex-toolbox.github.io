---
title: 'plotS2Grid'
sidebar: function_reference_sidebar
permalink: plotS2Grid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: plotS2Grid.html
status: Reference
---
{% raw %}
the regular grid of directions a spherical plot samples its chart at; MATLAB's
plotS2Grid

## Syntax

The grid of the whole sphere:

```python
r = plotS2Grid(resolution=5*degree)
```

Crystal directions, upper hemisphere:

```python
r = plotS2Grid(cs, resolution=2*degree, upper=True)
```

5 degree in the polar angle, 2.5 in the azimuth:

```python
r = plotS2Grid(resolution=(5*degree, 2.5*degree))
```

Values on the grid, drawn as they lie:

```python
contourf(r, r.z ** 2)
```

The directions form a (theta, rho) array, the rows the polar angle, the columns the
azimuth, in the frame given, so that values computed on them are drawn by contourf or
pcolor without interpolation. A grid of both hemispheres puts them side by side with a
blank column between. The region is the whole sphere, or the sphericalRegion given.

MATLAB's bounds minRho, maxRho, minTheta, maxTheta and restrict2MinMax are not taken: pass
a sphericalRegion.

## Input

| | |
|---|---|
| `frame` | a reference frame the directions are expressed in, e.g. crystalFrame('m-3m') |
| `sR` | sphericalRegion, the region of the grid |

## Output

| | |
|---|---|
| `r` | vector3d, a (theta, rho) array of directions |

## Keywords

| | default | |
|---|---|---|
| `resolution` | `1*degree` | the spacing of the grid, an angle, or a pair (polar, azimuthal) |
| `upper` | `False` | the upper hemisphere only |
| `lower` | `False` | the lower hemisphere only |
| `complete` | `False` | the whole sphere |
| `antipodal` | `None` | a grid of axes, the upper hemisphere enough |

## See also

[equispacedS2Grid](equispacedS2Grid_py.html), [regularS2Grid](regularS2Grid_py.html), [makeSphericalProjection](makeSphericalProjection_py.html), [contourf](S2Fun.contourf_py.html), [VectorGrids](VectorGrids_py.html)

## Used on

[SchmidFactor](SchmidFactor_py.html)

MATLAB's [plotS2Grid](plotS2Grid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spherical.py#L720">source</a></font>
{% endraw %}
