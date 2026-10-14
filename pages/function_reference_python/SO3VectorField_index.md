---
title: 'The class SO3VectorFieldHarmonic'
sidebar: function_reference_sidebar
permalink: SO3VectorField_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3VectorField_index.html
status: Reference
---
{% raw %}
a vector field on SO(3) whose three components are series of Wigner functions: from a
coefficient matrix, another field, tangent vectors at orientations, three component functions
or a callable, in the left or right tangent space, symmetrised to be equivariant

```python
SO3VectorFieldHarmonic(fhat, cs, ss, 'left')
SO3VectorFieldHarmonic(F, 'right')                   another field on the right side
SO3VectorFieldHarmonic(t, bandwidth=16)              the field through tangent vectors t
SO3VectorFieldHarmonic(lambda ori: ..., cs, ss)      by quadrature
```

## Members

| | |
|---|---|
| [antiderivative](SO3VectorField.antiderivative_py.html) | the function of mean zero whose gradient the field is |
| [antiderivative](SO3VectorFieldHarmonic.antiderivative_py.html) | the function of mean zero whose gradient the field is |
| [approximate](SO3VectorFieldHarmonic.approximate_py.html) | MATLAB's approximate: the quadrature of a callable or of values at orientations |
| [bandwidth](SO3VectorFieldHarmonic.bandwidth_py.html) | the bandwidth, the largest degree of the component expansions |
| [component](SO3VectorFieldHarmonic.component_py.html) | one component as a function on the component frames |
| [cross](SO3VectorField.cross_py.html) | the pointwise cross product with another field, a field of the same side |
| [cross](SO3VectorFieldHarmonic.cross_py.html) | the pointwise cross product with another field, a field of the same side |
| [curl](SO3VectorField.curl_py.html) | the curl, a field of the same side |
| [curl](SO3VectorFieldHarmonic.curl_py.html) | the curl, a field of the same side |
| [div](SO3VectorField.div_py.html) | the divergence, a function on SO(3) |
| [div](SO3VectorFieldHarmonic.div_py.html) | the divergence, a function on SO(3) |
| [dot](SO3VectorField.dot_py.html) | the inner product with a constant vector, exact, a function on the component frames |
| [dot](SO3VectorFieldHarmonic.dot_py.html) | the inner product with a constant vector, exact, a function on the component frames |
| [eval](SO3VectorFieldHarmonic.eval_py.html) | the tangent vectors of the field at orientations |
| [fhat](SO3VectorFieldHarmonic.fhat_py.html) | the coefficients of the components in MTEX's basis, one column per component |
| [frameA](SO3VectorFieldHarmonic.frameA_py.html) | the frame the orientations map from, the crystal frame |
| [frameB](SO3VectorFieldHarmonic.frameB_py.html) | the frame the orientations map to, the specimen or a second crystal frame |
| [interpolate](SO3VectorFieldHarmonic.interpolate_py.html) | the function of least squares through values at nodes, on SO(3) for orientations, on the sphere for directions, a vector field for vector values, fitted by LSQR with a Sobolev penalty lambda_ of order s |
| [inv](SO3VectorField.inv_py.html) | the push-forward under R -> R^-1: a left vector v at R becomes the right vector -v at R^-1, so inv(grad f) = grad(inv f) |
| [isclose](SO3VectorFieldHarmonic.isclose_py.html) | whether two fields have the same coefficients on one side up to the relative tolerance rtol |
| [left](SO3VectorField.left_py.html) | the field with its values in the left tangent space, as a harmonic field |
| [left](SO3VectorFieldHarmonic.left_py.html) | the field with its values in the left tangent space, as a harmonic field |
| [mean](SO3VectorField.mean_py.html) | the mean over SO(3), and the length of the vectors as a function, MATLAB's norm |
| [mean](SO3VectorFieldHarmonic.mean_py.html) | the mean over SO(3), and the length of the vectors as a function, MATLAB's norm |
| [minus](SO3VectorField.minus_py.html) |  |
| [mrdivide](SO3VectorField.mrdivide_py.html) |  |
| [mtimes](SO3VectorField.mtimes_py.html) |  |
| [norm](SO3VectorField.norm_py.html) | the length of the vectors as a function on SO(3), the same as abs |
| [norm](SO3VectorFieldHarmonic.norm_py.html) | the length of the vectors as a function on SO(3), the same as abs |
| [normalize](SO3VectorField.normalize_py.html) | the field of unit vectors in the directions of the field, by quadrature at twice the bandwidth |
| [normalize](SO3VectorFieldHarmonic.normalize_py.html) | the field of unit vectors in the directions of the field, by quadrature at twice the bandwidth |
| [plot](SO3VectorField.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [plus](SO3VectorField.plus_py.html) |  |
| [plus](SO3VectorFieldHarmonic.plus_py.html) |  |
| [quadrature](SO3VectorFieldHarmonic.quadrature_py.html) | MATLAB's SO3VectorFieldHarmonic.quadrature(fun, cs): the field of a callable, cut to the last degree that carries more than rounding, as a polynomial field is |
| [quiver3](SO3VectorField.quiver3_py.html) | quiver3d(t): a tangent vector as an arrow at its reference in orientation space, in the coordinates of the held axes or axis angle space |
| [quiver](SO3VectorField.quiver_py.html) | quiver(v, w), quiver(vF), quiver(ori, w): arrows at directions, a vector or axis field, or arrows at orientations in the sections of the current figure |
| [quiverSection](SO3VectorField.quiverSection_py.html) | quiver(ori, w) on a section plot: an arrow along w at every orientation, w a specimen direction per orientation |
| [rdivide](SO3VectorField.rdivide_py.html) |  |
| [rdivide](SO3VectorFieldHarmonic.rdivide_py.html) |  |
| [right](SO3VectorField.right_py.html) | the field with its values in the right tangent space, as a harmonic field |
| [right](SO3VectorFieldHarmonic.right_py.html) | the field with its values in the right tangent space, as a harmonic field |
| [rotate](SO3VectorField.rotate_py.html) | F'(R) = q F(q^-1 R) for a rotation of the specimen acting on a left field, F(q^-1 R) on a right one |
| [rotate](SO3VectorFieldHarmonic.rotate_py.html) | F'(R) = q F(q^-1 R) for a rotation of the specimen acting on a left field, F(q^-1 R) on a right one |
| [SO3VectorField](SO3VectorField.SO3VectorField_py.html) | a vector field on SO(3) whose three components are series of Wigner functions: from a coefficient matrix, another field, tangent vectors at orientations, three component functions or a callable, in the left or right tangent space, symmetrised to be equivariant |
| [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic.SO3VectorFieldHarmonic_py.html) | a vector field on SO(3) whose three components are series of Wigner functions: from a coefficient matrix, another field, tangent vectors at orientations, three component functions or a callable, in the left or right tangent space, symmetrised to be equivariant |
| [symmetrise](SO3VectorFieldHarmonic.symmetrise_py.html) | the projection onto the equivariant fields of the frames: the invariant side one component at a time, the equivariant side F -> s F(s^-1 R) on the left, F -> s F(R s) on the right, by the Kronecker products |
| [times](SO3VectorField.times_py.html) |  |
| [times](SO3VectorFieldHarmonic.times_py.html) |  |
| [truncate](SO3VectorFieldHarmonic.truncate_py.html) | the field with its coefficients cut or padded to the bandwidth L |
| [uminus](SO3VectorField.uminus_py.html) |  |
| [uminus](SO3VectorFieldHarmonic.uminus_py.html) |  |

## Used on

[SO3FunVectorField](SO3FunVectorField_py.html)

MATLAB's [SO3VectorField_index](SO3VectorField_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L287">source</a></font>
{% endraw %}
