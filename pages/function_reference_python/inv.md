---
title: 'inv'
sidebar: function_reference_sidebar
permalink: inv_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
invert a rotation, tensor or spatial transform.

## Syntax

<div class="mx-form" markdown="1">

```python
inverse = inv(x)
```

</div>

## Description

For an MTEX object, inv(x, ...) calls x.inv(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

For numeric arrays without an MTEX method, this calls numpy.linalg.inv.

## Signature

<div class="mx-form" markdown="1">

```python
inv(x, *args, **kwargs)
```

</div>

## Methods it calls

| [complianceTensor](complianceTensor.inv_py.html) | the inverse: rank two by the matrix, rank four through the Voigt matrix, which swaps the convention and with it the class, a stiffness inverting to a compliance |
| [orientation](orientation.inv_py.html) | reverse the direction of an orientation mapping |
| [orthogonalTransform](orthogonalTransform.inv_py.html) | the inverse transform, the inverse rotation with the same parity |
| [quaternion](quaternion.inv_py.html) | return the multiplicative inverse of each quaternion |
| [rotation](rotation.inv_py.html) | return the rotation that reverses each input rotation |
| [SO3FunHarmonic](SO3FunHarmonic.inv_py.html) | form the function evaluated at inverse rotations |
| [SO3FunRBF](SO3FunRBF.inv_py.html) | the inverse function f(g^-1), the centres inverted, crystal and specimen sides exchanged |
| [SO3VectorFieldHarmonic](SO3VectorField.inv_py.html) | the push-forward under R -> R^-1: a left vector v at R becomes the right vector -v at R^-1, so inv(grad f) = grad(inv f) |
| [spatialTransform](spatialTransform.inv_py.html) | the inverse transform |
| [spatialTransformComposite](spatialTransformComposite.inv_py.html) | the inverses of the stages in reverse order |
| [spatialTransformDrift](spatialTransformDrift.inv_py.html) | the inverse by fixed point iteration |
| [spatialTransformField](spatialTransformField.inv_py.html) | the inverse by fixed point iteration |
| [spatialTransformHandle](spatialTransformHandle.inv_py.html) | the transform of the inverse function, an error where none was given |
| [spatialTransformId](spatialTransformId.inv_py.html) | the identity itself |
| [spatialTransformInverse](spatialTransformInverse.inv_py.html) | the transform it inverts |
| [spatialTransformPoly](spatialTransformPoly.inv_py.html) | the inverse: the inverse affine map at degree 1, the fixed point inverse at degree 2 |
| [spatialTransformProjective](spatialTransformProjective.inv_py.html) | the homography of the inverse matrix |
| [spatialTransformRigid](spatialTransformRigid.inv_py.html) | the translation by -u |
| [spatialTransformShift](spatialTransformShift.inv_py.html) | the affine map of the inverse matrix |
| [spatialTransformTilt](spatialTransformTilt.inv_py.html) | the inverses of the stages in reverse order, a plain composite |
| [stiffnessTensor](stiffnessTensor.inv_py.html) | the inverse: rank two by the matrix, rank four through the Voigt matrix, which swaps the convention and with it the class, a stiffness inverting to a compliance |
| [tensor](tensor.inv_py.html) | the inverse: rank two by the matrix, rank four through the Voigt matrix, which swaps the convention and with it the class, a stiffness inverting to a compliance |

## Used on

[DefinitionAsCoordinateTransform](DefinitionAsCoordinateTransform_py.html), [MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [OrientationInversePoleFigure](OrientationInversePoleFigure_py.html), [EBSDSharpPlot](EBSDSharpPlot_py.html), [EBSDSpatialTransform](EBSDSpatialTransform_py.html), [AnisotropicTheory](AnisotropicTheory_py.html), [IsotropicTheory](IsotropicTheory_py.html), [NotationAndConventions](NotationAndConventions_py.html), [BoundaryProperties](BoundaryProperties_py.html), [BoundarySelect](BoundarySelect_py.html), [MisorientationGrainExchangeSym](MisorientationGrainExchangeSym_py.html), [MisorientationTheory](MisorientationTheory_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
