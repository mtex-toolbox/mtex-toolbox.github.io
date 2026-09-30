---
title: 'The Tangent Space on the Rotation Group'
sidebar: documentation_sidebar
permalink: RotationTangentSpace_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: RotationTangentSpace.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/RotationTangentSpace.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/Rotations/RotationTangentSpace.py">edit page</a></font>

<!--introduction-->

A tangent vector describes an instantaneous change of a rotation: the direction in which
the rotation changes and the rate of that change. It is attached to one rotation $$R$$,
called its base point. The collection of all tangent vectors attached to $$R$$ is the
*tangent space* at $$R$$.

This page assumes the active rotations introduced in
[Defining Rotations](RotationDefinition_py.html) and the multiplication order explained in
[Calculating with Rotations](RotationOperations_py.html).
[Spin Tensors](RotationSpinTensor_py.html) develops the continuum-mechanics interpretation
of an instantaneous rotation.

Tangent vectors provide local, three-component coordinates for the curved rotation group
SO(3). MTEX uses them for derivatives, gradients, and vector fields on SO(3), and for
finite updates through the exponential map.

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

## Left and Right Representations

A tangent vector at $$R$$ is a $$3 \times 3$$ matrix, but it can be described by only three
numbers. Those numbers form a skew-symmetric matrix $$S$$. The skew-symmetric matrix can
multiply $$R$$ from the left or from the right:

$$ T = S_{\rm left} R = R S_{\rm right}. $$

These are two coordinate representations of the same tangent vector, not two different
tangent spaces. In MTEX the left coordinates are expressed in the specimen frame and the
right coordinates in the crystal frame.

```python
R = rotation.byAxisAngle(vector3d.X, 20 * degree)
SLeft = spinTensor(vector3d(0, 0, 1))
SRight = spinTensor(vector3d(0, np.sin(20 * degree), np.cos(20 * degree)))
```

```python
tangentLeft = SLeft.M @ R.matrix()
tangentRight = R.matrix() @ SRight.M
```

```python
np.max(np.abs(tangentLeft - tangentRight))
```

```text
4.2654e-17
```

The residual is at round-off level, so both products describe the same tangent matrix.
The coordinates in `SLeft` and `SRight` differ because their bases differ.

## Tangent Vectors in MTEX

MTEX stores the coordinates, the base point, and the left or right representation in an
[SO3TangentVector](SO3TangentVector.SO3TangentVector.html). The base point is an
orientation, so it is also the single source of any crystal and specimen symmetries
carried by the tangent vector.

```python
components = 0.2 * vector3d(1, 2, 3)
vLeft = SO3TangentVector(components, R)
vLeft
```

```text
SO3TangentVector (left, y↑→x)
  reference: rotation
    x    y    z
  0.2  0.4  0.6
```

The display identifies `vLeft` as a left vector and prints its three specimen-frame
coordinates. The default representation is left.

A tangent vector is drawn as an arrow attached to its base point.

```python
plot(R, 'axisAngle', MarkerColor='red')
plt.gca().set_axis_off()
hold(True)
quiver3(vLeft, LineWidth=3, maxHeadSize=4)
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/RotationTangentSpace-8.png"></center>

The red marker is the base rotation $$R$$. The blue arrow is a local direction at that
point, not a second rotation in the surrounding space. Moving the same three coordinates
to another base point would therefore define a different tangent vector.

## Changing Representation

Giving the same coordinates to the right-vector constructor does not convert `vLeft`.
It defines a different tangent vector whose coordinates happen to be the same numbers.

```python
vSameCoordinates = SO3TangentVector(components, R, 'right')
vSameCoordinates
```

```text
SO3TangentVector (right, y↑→x)
  reference: rotation
    x    y    z
  0.2  0.4  0.6
```

The `right` label in the display is the essential difference. To express `vLeft` itself
in right coordinates, use [right](SO3TangentVector.right.html).

```python
vRight = right(vLeft)
vRight
```

```text
SO3TangentVector (right, y↑→x)
  reference: rotation
    x      y      z
  0.2  0.581  0.427
