---
title: 'SO3VectorField.div'
sidebar: function_reference_sidebar
permalink: SO3VectorField.div_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3VectorField.div.html
status: Reference
---
{% raw %}
A method of [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic_index_py.html).

the divergence, a function on SO(3); with x its values at the orientations x

## Syntax

<div class="mx-form" markdown="1">

```python
D = SO3VF.div()
```

The divergence, an SO3FunHarmonic.

</div>

<div class="mx-form" markdown="1">

```python
d = SO3VF.div(ori)
```

Its values at orientations.

</div>

## Description

The field is taken in its harmonic form; the divergence of a gradient is the Laplacian of
the function.

## Input

| `SO3VF` | SO3VectorField |
| `x` | orientation, where to evaluate the divergence |

## Output

| `D` | SO3FunHarmonic |
| `d` | array, the values at x |

## See also

[curl](curl_py.html), [SO3VectorField.antiderivative](SO3VectorField.antiderivative_py.html), [SO3FunHarmonic.grad](SO3FunHarmonic.grad_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
SO3VectorFieldHarmonic.div(self, x=None)
```

</div>

## Used on

[SO3FunVectorField](SO3FunVectorField_py.html)

MATLAB's [SO3VectorField.div](SO3VectorField.div.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L299">source</a></font>
{% endraw %}
