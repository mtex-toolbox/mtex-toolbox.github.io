---
title: 'div'
sidebar: function_reference_sidebar
permalink: div_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the divergence, invariant under both groups

## Syntax

<div class="mx-form" markdown="1">

```python
D = div(SO3VF)
```

The divergence, an SO3FunHarmonic.

</div>

<div class="mx-form" markdown="1">

```python
d = div(SO3VF, ori)
```

Its values at orientations.

</div>

## Description

The sum of the derivatives of the three components along their own axes of the tangent space,
of the field in its harmonic form; of a gradient it is the Laplacian of the function.

## Input

| `v` | SO3VectorField |
| `x` | orientation, where to evaluate the divergence |

## Output

| `D` | SO3FunHarmonic |
| `d` | array, the values at x |

## See also

[curl](curl_py.html), [antiderivative](antiderivative_py.html), [SO3FunHarmonic.grad](SO3FunHarmonic.grad_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
div(v, x=None)
```

</div>

## Used on

[SingleSlipModel](SingleSlipModel_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L717">source</a></font>
{% endraw %}
