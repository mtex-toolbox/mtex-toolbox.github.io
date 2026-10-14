---
title: 'S2AxisField.quiver3'
sidebar: function_reference_sidebar
permalink: S2AxisField.quiver3_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2AxisField.quiver3.html
status: Reference
---
{% raw %}
arrows in space: tangent vectors in orientation space, a field on the sphere or SO(3), or
arrows at positions; MATLAB's quiver3

## Syntax

Tangent vectors at their orientations:

```python
quiver3d(t)
```

In Rodrigues space, all of one length:

```python
quiver3d(t, Rodrigues=True, normalize=True)
```

A field on the sphere as arrows on it:

```python
quiver3d(sVF)
```

A vector field on SO(3):

```python
quiver3d(F, axisAngle=True, resolution=7.5*degree)
```

Arrows at the positions pos along d:

```python
quiver3d(pos, d)
```

A tangent vector is an arrow at its reference orientation, in the coordinates of the held
axes, else in axis angle space, the orientations scattered first; the arrow ends where
the exponential of the vector, scaled to the longest of the list, takes the orientation.

A vector or axis field on the sphere is drawn as arrows, or lines for an axis field, on an
equispaced grid of the hemisphere facing the camera (keywords resolution, color,
arrowSize). A vector field on SO(3) is drawn on an equispaced grid of its fundamental
region (keyword resolution), the longest arrow nine tenths of the grid spacing. Two
vector3d, positions and directions, are arrows in a 3D scene (keywords arrowSize, color,
lineWidth), MATLAB's vector3d/quiver3.

## Input

| | |
|---|---|
| `t` | SO3TangentVector, S2VectorField, S2AxisField or SO3VectorField |
| `pos, d` | vector3d, the tails of the arrows and their directions |

## Output

| | |
|---|---|
| `h` | the matplotlib Quiver3D, or the scene3d of the arrows at positions |

## Keywords

| | default | |
|---|---|---|
| `lineWidth` | `1.5` | the width of the arrows' lines |
| `color` | `None` | the colour of the arrows; blue for tangent vectors, black on the sphere |
| `normalize` | `False` | draw every arrow at one length, only its direction kept |
| `axisAngle` | `False` | draw in axis angle space |
| `Rodrigues` | `False` | draw in Rodrigues space |
| `Euler` | `False` | draw in Euler angle space |
| `maxHeadSize` | `None` | MATLAB's MaxHeadSize, accepted without effect: the heads keep their size |

## See also

[SO3TangentVector](SO3TangentVector_index_py.html), [orientation.scatter](orientation.scatter_py.html), arrow3d, [plot3d](S2Fun.plot3d_py.html), [RotationTangentSpace](RotationTangentSpace_py.html), [SO3FunVectorField](SO3FunVectorField_py.html), [S2FunVectorField](S2FunVectorField_py.html)

## Used on

[Dream3dGrains](Dream3dGrains_py.html), [RotationTangentSpace](RotationTangentSpace_py.html), [SO3FunVectorField](SO3FunVectorField_py.html), [S2FunVectorField](S2FunVectorField_py.html), [BirefringenceDemo](BirefringenceDemo_py.html)

MATLAB's [S2AxisField.quiver3](S2AxisField.quiver3.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spaceplot.py#L749">source</a></font>
{% endraw %}
