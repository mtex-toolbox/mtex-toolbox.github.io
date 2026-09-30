---
title: 'Spin Tensors as Infinitesimal Changes of Rotations'
sidebar: documentation_sidebar
permalink: RotationSpinTensor_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: RotationSpinTensor.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/RotationSpinTensor.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/Rotations/RotationSpinTensor.py">edit page</a></font>

<!--introduction-->

A spin tensor is a skew-symmetric matrix that describes an infinitesimal rotation. Its
three independent entries give an axis scaled by an angle, or by an angular rate when
the independent variable is time.

This page assumes the active rotations introduced in
[Defining Rotations](RotationDefinition_py.html), the multiplication order in
[Calculating with Rotations](RotationOperations_py.html), and the tangent vectors
introduced in [Tangent Spaces](RotationTangentSpace_py.html).

MTEX uses a [spinTensor](spinTensor.spinTensor.html) as the matrix form of a tangent
vector on the rotation group SO(3). MTEX calls its two coordinate representations left
and right.

```python
import matplotlib.pyplot as plt
import numpy as np
```

```python
from mtex import *
```

```python
plottingConvention.default('y↑→x')
```

## A Small Rotation

Start from a reference rotation and perturb it on the right about the Cartesian
direction $$(1,2,3)$$. The constructor normalizes the axis, and the small angle is
$$\delta=0.01^\circ$$.

```python
rotRef = rotation.byEuler(10 * degree, 20 * degree, 30 * degree, 'Bunge')
axis123 = vector3d(1, 2, 3)
delta = 0.01 * degree
increment = rotation.byAxisAngle(axis123, delta)
rotNext = rotRef * increment
```

For the path $$R(\delta)=R\,P(\delta)$$, a finite-difference approximation to the tangent
matrix is

$$ T = \left.\frac{\mathrm d R(\delta)}{\mathrm d\delta}\right|_{0} \simeq \frac{R(\delta)-R}{\delta}. $$

```python
T = (rotNext.matrix() - rotRef.matrix()) / delta
T
```

```text
array([[-0.5399, -0.6025,  0.5816],
       [ 0.753 , -0.5816,  0.1368],
       [-0.2648,  0.114 ,  0.0122]])
```

The tangent matrix `T` is not itself skew symmetric. Dividing out the reference rotation
from the right or left gives two skew representations of the same tangent:

$$ S_{\rm left}=T R^{-1}, \qquad S_{\rm right}=R^{-1}T. $$

```python
invR = matrix(inv(rotRef))
SLeft = T @ invR
SRight = invR @ T
SLeft
```

```text
array([[-0.0001, -0.9575,  0.2758],
       [ 0.9575, -0.0001,  0.085 ],
       [-0.2758, -0.085 , -0.    ]])
```

---

```python
SRight
```

```text
array([[-0.0001, -0.8018,  0.5345],
       [ 0.8018, -0.0001, -0.2672],
       [-0.5345,  0.2673, -0.    ]])
```

The small diagonal entries are a second-order finite-difference residual. Constructing a
`spinTensor` extracts the antisymmetric part. Its axial vector uses the convention

$$ S\,x = \omega \mathbin{\times} x. $$

Multiplication by $$\sqrt{14}$$ undoes the normalization of $$(1,2,3)$$. The right
coordinates recover the input axis, while the left coordinates are that axis expressed
after the reference rotation.

```python
scaledAxisRight = vector3d(spinTensor(SRight)) * np.sqrt(14)
scaledAxisRight
```

```text
vector3d (y↑→x)
  x  y  z
  1  2  3
```

---

```python
scaledAxisLeft = vector3d(spinTensor(SLeft)) * np.sqrt(14)
scaledAxisLeft
```

```text
vector3d (y↑→x)
       x     y     z
  -0.318  1.03  3.58
```

## Seeing the Instantaneous Motion

A spin tensor is easier to read through its action on a direction. The red arrow is the
rotation axis, and the grey arrow is a direction on the black orbit. The blue arrow is
its instantaneous velocity.

```python
rotationAxis = normalize(axis123)
v0 = rotation.byAxisAngle(rotationAxis, np.pi / 2) * normalize(vector3d(1, -2, 1))
t = np.linspace(0, 2 * np.pi, 300)
orbit = rotation.byAxisAngle(rotationAxis, t) * v0
velocity = cross(rotationAxis, v0)
```

