---
title: 'grain2d.quiver'
sidebar: function_reference_sidebar
permalink: grain2d.quiver_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.quiver.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

arrows: tangent vectors at directions, a vector or axis field on the sphere, arrows at
orientations in the sections of the current figure, or directions on a map or a volume;
MATLAB's vector3d.quiver, S2VectorField.quiver and EBSD.quiver

## Syntax

The tangent vectors w at the directions v:

```python
quiver(v, w)
```

Longer arrows, in red:

```python
quiver(v, w, arrowSize=1, color='r')
```

All of one length, with larger heads:

```python
quiver(v, w, normalize=True, maxHeadSize=0.3)
```

A vector field on an equispaced grid:

```python
quiver(vF)
```

On a finer grid:

```python
quiver(vF, resolution=5*degree)
```

An arrow per measurement of a map:

```python
quiver(ebsd, ebsd.rotations.axis(), color='r')
```

Axes, centred on the measurements:

```python
quiver(ebsd, ebsd.rotations.axis(), antipodal=True)
```

An arrow per grain:

```python
quiver(grains, grains.meanOrientation * Miller(1, 0, 0, grains.CS, 'uvw'))
```

A needle per boundary segment:

```python
quiver(gB, gB.direction)
```

On the sphere an arrow is the tangential part of w at its direction carried through the
projection; the longest vector of all is arrowSize times the grid spacing resolution, so a
vector almost normal to the sphere draws almost nothing, and normalize=True draws every
arrow at that length. An antipodal w, or an axis field, draws centred needles without heads.
maxHeadSize is the length of the heads as a fraction of the longest arrow, lineWidth the
width of the shafts, color their colour; the projection and the charts follow the keywords
of the spherical plots.

A map, its grains or its boundaries go to the map plot: an arrow per measurement, grain
or segment, with the keywords scale, scaling, autoScaleFactor, projectIntoPlane,
antipodal, color, lineWidth and displayName; a map of volumes or 3D grains draws its
arrows into the scene of its figure, orientations into the ODF sections held.

## Input

| | |
|---|---|
| `v` | vector3d, the points of the arrows; an S2VectorField or S2AxisField; orientation; EBSD, grain2d or grainBoundary; EBSD3 or grain3d |
| `w` | vector3d, the arrows, one per point of v |

## Output

| | |
|---|---|
| `h` | the matplotlib quiver or line collections, one per spherical plot |

## Keywords

| | default | |
|---|---|---|
| `resolution` | `10*degree` | the spacing of the grid a field is drawn on, and the length unit of the arrows on the sphere |

## See also

[plot](S1Grid.plot_py.html), [scatter](quaternion.scatter_py.html), [S2VectorField](S2VectorField_index_py.html), [grain2d.plot](grain2d.plot_py.html), [SphericalProjections](SphericalProjections_py.html)

MATLAB's [grain2d.quiver](grain2d.quiver.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L1318">source</a></font>
{% endraw %}
