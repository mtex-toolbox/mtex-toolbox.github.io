---
title: 'SO3VectorFieldHarmonic.div'
sidebar: function_reference_sidebar
permalink: SO3VectorFieldHarmonic.div_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3VectorFieldHarmonic.div.html
status: Reference
---
{% raw %}
A method of [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic_index_py.html).

the divergence, a function on SO(3); with x its values at the orientations x

## Syntax

The divergence, an SO3FunHarmonic:

```python
D = SO3VF.div()
```

Its values at orientations:

```python
d = SO3VF.div(ori)
```

The field is taken in its harmonic form; the divergence of a gradient is the Laplacian of
the function.

## Input

| | |
|---|---|
| `SO3VF` | SO3VectorField |
| `x` | orientation, where to evaluate the divergence |

## Output

| | |
|---|---|
| `D` | SO3FunHarmonic |
| `d` | array, the values at x |

## See also

[curl](curl_py.html), [SO3VectorField.antiderivative](SO3VectorField.antiderivative_py.html), [SO3FunHarmonic.grad](SO3FunHarmonic.grad_py.html)

## Signature

```python
SO3VectorFieldHarmonic.div(self, x=None)
```

## Used on

[SO3FunVectorField](SO3FunVectorField_py.html)

MATLAB's [SO3VectorFieldHarmonic.div](SO3VectorFieldHarmonic.div.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L299">source</a></font>
{% endraw %}
