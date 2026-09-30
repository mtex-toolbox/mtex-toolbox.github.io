---
title: 'Defining Rotations'
sidebar: documentation_sidebar
permalink: RotationDefinition_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: RotationDefinition.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/RotationDefinition.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/Rotations/RotationDefinition.py">edit page</a></font>

<!--introduction-->

A reference frame is the coordinate system in which data are expressed. A rotation moves
a geometric object within a fixed reference frame. In MTEX, `rot * v` is the active
rotation that moves the direction `v`. This is different from a frame change, which
describes the same object in another reference frame without moving it. Orientations use
rotations as coordinate mappings, as explained in
[Crystal Orientation as Coordinate Transformation](DefinitionAsCoordinateTransform_py.html).

This page assumes the three-dimensional directions introduced in
[Defining Three-Dimensional Vectors](VectorDefinition_py.html) and basic matrix algebra.

MTEX can build a rotation from Euler angles, an axis and angle, a matrix, or the action
on directions. Every constructor returns a [rotation](rotation.rotation.html) array. MTEX
stores its proper part internally as a [unit quaternion](quaternion.quaternion.html).

```python
import numpy as np
```

```python
from mtex import *
```

```python
plottingConvention.default('y↑→x')
```

## Euler Angles

Euler angles describe a rotation by three successive angular steps. The axes, their
order, and the direction of the mapping belong to the convention. Three numbers without
that convention are therefore ambiguous.

Texture analysis commonly uses the following names:

* Bunge $$(\varphi_1,\Phi,\varphi_2)$$, with the ZXZ axis sequence
* Matthies $$(\alpha,\beta,\gamma)$$, with the ZYZ axis sequence
* Roe $$(\Psi,\Theta,\Phi)$$
* Kocks $$(\Psi,\Theta,\varphi)$$
* Canova $$(\omega,\Theta,\varphi)$$

A new MTEX installation uses Bunge as its preference. Reusable code should name the
convention so that a user's preference cannot change the input.

```python
rotBunge = rotation.byEuler(30 * degree, 50 * degree, 10 * degree, 'Bunge')
rotRoe = rotation.byEuler(30 * degree, 50 * degree, 10 * degree, 'Roe')
```

```python
angle(rotBunge, rotRoe) / degree
```

```text
69.5509
```

The nonzero angle confirms that equal triplets in different conventions need not describe
the same rotation. Angles are radians throughout MTEX, which is why values in degrees are
multiplied by `degree`.

The convention used to read an existing rotation can also be named. `Euler` returns the
three angles in radians; the rotation constructed with the Roe triplet above reads, in
degrees,

```python
np.array(Euler(rotRoe, 'Roe')) / degree
```

```text
array([30., 50., 10.])
```

---

```python
np.array(Euler(rotRoe, 'Bunge')) / degree
```

```text
array([120.,  50., 280.])
```

These are two descriptions of the same rotation. The separate question of which way an
orientation maps coordinates is covered in [MTEX vs. Bunge Convention](MTEXvsBungeConvention_py.html).

For interactive work, [setMTEXpref](setMTEXpref.html) changes the session's default
Euler convention. Explicit conventions remain safer in files that must be reproducible.

## Euler Angles Are Not Unique

Even after the convention is fixed, Euler angles are not always unique. In the Bunge
convention, when the middle angle $$\Phi$$ is zero, only the sum of the first and third
angles is determined. These two triplets therefore describe the same rotation.

```python
rotA = rotation.byEuler(10 * degree, 0, 20 * degree, 'Bunge')
rotB = rotation.byEuler(15 * degree, 0, 15 * degree, 'Bunge')
```

```python
angle(rotA, rotB) / degree
```

```text
1.2722e-14
```

The zero angular difference is the Euler-angle singularity. It is a property of the
representation, not an additional physical freedom of the rotation.

## Axis and Angle

Every non-identity proper rotation in three dimensions turns about an axis. MTEX reports
an angle between $$0$$ and $$180^\circ$$. The identity has no unique axis. At $$180^\circ$$,
the two signs of the axis describe the same rotation.

```python
rot = rotation.byAxisAngle(vector3d.X, 30 * degree)
```

The axis and angle can be read from any rotation, however it was defined.

```python
rot.axis()
```

```text
vector3d (y↑→x)
  x  y  z
  1  0  0
```

---

