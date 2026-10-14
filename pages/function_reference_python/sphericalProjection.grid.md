---
title: 'sphericalProjection.grid'
sidebar: function_reference_sidebar
permalink: sphericalProjection.grid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [sphericalProjection](sphericalProjection_index_py.html).

a grid regular in the polar angles of the chart, one strip of polar angles per azimuth
so that the cells follow the boundary: the directions, in the frame of the region, and
their plane coordinates, all nTheta x nRho; a column of NaN separates the strips of a
region whose polar set has two branches, where the pieces do not touch; a pair of
resolutions is the spacing in the polar angle and in the azimuth

## Syntax

```python
proj = makeSphericalProjection(cs.fundamentalSector())[0]
```

1 degree in both angles:

```python
V, X, Y = proj.grid()
```

5 degree in the polar angle, 2 in the azimuth:

```python
V, X, Y = proj.grid(resolution=(5*degree, 2*degree))
```

## Output

| | |
|---|---|
| `V` | vector3d, the nTheta x nRho directions |
| `X, Y` | nTheta x nRho arrays, their coordinates in the plane |

## Keywords

| | default | |
|---|---|---|
| `resolution` | `1*degree` | the spacing of the grid, an angle or a pair (polar, azimuthal) |

## See also

[plotS2Grid](plotS2Grid_py.html), [makeSphericalProjection](makeSphericalProjection_py.html), [contourf](S2Fun.contourf_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spherical.py#L128">source</a></font>
{% endraw %}