```python
arrow3d(1.25 * rotationAxis, faceColor='red')
hold(True)
arrow3d(0.999 * v0, faceColor=[.45, .45, .45])
arrow3d(0.9 * normalize(velocity), anchor=v0, faceColor='blue', arrowWidth=0.035)
hold(False)
ax = plt.gca()
ax.plot(orbit.x, orbit.y, orbit.z, 'k', linewidth=1.5)

# look at the orbit plane from above, so the three arrows do not overlap
ax.view_init(elev=25, azim=-180)
```

<center class="mtex-figure"><img class="inline" src="figures/python/RotationSpinTensor-11.png"></center>

Notice that the blue arrow is tangent to the black orbit. It is also perpendicular to
both the red axis and the grey direction, as the cross product in
$$Sx=\omega\mathbin{\times}x$$ requires.

## When a Spin Tensor Is a Rate

The matrices above are derivatives with respect to rotation angle, not time. They become
angular-velocity tensors only for a time-dependent rotation $$R(t)$$:

$$ W_{\rm left}=\dot R R^{-1}, \qquad W_{\rm right}=R^{-1}\dot R. $$

In continuum mechanics the spatial velocity gradient $$L=\nabla v$$ splits into a symmetric
rate of deformation and a spin tensor,

$$ L=D+W, \qquad D=\tfrac12(L+L^T), \qquad W=\tfrac12(L-L^T). $$

Thus `spinTensor` can store either a finite rotation increment or a rate. Its units and
physical meaning come from the quantity used to construct it.

## Finite Changes with Log and Exp

Matrix subtraction is useful only for a small perturbation. For a finite change,
[log](quaternion.log.html) returns the exact tangent generator at a reference rotation.
Here the perturbation angle is one radian. The third argument names the side of the
tangent space, and `spinTensor` gives the matrix form.

```python
finiteAngle = 1
finiteIncrement = rotation.byAxisAngle(axis123, finiteAngle)
rotEnd = rotRef * finiteIncrement
```

```python
SRight = spinTensor(log(rotEnd, rotRef, 'right'))
SRight
```

```text
spinTensor (y↑→x)
  rank: 2 (3 × 3)
        0  -0.8018   0.5345
   0.8018        0  -0.2673
  -0.5345   0.2673        0
```

---

```python
SLeft = spinTensor(log(rotEnd, rotRef, 'left'))
SLeft
```

```text
spinTensor (y↑→x)
  rank: 2 (3 × 3)
        0  -0.9575  0.2758
   0.9575        0   0.085
  -0.2758   -0.085       0
```

Unlike the finite-difference matrices, the displayed results are exactly skew symmetric.
Their axial vectors point along the right and left coordinate triplets shown above, with
length equal to the one-radian angle.

The vector forms contain the same three components without the skew-symmetric matrix
wrapper.

```python
vRight = log(rotEnd, rotRef, 'right')
vLeft = log(rotEnd, rotRef, 'left')
```

```python
spinVectorResidual = np.array([norm(vector3d(SRight) - vector3d(vRight)), norm(vector3d(SLeft) - vector3d(vLeft))])
spinVectorResidual
```

```text
array([0., 0.])
```

Both zero residuals confirm that spin tensors and rotation vectors are two
representations of the same tangent coordinates.

[exp](vector3d.exp.html) applies those coordinates, as a vector or as a spin tensor, back
at the reference rotation. All four reconstructions below should return `rotEnd`.

```python
rotFromRightVector = exp(vector3d(vRight), rotRef, 'right')
rotFromLeftVector = exp(vector3d(vLeft), rotRef, 'left')
rotFromRightSpin = exp(SRight, rotRef, 'right')
rotFromLeftSpin = exp(SLeft, rotRef, 'left')
```

```python
roundTripError = angle(rotEnd, cat(rotFromRightVector, rotFromLeftVector, rotFromRightSpin, rotFromLeftSpin)) / degree
roundTripError
```

```text
array([0., 0., 0., 0.])
```

The displayed errors are at floating-point level. Rotation logarithms use a principal
branch with angles up to $$180^\circ$$. At exactly $$180^\circ$$ the two signs of the axis
describe the same rotation, so the logarithm is not unique.

