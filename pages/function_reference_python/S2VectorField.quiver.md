---
title: 'S2VectorField.quiver'
sidebar: function_reference_sidebar
permalink: S2VectorField.quiver_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2VectorField.quiver.html
status: Reference
---
{% raw %}
A method of [S2VectorFieldHarmonic](S2VectorFieldHarmonic_index_py.html).

arrows: tangent vectors at directions, a vector or axis field on the sphere, arrows at
orientations in the sections of the current figure, or directions on a map or a volume;
MATLAB's vector3d.quiver, S2VectorField.quiver and EBSD.quiver

## Syntax

<div class="mx-form" markdown="1">

```python
quiver(v, w)
```

The tangent vectors w at the directions v.

</div>

<div class="mx-form" markdown="1">

```python
quiver(v, w, arrowSize=1, color='r')
```

Longer arrows, in red.

</div>

<div class="mx-form" markdown="1">

```python
quiver(v, w, normalize=True, maxHeadSize=0.3)
```

All of one length, with larger heads.

</div>

<div class="mx-form" markdown="1">

```python
quiver(vF)
```

A vector field on an equispaced grid.

</div>

<div class="mx-form" markdown="1">

```python
quiver(vF, resolution=5*degree)
```

On a finer grid.

</div>

<div class="mx-form" markdown="1">

```python
quiver(ebsd, ebsd.rotations.axis(), color='r')
```

An arrow per measurement of a map.

</div>

<div class="mx-form" markdown="1">

```python
quiver(ebsd, ebsd.rotations.axis(), antipodal=True)
```

Axes, centred on the measurements.

</div>

<div class="mx-form" markdown="1">

```python
quiver(grains, grains.meanOrientation * Miller(1, 0, 0, grains.CS, 'uvw'))
```

An arrow per grain.

</div>

<div class="mx-form" markdown="1">

```python
quiver(gB, gB.direction)
```

A needle per boundary segment.

</div>

## Description

What the first argument is decides where the arrows go:

- directions or a vector or axis field: arrows on the sphere, a field on an equispaced grid
of the spacing resolution.
- orientations: arrows in the ODF sections of the current figure.
- a map, its grains or its boundaries: an arrow per measurement, grain or segment on the map
plot, with the keywords scale, scaling, autoScaleFactor, projectIntoPlane, antipodal, color,
lineWidth and displayName.
- a map of volumes or 3D grains: arrows in the scene of its figure.

On the sphere an arrow is the tangential part of w at its direction, so a vector almost
normal to the sphere draws almost nothing. The longest vector of all is arrowSize times the
spacing resolution; normalize=True draws every arrow at that length. An antipodal w, or an
axis field, draws centred needles without heads.

maxHeadSize is the length of the heads as a fraction of the longest arrow, lineWidth the
width of the shafts, color their colour; the projection and the charts follow the keywords
of the spherical plots.

## Input

| `v` | vector3d, the points of the arrows; an S2VectorField or S2AxisField; orientation; EBSD, grain2d or grainBoundary; EBSD3 or grain3d |
| `w` | vector3d, the arrows, one per point of v |

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `10*degree` | the spacing of the grid a field is drawn on, and the length unit of the arrows on the sphere |

## Output

| `h` | the matplotlib quiver or line collections, one per spherical plot |

## See also

[plot](S1Grid.plot_py.html), [scatter](quaternion.scatter_py.html), [S2VectorField](S2VectorField_index_py.html), [grain2d.plot](grain2d.plot_py.html), [SphericalProjections](SphericalProjections_py.html)

MATLAB's [S2VectorField.quiver](S2VectorField.quiver.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L1325">source</a></font>
{% endraw %}
