---
title: 'dot'
sidebar: function_reference_sidebar
permalink: dot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
calculate an inner product, with the symmetry conventions of its operands.

## Syntax

<div class="mx-form" markdown="1">

```python
value = dot(v, w)
```

</div>

## Description

For an MTEX object, dot(x, ...) calls x.dot(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

For numeric arrays without an MTEX method, this calls numpy.dot.

## Signature

<div class="mx-form" markdown="1">

```python
dot(x, *args, **kwargs)
```

</div>

## Methods it calls

| [embedding](embedding.dot_py.html) | the inner product of two embeddings of the same crystal frame, image by image |
| [orientation](orientation.dot_py.html) | the dot product up to symmetry, cos(omega/2) of the misorientation angle omega reduced over the groups of both frames |
| [orthogonalTransform](orthogonalTransform.dot_py.html) | the inner product of the rotational parts up to sign, zero between transforms of different parity |
| [quaternion](quaternion.dot_py.html) | the inner product of the coefficients |
| [rotation](rotation.dot_py.html) | the inner product up to sign, since q and -q are one rotation |
| [S1FunHarmonic](S1FunHarmonic.dot_py.html) | the inner product with g for the normalised measure, by the coefficients |
| [S2AxisFieldHarmonic](S2AxisFieldHarmonic.dot_py.html) | the cosine of the angle to a constant axis, sqrt(x^T (a a^T) x), and to another field |
| [S2FunHarmonic](S2FunHarmonic.dot_py.html) | the inner product with another function of the same frame, for the normalised surface measure: int conj(f) g dS / 4 pi |
| [S2VectorFieldHarmonic](S2VectorFieldHarmonic.dot_py.html) | the inner product with a constant vector, exact, a function without the group |
| [SO3FunHarmonic](SO3FunHarmonic.dot_py.html) | the inner product int conj(f) g, the first argument conjugated |
| [SO3Grid](SO3Grid.dot_outer_py.html) | the dot product up to symmetry, cos(omega/2) of the misorientation angle omega reduced over the groups of both frames |
| [SO3TangentVector](SO3TangentVector.dot_py.html) | the inner product with tangent vectors at the same reference, brought to this side |
| [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic.dot_py.html) | the inner product with a constant vector, exact, a function on the component frames |
| [SO3VectorFieldRBF](SO3VectorFieldRBF.dot_py.html) | the pointwise inner product: with another field a function on SO(3), with a constant vector a function on the component frames |
| [vector3d](vector3d.dot_py.html) | the inner product of two vectors, pointwise |

## Used on

[CrystalOperations](CrystalOperations_py.html), [LatticeMetric](LatticeMetric_py.html), [WaveVelocities](WaveVelocities_py.html), [SO3FunVectorField](SO3FunVectorField_py.html), [S2FunHarmonicRepresentation](S2FunHarmonicRepresentation_py.html), [S2FunVectorField](S2FunVectorField_py.html), [MagneticAnisotropy](MagneticAnisotropy_py.html), [VectorsOperations](VectorsOperations_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