```python
rot.angle() / degree
```

```text
30.0000
```

The following figure draws the axis in blue, a direction before the rotation in grey,
and the rotated direction in red.

```python
v = normalize(vector3d(0.2, 0.3, 1))
```

```python
arrow3d(1.5 * rot.axis(), faceColor='blue')
hold(True)
arrow3d(1.2 * v, faceColor=[.45, .45, .45])
arrow3d(1.2 * (rot * v), faceColor='red')
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/RotationDefinition-14.png"></center>

Notice that the blue axis stays fixed while the red direction has turned around it. This
fixed direction is the defining axis of the rotation.

## Rodrigues--Frank Vector

The Rodrigues--Frank vector packs axis and angle into one vector. It is the rotation axis
scaled by $$\tan(\omega/2)$$.

```python
R = rot.Rodrigues()
R
```

```text
vector3d (y↑→x)
      x  y  z
  0.268  0  0
```

Its length recovers the rotation angle.

```python
2 * np.arctan(norm(R)) / degree
```

```text
30.0000
```

Constructing a rotation from the vector returns the original rotation, as shown by their
zero angular difference.

```python
rotFromR = rotation.byRodrigues(R)
angle(rot, rotFromR) / degree
```

```text
0
```

## Rotation Matrix

A proper rotation is also represented by an orthogonal $$3 \times 3$$ matrix with
determinant $$+1$$.

```python
M = rot.matrix()
M
```

```text
array([[ 1.   ,  0.   ,  0.   ],
       [ 0.   ,  0.866, -0.5  ],
       [ 0.   ,  0.5  ,  0.866]])
```

Its columns are the rotated basis directions X, Y, and Z. Rotating Y gives the second
column of `M`.

```python
rot * vector3d.Y
```

```text
vector3d (y↑→x)
  x      y    z
  0  0.866  0.5
```

[rotation.byMatrix](rotation.byMatrix.html) reconstructs the rotation.

```python
rotFromM = rotation.byMatrix(M)
angle(rot, rotFromM) / degree
```

```text
0
```

The constructor assumes that its input is orthogonal; it does not validate a matrix
imported from another program. A matrix with determinant $$-1$$ is accepted by
`orthogonalTransform.byMatrix` and stored as an improper rotation, as discussed in
[Improper Rotations](RotationImproper_py.html).

## Defined by What It Does

Often the rotation is known only through the directions it must map. Two non-collinear
pairs determine exactly one rotation when the angle within the first pair equals the
angle within the second pair.

```python
u1, v1 = vector3d.X, vector3d.Y
u2, v2 = vector3d.Z, vector3d.Z
```

```python
rot = rotation.map(u1, v1, u2, v2)
cat(rot * u1, rot * u2)
```

```text
vector3d (y↑→x)
  size: 2
  x  y  z
  0  1  0
  0  0  1
```

The output reproduces the two target directions Y and Z. MTEX raises an error if the
angles within the pairs disagree or if the input directions are collinear.

One pair leaves a rotation about the target direction undetermined.
[rotation.map](rotation.map.html) then returns the smallest-angle rotation taking the
first direction to the second.

```python
rot = rotation.map(vector3d.Z, vector3d.Y)
rot * vector3d.Z
```

```text
vector3d (y↑→x)
  x  y  z
  0  1  0
