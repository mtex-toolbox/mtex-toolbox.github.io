---
title: 'SO3VectorFieldHarmonic.SO3VectorFieldHarmonic'
sidebar: function_reference_sidebar
permalink: SO3VectorFieldHarmonic.SO3VectorFieldHarmonic_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3VectorFieldHarmonic.SO3VectorFieldHarmonic.html
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

The coefficient matrix has the three components as columns, deg2dim(L + 1) rows of MTEX's
coefficients each. A field in the left tangent space returns its tangent vectors in the
specimen frame, one in the right tangent space in the crystal frame, 'left' unless named;
another field is converted to the side named. Tangent vectors t, an SO3TangentVector with
its reference orientations, are summed with the weights against the Wigner functions, which
is the quadrature only for the weights of a quadrature rule; a callable returning tangent
vectors at orientations is sampled on a quadrature grid of the bandwidth, by default the
preference defaultSO3Bandwidth. A coefficient matrix given is made equivariant under the
frames unless symmetrise=False.

## Input

| `fhat` | (deg2dim(L + 1), 3) array, an SO3VectorField, an SO3TangentVector, three SO3FunHarmonic or a callable of orientations |
| `cs, ss` | crystalFrame and specimenFrame |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` | `None` | the largest degree of the components |
| `weights` | `None` | the weights of the tangent vectors, equal unless given |
| `symmetrise` | `True` | make a coefficient matrix equivariant under the frames' symmetries |

## Output

| `SO3VF` | SO3VectorFieldHarmonic |

## See also

[SO3VectorFieldRBF](SO3VectorFieldRBF_index_py.html), [grad](grad_py.html), [antiderivative](antiderivative_py.html), [mapField](mapField_py.html), [SO3TangentVector](SO3TangentVector_index_py.html), [SO3FunVectorField](SO3FunVectorField_py.html)

## Used on

[SO3FunVectorField](SO3FunVectorField_py.html)

MATLAB's [SO3VectorFieldHarmonic.SO3VectorFieldHarmonic](SO3VectorFieldHarmonic.SO3VectorFieldHarmonic.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L364">source</a></font>
{% endraw %}
