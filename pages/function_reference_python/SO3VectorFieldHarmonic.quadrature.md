---
title: 'SO3VectorFieldHarmonic.quadrature'
sidebar: function_reference_sidebar
permalink: SO3VectorFieldHarmonic.quadrature_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3VectorFieldHarmonic.quadrature.html
status: Reference
---
{% raw %}
A method of [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic_index_py.html).

MATLAB's SO3VectorFieldHarmonic.quadrature(fun, cs): the field of a callable, cut to
the last degree that carries more than rounding, as a polynomial field is

## Syntax

<div class="mx-form" markdown="1">

```python
SO3VF = SO3VectorFieldHarmonic.quadrature(lambda ori: ori * xvector, cs, ss)
```

A callable, cut to its degree.

</div>

<div class="mx-form" markdown="1">

```python
SO3VF = SO3VectorFieldHarmonic.quadrature(F.eval, cs, ss, bandwidth=20)
```

At a bandwidth of its own.

</div>

<div class="mx-form" markdown="1">

```python
SO3VF = SO3VectorFieldHarmonic.quadrature(t, bandwidth=8)
```

Through tangent vectors t at orientations.

</div>

## Description

The field is the SO3VectorFieldHarmonic of fun and the further arguments, a callable taking
orientations and returning vectors or tangent vectors evaluated by exact quadrature, another
field, or tangent vectors at orientations; then every degree above the last whose
coefficients exceed tol times the largest is dropped. A callable is in the left tangent space
unless 'right' is passed after the frames.

## Input

| `fun` | callable, SO3VectorField or SO3TangentVector |
| `cs, ss` | the crystal and the specimen frame, for a callable |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` | `None` | the bandwidth of the quadrature; the preference 'defaultSO3Bandwidth' (64) by default |
| `tol` | `1e-10` | the coefficients below tol times the largest count as rounding when the degree is cut |

## Output

| `SO3VF` | SO3VectorFieldHarmonic |

## See also

[SO3VectorFieldHarmonic](SO3VectorFieldHarmonic_index_py.html), [SO3FunHarmonic.quadrature](SO3FunHarmonic.quadrature_py.html), [interpolate](SO3VectorFieldHarmonic.interpolate_py.html)

MATLAB's [SO3VectorFieldHarmonic.quadrature](SO3VectorFieldHarmonic.quadrature.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L457">source</a></font>
{% endraw %}
