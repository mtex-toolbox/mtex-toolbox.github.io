---
title: 'The class SO3VectorFieldHarmonic'
sidebar: function_reference_sidebar
permalink: SO3VectorFieldHarmonic_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3VectorFieldHarmonic_index.html
status: Reference
---
{% raw %}
a vector field on SO(3) whose three components are series of Wigner functions, in the left or
the right tangent space

## Syntax

<div class="mx-form" markdown="1">

```python
SO3VF = SO3VectorFieldHarmonic(fhat, cs, ss, 'left')
```

From a coefficient matrix.

</div>

<div class="mx-form" markdown="1">

```python
SO3VF = SO3VectorFieldHarmonic(F, 'right')
```

Another field in the right tangent space.

</div>

<div class="mx-form" markdown="1">

```python
SO3VF = SO3VectorFieldHarmonic(F, bandwidth=8)
```

Another field cut to a bandwidth.

</div>

<div class="mx-form" markdown="1">

```python
SO3VF = SO3VectorFieldHarmonic(t, bandwidth=8)
```

Through tangent vectors t at orientations.

</div>

<div class="mx-form" markdown="1">

```python
SO3VF = SO3VectorFieldHarmonic([F1, F2, F3])
```

From its three component functions.

</div>

<div class="mx-form" markdown="1">

```python
SO3VF = SO3VectorFieldHarmonic(lambda ori: F(ori), cs, ss, bandwidth=8)
```

A callable by quadrature.

</div>

## Description

A field in the left tangent space returns its tangent vectors in the specimen frame, one
in the right tangent space in the crystal frame; 'left' unless named. Another field given
is converted to the side named.

The field is built from:

- a coefficient matrix: the components as columns of MTEX's coefficients, made equivariant
under the frames unless symmetrise=False.
- tangent vectors t at reference orientations: summed with the weights against the Wigner
functions, a quadrature only for the weights of a quadrature rule.
- a callable of orientations: sampled on a quadrature grid of the bandwidth, by default the
preference defaultSO3Bandwidth.
- three component functions: their coefficients, cut to the largest bandwidth, and their
frames unless cs and ss are given.

## Input

| `fhat` | (deg2dim(L + 1), 3) array, an SO3VectorField, an SO3TangentVector, three SO3FunHarmonic or a callable of orientations |
| `cs, ss` | crystalFrame and specimenFrame |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` |  | the largest degree of the components |
| `weights` |  | the weights of the tangent vectors, equal unless given |
| `symmetrise` |  | make a coefficient matrix equivariant under the frames' symmetries |

## Output

| `SO3VF` | SO3VectorFieldHarmonic |

## See also

[SO3VectorFieldRBF](SO3VectorFieldRBF_index_py.html), [grad](grad_py.html), [antiderivative](antiderivative_py.html), [mapField](mapField_py.html), [SO3TangentVector](SO3TangentVector_index_py.html), [SO3FunVectorField](SO3FunVectorField_py.html)

## Members

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
| [interpolate](SO3VectorFieldHarmonic.interpolate_py.html) | the function in harmonic form fitted by least squares to values at nodes: on SO(3) at orientations, on the sphere at directions, a vector field for vector values or tangent vectors |
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
| [quiver3](SO3VectorField.quiver3_py.html) | arrows in space: tangent vectors in orientation space, a field on the sphere or SO(3), or arrows at positions |
| [quiver](SO3VectorField.quiver_py.html) | arrows: tangent vectors at directions, a vector or axis field on the sphere, arrows at orientations in the sections of the current figure, or directions on a map or a volume |
| [quiverSection](SO3VectorField.quiverSection_py.html) | arrows on a section plot: of a function on the sphere along one of its circles, or at orientations in the sections of orientation space |
| [rdivide](SO3VectorField.rdivide_py.html) |  |
| [rdivide](SO3VectorFieldHarmonic.rdivide_py.html) |  |
| [right](SO3VectorField.right_py.html) | the field with its values in the right tangent space, as a harmonic field |
| [right](SO3VectorFieldHarmonic.right_py.html) | the field with its values in the right tangent space, as a harmonic field |
| [rotate](SO3VectorField.rotate_py.html) | F'(R) = q F(q^-1 R) for a rotation of the specimen acting on a left field, F(q^-1 R) on a right one |
| [rotate](SO3VectorFieldHarmonic.rotate_py.html) | F'(R) = q F(q^-1 R) for a rotation of the specimen acting on a left field, F(q^-1 R) on a right one |
| [SO3VectorField](SO3VectorField.SO3VectorField_py.html) | a vector field on SO(3) whose three components are series of Wigner functions, in the left or the right tangent space |
| [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic.SO3VectorFieldHarmonic_py.html) | a vector field on SO(3) whose three components are series of Wigner functions, in the left or the right tangent space |
| [symmetrise](SO3VectorFieldHarmonic.symmetrise_py.html) | the projection onto the equivariant fields of the frames: the invariant side one component at a time, the equivariant side F -> s F(s^-1 R) on the left, F -> s F(R s) on the right, by the Kronecker products |
| [times](SO3VectorField.times_py.html) |  |
| [times](SO3VectorFieldHarmonic.times_py.html) |  |
| [truncate](SO3VectorFieldHarmonic.truncate_py.html) | the field with its coefficients cut or padded to the bandwidth L |
| [uminus](SO3VectorField.uminus_py.html) |  |
| [uminus](SO3VectorFieldHarmonic.uminus_py.html) |  |

## Used on

[SO3FunVectorField](SO3FunVectorField_py.html)

MATLAB's [SO3VectorFieldHarmonic_index](SO3VectorFieldHarmonic_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L364">source</a></font>
{% endraw %}