## Under Crystal Symmetry

For an orientation, right coordinates belong to the crystal frame and left coordinates
belong to the specimen frame. The crystal frame is the Cartesian reference frame glued
to the phase's lattice basis. The specimen frame is the reference frame in which the
sample is expressed.

Define a one-radian perturbation about the trigonal crystal direction $$(1,2,\bar3,3)$$
and apply it on the right.

```python
cs = crystalFrame('321')
oriRef = orientation.byEuler(10 * degree, 20 * degree, 30 * degree, 'Bunge', cs)
crystalIncrement = orientation.byAxisAngle(Miller(1, 2, -3, 3, cs), 1)
oriEnd = oriRef * crystalIncrement
```

The right tangent is expressed in crystal coordinates. Converting it to
Miller indices recovers the direction used above.

```python
crystalAxis = Miller(log(oriEnd, oriRef, 'right'), oriEnd.CS)
recoveredCrystalAxis = round(crystalAxis)
recoveredCrystalAxis
```

```text
vector3d (321)
  h  k   i  l
  1  2  -3  3
```

The left tangent gives the same change in specimen coordinates.

```python
specimenVector = log(oriEnd, oriRef, 'left')
specimenVector
```

```text
SO3TangentVector (left, y↑→x)
  reference: orientation (321 → y↑→x)
      x      y      z
  0.162  0.428  0.889
```

Applying the crystal-frame tangent returns the endpoint. The displayed value is the
angular round-trip error in degrees.

```python
oriFromCrystalVector = exp(crystalAxis, oriRef, 'right')
orientationRoundTripError = angle(oriEnd, oriFromCrystalVector) / degree
orientationRoundTripError
```

```text
1.9083e-14
```

[orientation.log](orientation.log.html) first chooses the shortest symmetry-equivalent
change. This makes the tangent describe the two crystal orientations rather than their
stored representatives. Pass `noSymmetry=True` only when the unreduced rotation
representatives are the intended objects.

## The Maths Behind Left and Right Coordinates

Let $$[\omega]_\times$$ denote the skew matrix whose axial vector is $$\omega$$. For the
right-perturbed path $$R(\delta)=R\exp(\delta[\omega]_{\times})$$,

$$ T=R[\omega]_{\times}, \qquad S_{\rm right}=[\omega]_{\times}, \qquad S_{\rm left}=R[\omega]_{\times}R^{-1}. $$

Conjugating a skew matrix rotates its axial vector. Therefore
$$\omega_{\rm left}=R\omega_{\rm right}$$. Left and right describe one tangent at one base
rotation; only the coordinate frame changes.

## References

* A. Morawiec, [Orientations and Rotations: Computations in Crystallographic Textures](https://doi.org/10.1007/978-3-662-09156-2),
  Springer, 2004, develops the geometry of rotation space and small orientation changes.
* A. Morawiec, [The rotation rate field and geometry of orientation space](https://doi.org/10.1107/S002188989000512X),
  Journal of Applied Crystallography 23 (1990) 374--377, relates infinitesimal rotations
  to texture evolution.
* M. E. Gurtin, E. Fried, and L. Anand, [The Mechanics and Thermodynamics of Continua](https://doi.org/10.1017/CBO9780511762956),
  Cambridge University Press, 2010, develops stretching and spin in continuum kinematics.

## Next

[Tensors](TensorDefinition_py.html) introduces the typed tensors used in the material
description, including [velocityGradientTensor](velocityGradientTensor.velocityGradientTensor.html).
[Taylor Model](TaylorModel_py.html) computes crystallographic spin, and
[Texture Evolution](TextureEvolution_py.html) applies those increments to a population of
crystal orientations.

## Technical Details

MATLAB names the four tangent representations `SO3TangentSpace.leftVector`,
`rightVector`, `leftSpinTensor` and `rightSpinTensor`; here `log` takes the side as
`'left'` or `'right'` and returns the vector, and `spinTensor` of that vector is its
matrix form, `vector3d` of a spin tensor its axial vector. `exp` takes either form with
the reference and the side. The orbit is a matplotlib line, as MATLAB's `plot3` is
MATLAB's own.
{% endraw %}
