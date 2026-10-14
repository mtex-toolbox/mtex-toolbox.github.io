---
title: 'SO3VectorField.antiderivative'
sidebar: function_reference_sidebar
permalink: SO3VectorField.antiderivative_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3VectorField.antiderivative.html
status: Reference
---
{% raw %}
A method of [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic_index_py.html).

the function of mean zero whose gradient the field is; raises unless the field is a gradient,
or conservative=True says it is; with x its values at the orientations x

## Syntax

<div class="mx-form" markdown="1">

```python
F = SO3VF.antiderivative()
```

The function, an SO3FunHarmonic.

</div>

<div class="mx-form" markdown="1">

```python
f = SO3VF.antiderivative(ori)
```

Its values at orientations.

</div>

<div class="mx-form" markdown="1">

```python
F = SO3VF.antiderivative(conservative=True)
```

Without checking the field is a gradient.

</div>

<div class="mx-form" markdown="1">

```python
F = SO3VF.antiderivative(tol=1e-3)
```

Checked with another tolerance.

</div>

## Description

The keywords conservative and tol go to antiderivative: the function is the inverse
Laplacian of the divergence, and unless conservative=True the gradient of the result must
give the field back within tol (1e-4) relative to its norm, else a ValueError is raised.

## Input

| `SO3VF` | SO3VectorField, converted to its harmonic form |
| `x` | orientation, where to evaluate the antiderivative |

## Output

| `F` | SO3FunHarmonic |
| `f` | array, the values at x |

## See also

[antiderivative](antiderivative_py.html), [SO3FunHarmonic.grad](SO3FunHarmonic.grad_py.html), [SO3VectorField.curl](SO3VectorField.curl_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
SO3VectorFieldHarmonic.antiderivative(self, x=None, **kwargs)
```

</div>

## Used on

[SO3FunVectorField](SO3FunVectorField_py.html)

MATLAB's [SO3VectorField.antiderivative](SO3VectorField.antiderivative.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L318">source</a></font>
{% endraw %}
