---
title: 'antiderivative'
sidebar: function_reference_sidebar
permalink: antiderivative_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the antiderivative of a gradient field, the function of mean zero whose gradient it is

## Syntax

The function, an SO3FunHarmonic:

```python
f = antiderivative(SO3VF)
```

Its values at orientations x:

```python
values = antiderivative(SO3VF, x)
```

Without checking the field is a gradient:

```python
f = antiderivative(SO3VF, conservative=True)
```

The function is the inverse Laplacian of the divergence of the field, defined up to a
constant, which is chosen to give mean zero. A field that is no gradient is refused unless
conservative says it is one: the gradient of the result must give the field back within
tol relative to its norm.

## Input

| | |
|---|---|
| `SO3VF` | SO3VectorField, converted to its harmonic form |
| `x` | orientation, where to evaluate the antiderivative |

## Output

| | |
|---|---|
| `f` | SO3FunHarmonic |
| `values` | array, the values at x |

## Keywords

| | default | |
|---|---|---|
| `conservative` | `False` | the field is known to be a gradient, so it is not checked |
| `tol` | `0.0001` | the relative tolerance of the check |

## See also

[grad](grad_py.html), [div](div_py.html), [curl](curl_py.html), [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic_index_py.html), [SO3FunVectorField](SO3FunVectorField_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L762">source</a></font>
{% endraw %}
