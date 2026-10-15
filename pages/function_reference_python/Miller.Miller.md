---
title: 'Miller.Miller'
sidebar: function_reference_sidebar
permalink: Miller.Miller_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: Miller.Miller.html
status: Reference
---
{% raw %}
three dimensional vectors, a container over (..., 3) coordinates carrying antipodal,
isNormalized, the reference frame and the display style; a vector in a crystal frame is a
crystal direction with Miller indices

## Syntax

<div class="mx-form" markdown="1">

```python
v = vector3d(x, y, z)
```

From the Cartesian coordinates.

</div>

<div class="mx-form" markdown="1">

```python
v = vector3d(xyz)
```

Coordinates of shape (..., 3) or (3, N).

</div>

<div class="mx-form" markdown="1">

```python
v = vector3d(x, y, z, antipodal=True)
```

Axes, v and -v the same.

</div>

<div class="mx-form" markdown="1">

```python
m = vector3d(xyz, frame=cs)
```

A crystal direction from its Euclidean coordinates.

</div>

<div class="mx-form" markdown="1">

```python
v = vector3d.byPolar(theta, rho)
```

From the polar angles.

</div>

<div class="mx-form" markdown="1">

```python
v = vector3d.X
```

The axes of the frame, also Y and Z.

</div>

<div class="mx-form" markdown="1">

```python
m = Miller(1, 1, 1, cs)
```

A lattice plane normal by its indices hkl.

</div>

<div class="mx-form" markdown="1">

```python
m = Miller(1, 0, -1, 0, csHex)
```

Four indices hkil of a hexagonal lattice.

</div>

<div class="mx-form" markdown="1">

```python
m = Miller(1, 1, 0, cs, 'uvw')
```

A lattice direction, 'UVTW' with four indices.

</div>

<div class="mx-form" markdown="1">

```python
m = Miller('{111}', cs)
```

(hkl) one plane, {hkl} the family, [uvw] and <uvw> directions.

</div>

<div class="mx-form" markdown="1">

```python
m = Miller(v, cs)
```

A vector restated in the crystal frame.

</div>

## Description

A crystal direction is a vector3d whose frame is a crystal frame: it has the Miller
indices m.hkl and m.uvw, the four index forms m.hkil and m.UVTW of a trigonal or hexagonal
lattice, a d-spacing, and where the frame carries a point group it stands for its
symmetrically equivalent set, which dot, angle, mean and unique take into account. It is
stored in Euclidean coordinates; MATLAB's class Miller is a vector3d here, built by the
function Miller from its indices.

## Input

| `x, y, z` | arrays of the Cartesian coordinates, broadcast against each other |
| `xyz` | array of shape (..., 3) or (3, N), a vector3d, or a rank one tensor |
| `cs` | crystalFrame, also given positionally to vector3d |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `False` | the vectors are axes: v and -v are the same |
| `isNormalized` | `False` | the coordinates are known to be of length one |
| `frame` | `None` | the referenceFrame the coordinates are given in, a crystal frame making the vectors crystal directions; also given as a positional argument |
| `dispStyle` | `None` | the indices the display shows, 'hkl', 'hkil', 'uvw', 'UVTW' or 'xyz' |
| `dtype` | `None` | the floating point type of the coordinates |

## Output

| `v` | vector3d |
| `m` | vector3d, a crystal direction |

## Properties

| `xyz` | Cartesian coordinates as a numeric array of shape v.shape + (3,) |
| `frame` | referenceFrame of the coordinates, or None for frame-free data |
| `CS` | crystalFrame for Miller directions, otherwise None |
| `antipodal` | whether opposite directions represent the same axis |
| `isNormalized` | whether the coordinates are known to have unit length |
| `dispStyle` | display convention: 'xyz', 'hkl', 'hkil', 'uvw' or 'UVTW' |
| `hkl` | three reciprocal-lattice indices for plane normals in a crystal frame |
| `uvw` | three direct-lattice indices for lattice directions in a crystal frame |
| `shape` | array shape excluding the trailing Cartesian coordinate axis |

## Example

Store three vectors in one array, normalize them, and select the second vector with
Python indexing. Geometric angles are returned in radians.


```python
import numpy as np
from mtex import vector3d, degree

v = vector3d([[3, 0, 0], [0, 4, 0], [0, 0, 5]])
u = v.normalize()
print('Lengths:', v.norm())
print('Second unit vector:', u[1].data)
print('First two vectors, degrees:', float(u[0].angle(u[1]) / degree))
print('Cross product:', np.round(u[0].cross(u[1]).data, 3))
```

```text
Lengths: [3. 4. 5.]
Second unit vector: [0. 1. 0.]
First two vectors, degrees: 90.0
Cross product: [0. 0. 1.]
```


## See also

[Miller](Miller_py.html), [vector3d.byPolar](vector3d.byPolar_py.html), [crystalFrame](crystalFrame_index_py.html), [VectorDefinition](VectorDefinition_py.html), [CrystalDirections](CrystalDirections_py.html)

## Used on

[CrystalOperations](CrystalOperations_py.html), [QuasiCrystals](QuasiCrystals_py.html), [MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [OrientationFibre](OrientationFibre_py.html), [EBSD3Analysis](EBSD3Analysis_py.html), [EBSD3Plotting](EBSD3Plotting_py.html), [Grains3D](Grains3D_py.html), [Grains3DBoundaries](Grains3DBoundaries_py.html), [Grains3DOperations](Grains3DOperations_py.html), [NeperInterface](NeperInterface_py.html), [EBSDGrid](EBSDGrid_py.html), [EBSDInter](EBSDInter_py.html)

MATLAB's [Miller.Miller](Miller.Miller.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L40">source</a></font>
{% endraw %}
