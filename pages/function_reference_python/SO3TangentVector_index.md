---
title: 'The class SO3TangentVector'
sidebar: function_reference_sidebar
permalink: SO3TangentVector_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3TangentVector_index.html
status: Reference
---
{% raw %}
a tangent vector of SO(3), a rotation vector v at a reference rotation or orientation, on the
left, `exp(v) * oriRef`, or on the right, `oriRef * exp(v)`; from vectors or skew matrices

## Syntax

<div class="mx-form" markdown="1">

```python
SO3TangentVector(v, oriRef)
SO3TangentVector(v, oriRef, 'right')
```

</div>

<div class="mx-form" markdown="1">

```python
SO3TangentVector(S, oriRef, side)
```

From skew matrices of shape (..., 3, 3).

</div>

## Input

| `v` | rotation-vector components as vector3d or numeric arrays, or skew-symmetric matrices |
| `oriRef` | reference rotation or orientation at which the tangent vectors are based |
| `side` | 'left' for exp(v)*oriRef or 'right' for oriRef*exp(v); default 'left' |

## Members

| [angle](SO3TangentVector.angle_py.html) | the angle of the rotation the vector describes, or the angle between two vectors |
| [cat](SO3TangentVector.cat_py.html) | tangent vectors concatenate on one side |
| [copy](SO3TangentVector.copy_py.html) | a copy of the tangent vectors, components and references |
| [cross](SO3TangentVector.cross_py.html) | the cross product with tangent vectors at the same reference, brought to this side |
| [CS](SO3TangentVector.CS_py.html) | the crystal frame of the reference, None for a rotation |
| [dot](SO3TangentVector.dot_py.html) | the inner product with tangent vectors at the same reference, brought to this side |
| [dot_outer](SO3TangentVector.dot_outer_py.html) | the inner product with tangent vectors at the same reference, brought to this side |
| [eq](SO3TangentVector.eq_py.html) | equal at the same reference within tol in the components (MATLAB's eq) |
| [exp](SO3TangentVector.exp_py.html) | return the rotations reached by the tangent vectors from their references |
| [frame](SO3TangentVector.frame_py.html) | the frame the components are written in: the specimen frame of the reference on the left, its crystal frame on the right |
| [frameA](SO3TangentVector.frameA_py.html) | the frame the orientations map from, the crystal frame |
| [frameB](SO3TangentVector.frameB_py.html) | the frame the orientations map to, the specimen or a second crystal frame |
| [left](SO3TangentVector.left_py.html) | express the tangent vectors on the left of their reference rotations |
| [mean](SO3TangentVector.mean_py.html) | the mean of tangent vectors at one shared reference, weighted when weights are given |
| [mtimes](SO3TangentVector.mtimes_py.html) |  |
| [plot](SO3TangentVector.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [plus](SO3TangentVector.plus_py.html) |  |
| [quiver3](SO3TangentVector.quiver3_py.html) | arrows in space: tangent vectors in orientation space, a field on the sphere or SO(3), or arrows at positions |
| [quiverSection](SO3TangentVector.quiverSection_py.html) | arrows on a section plot: of a function on the sphere along one of its circles, or at orientations in the sections of orientation space |
| [rdivide](SO3TangentVector.rdivide_py.html) |  |
| [reshape](SO3TangentVector.reshape_py.html) | the tangent vectors in another shape, a reference per element reshaped with them |
| [right](SO3TangentVector.right_py.html) | express the tangent vectors on the right of their reference rotations |
| [SO3TangentVector](SO3TangentVector.SO3TangentVector_py.html) | a tangent vector of SO(3), a rotation vector v at a reference rotation or orientation, on the left, `exp(v) * oriRef`, or on the right, `oriRef * exp(v)` |
| [spinTensor](SO3TangentVector.spinTensor_py.html) | the skew matrix as the tensor of the tensors layer, in the frame of the side |
| [SS](SO3TangentVector.SS_py.html) | the specimen frame of the reference, None for a rotation |
| [subsref](SO3TangentVector.subsref_py.html) |  |
| [sum](SO3TangentVector.sum_py.html) | the sum of tangent vectors at one shared reference, over all or along an axis |
| [T](SO3TangentVector.T_py.html) | the transposed array of tangent vectors, a reference per element transposed with them |
| [times](SO3TangentVector.times_py.html) |  |
| [toSide](SO3TangentVector.toSide_py.html) | the vectors on the side asked for, 'left' or 'right' |
| [unique](SO3TangentVector.unique_py.html) | the disjoint list of tangent vectors at one shared reference |

## Used on

[SingleSlipModel](SingleSlipModel_py.html), [RotationTangentSpace](RotationTangentSpace_py.html)

MATLAB's [SO3TangentVector_index](SO3TangentVector_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/tangent.py#L111">source</a></font>
{% endraw %}