```

The transformed coordinates differ from those of `vLeft`, while the base point and the
geometric tangent vector stay fixed. The inverse conversion returns to the original
coordinates.

```python
vLeftAgain = left(vRight)
norm(vLeftAgain - vLeft)
```

```text
5.5511e-17
```

## Computing with Tangent Vectors

MTEX converts compatible tangent vectors to a common representation before performing
arithmetic. Thus adding `vLeft` to its right-coordinate representation gives twice the
original vector.

```python
vLeft + vRight
```

```text
SO3TangentVector (left, y↑→x)
  reference: rotation
    x    y    z
  0.4  0.8  1.2
```

The following operations are available for tangent vectors `v1` and `v2` at the same
base point:

* sums, differences, scaling, and division
* inner products with [dot(v1,v2)](SO3TangentVector.dot.html)
* cross products with [cross(v1,v2)](SO3TangentVector.cross.html)
* lengths with [norm(v1)](vector3d.norm.html)
* normalization with [normalize(v1)](vector3d.normalize.html)
* averages with [mean(v1)](SO3TangentVector.mean.html)

The last three operations use the vector operations inherited by `SO3TangentVector`.
Arithmetic is defined only for tangent vectors at the same base point and with
compatible symmetries.

## Exponential and Logarithm Maps

The exponential map follows a tangent direction for the finite angular step stored in
the vector norm. It returns the endpoint on SO(3).

```python
R2 = exp(vLeft)
```

The logarithm map reverses this construction. Given the endpoint first and the base
point second, [log](quaternion.log.html) returns the tangent vector at the base point
that leads to the endpoint.

```python
vBack = log(R2, R)
norm(vBack - vLeft)
```

```text
1.2413e-16
```

The displayed residual confirms the round trip to numerical precision. Rotation
logarithms use a principal branch. At a relative angle of $$180^\circ$$ the rotation axis,
and therefore the logarithm, is not unique.

Together, `log` and `exp` let an algorithm compute a local change in a flat tangent
space and apply that change back on the curved rotation group. This is the pattern
behind interpolation, averaging, and optimization of rotations.

## The Maths Behind the Two Representations

The tangent space at $$R$$ is

$$ T_R SO(3) = \{S R \mid S=-S^T\} = \{R S \mid S=-S^T\}. $$

The set of skew-symmetric matrices is the Lie algebra $$\mathfrak{so}(3)$$. Therefore the
two equal descriptions are also written $$\mathfrak{so}(3)R$$ and $$R\mathfrak{so}(3)$$.
Equating the tangent matrices gives the coordinate change

$$ S_{\rm right}=R^{-1}S_{\rm left}R. $$

The methods `right` and `left` apply this change of basis. They do not move the base
point or change the geometric tangent vector.

## References

* A. Morawiec, [Orientations and Rotations: Computations in Crystallographic Textures](https://doi.org/10.1007/978-3-662-09156-2),
  Springer, 2004, develops the geometry of rotation space and small orientation changes
  for texture analysis.
* P.-A. Absil, R. Mahony, and R. Sepulchre, [Optimization Algorithms on Matrix Manifolds](https://doi.org/10.1515/9781400830244),
  Princeton University Press, 2008, introduces tangent-space methods and exponential
  updates for optimization on matrix manifolds.
* R. Hartley, J. Trumpf, Y. Dai, and H. Li, [Rotation Averaging](https://doi.org/10.1007/s11263-012-0601-0),
  International Journal of Computer Vision 103 (2013) 267--305, compares rotation-space
  metrics and averaging methods.

## Next

[Spin Tensors](RotationSpinTensor_py.html) develops the skew-symmetric matrix description
as a rate of rotation in a deforming material. With crystal and specimen symmetries
attached, tangent vectors become [vector fields on SO(3)](SO3FunVectorField_py.html).

## Technical Details

A tangent vector stores its components, its side and its reference, nothing else; the
frame it is written in is read off the reference. The side is the string `'left'` or
`'right'` where MATLAB names `SO3TangentSpace.leftVector` and `rightVector`. The
`spinTensor` of a vector is the tensor of the tensors layer, its matrix `S.M`.
{% endraw %}