```

For opposite directions this smallest angle is $$180^\circ$$, but its axis is not unique.
Supply a second pair when the particular half turn matters.

## Fitting Measured Directions

More than two measured pairs will usually not agree exactly. The least-squares solution
from [rotation.fit](rotation.fit.html) makes `rotFit * left` as close as possible to
`right`.

```python
left = vector3d.rand(5)
right = rot * left + 0.1 * vector3d.rand(5)
```

```python
rotFit = rotation.fit(left, right)
angle(rot, rotFit) / degree
```

```text
2.3199
```

The nonzero error comes from the added perturbations. By default, `rotation.fit` uses
Horn's unit-quaternion method. The option `method='kabsch'` selects the Kabsch matrix
method.

## Random Rotations

[rotation.rand](rotation.rand.html) samples the uniform, or Haar, distribution on the
rotation group. Its size arguments create an array of rotations, just as size arguments
do for NumPy arrays.

```python
rotations = rotation.rand(100)
len(rotations)
```

```text
100
```

The output confirms that the array contains 100 rotations. The `maxAngle` option
restricts samples to a ball around the identity. Sampling from a nonuniform distribution
is covered in [Random Sampling](RandomSampling_py.html).

## Quaternions

A proper rotation is defined by the four coordinates of a unit quaternion. The quaternion
and its negative encode the same rotation.

```python
q = quaternion(0.5, 0.5, 0.5, 0.5)
norm(q)
```

```text
1
```

The norm is one, so `q` can be passed to the rotation constructor.

```python
rotQ = rotation(q)
rotMinusQ = rotation(-q)
```

```python
angle(rotQ, rotMinusQ) / degree
```

```text
0
```

The zero difference demonstrates the double representation directly.
[Rotation Representations](RotationRepresentations_py.html) explains the geometry and
numerical trade-offs of quaternions and rotation vectors.

## Constructor Index

The constructors above cover the usual inputs. The complete set also includes generated,
imported, and improper rotations.

| input | constructor |
|---|---|
| Euler angles | [rotation.byEuler](rotation.byEuler.html) |
| axis and angle | [rotation.byAxisAngle](rotation.byAxisAngle.html) |
| matrix | [rotation.byMatrix](rotation.byMatrix.html) |
| Rodrigues--Frank vector | [rotation.byRodrigues](rotation.byRodrigues.html) |
| homochoric vector | [rotation.byHomochoric](rotation.byHomochoric.html) |
| unit quaternion | [rotation(q)](rotation.rotation.html) |
| exact direction pairs | [rotation.map](rotation.map.html) |
| noisy direction pairs | [rotation.fit](rotation.fit.html) |
| identity, random, or missing | [rotation.id](rotation.id.html), [rotation.rand](rotation.rand.html), [rotation.nan](rotation.nan.html) |
| file | [rotation.load](rotation.load.html) |
| distribution | [odf.discreteSample](SO3Fun.discreteSample.html) |
| inversion or reflection | [rotation.inversion](rotation.inversion.html), [reflection](reflection.html) |

## References

* H.-J. Bunge, [Texture Analysis in Materials Science: Mathematical Methods](https://doi.org/10.1016/C2013-0-11769-2),
  Butterworths, English ed., 1982, establishes the Euler-angle convention used in texture
  analysis.
* S. I. Wright and M. De Graef, [Electron backscatter diffraction](https://doi.org/10.1107/S1574870722004554),
  International Tables for Crystallography C, ch. 1.6, 2022, records the Bunge convention
  and the main rotation representations used for EBSD.
* A. Morawiec, [Orientations and Rotations: Computations in Crystallographic Textures](https://doi.org/10.1007/978-3-662-09156-2),
  Springer, 2004, develops the geometry and parametrisations of rotation space.
* D. Rowenhorst et al., [Consistent representations of and conversions between 3D rotations](https://doi.org/10.1088/0965-0393/23/8/083501),
  Modelling and Simulation in Materials Science and Engineering 23 (2015) 083501,
  compares conventions and conversion formulas.
* W. Kabsch, [A solution for the best rotation to relate two sets of vectors](https://doi.org/10.1107/S0567739476001873),
  Acta Crystallographica A32 (1976) 922--923, gives the matrix fitting method available
  through `method='kabsch'`.
* B. K. P. Horn, [Closed-form solution of absolute orientation using unit quaternions](https://doi.org/10.1364/JOSAA.4.000629),
  Journal of the Optical Society of America A 4 (1987) 629--642, gives the default
  quaternion method.

## Next

[Representations](RotationRepresentations_py.html) compares the coordinate descriptions of
rotation space. [Improper Rotations](RotationImproper_py.html) then treats inversion and
reflection, and [Operations](RotationOperations_py.html) composes, inverts, and applies
rotations. A rotation carrying crystal and specimen symmetry becomes an
[orientation](OrientationDefinition_py.html).

## Technical Details

The port stores a rotation as its unit quaternion and derives the axis, the angle, the
Rodrigues vector and the matrix on demand; what MATLAB implements as a method is a method
with parentheses here, `rot.axis()`, `rot.angle()`, `rot.matrix()`. `Euler` returns the
three angles in radians as a tuple, where MATLAB without an output prints them in degrees;
the page divides the array by `degree`. A matrix of determinant $$-1$$ goes through
`orthogonalTransform.byMatrix`, since a `rotation` is proper here.
{% endraw %}
