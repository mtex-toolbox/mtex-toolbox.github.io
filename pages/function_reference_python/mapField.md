---
title: 'mapField'
sidebar: function_reference_sidebar
permalink: mapField_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a pointwise operation on vector fields on SO(3), as a field or a function

## Syntax

The cross product of two fields:

```python
u = mapField(np.cross, v, w)
```

The inner product, a function on the full frames:

```python
f = mapField(np.multiply, v, w, reduce=True, invariant=True)
```

A field times a scalar function:

```python
u = mapField(np.multiply, v, F, bandwidth=8)
```

A field times a number:

```python
u = mapField(np.multiply, v, 2)
```

The arguments are evaluated on the quadrature grid of the component frames of v, op is
applied to the arrays, the tangent vectors of a field an (n, 3) array in the tangent space of
v, a function's values an (n, 1) column, which broadcasts against them, a number itself, and
the result is expanded again: an (n, 3) result is a field in the tangent space of v, one
value per node a function. The bandwidth is
that of the operands added, at most the preference maxSO3Bandwidth. A scalar result lives
on the component frames of v unless invariant says it is invariant under the full frames of
the field.

## Input

| | |
|---|---|
| `op` | a callable of NumPy arrays |
| `v` | SO3VectorField |
| `args` | further SO3VectorField, SO3Fun or numbers, on the frames of v |

## Output

| | |
|---|---|
| `u` | SO3VectorFieldHarmonic |
| `f` | SO3FunHarmonic |

## Keywords

| | default | |
|---|---|---|
| `bandwidth` | `None` | the bandwidth of the result |
| `invariant` | `False` | put a scalar result on the frames of the field rather than its component frames |
| `reduce` | `False` | sum the result over the three components before it is expanded |

## See also

[SO3VectorFieldHarmonic](SO3VectorFieldHarmonic_index_py.html), [grad](grad_py.html), [antiderivative](antiderivative_py.html), [SO3FunVectorField](SO3FunVectorField_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L837">source</a></font>
{% endraw %}
