---
title: 'curl'
sidebar: function_reference_sidebar
permalink: curl_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the curl, the dual of the exterior derivative, a field of the same side

## Syntax

<div class="mx-form" markdown="1">

```python
C = curl(SO3VF)
```

The curl, an SO3VectorFieldHarmonic.

</div>

<div class="mx-form" markdown="1">

```python
c = curl(SO3VF, ori)
```

Its values at orientations.

</div>

## Description

Of the field in its harmonic form, in its tangent space; the curl of a gradient vanishes.

## Input

| `v` | SO3VectorField |
| `x` | orientation, where to evaluate the curl |

## Output

| `C` | SO3VectorFieldHarmonic |
| `c` | SO3TangentVector, the values at x |

## See also

[div](div_py.html), [antiderivative](antiderivative_py.html), [SO3FunHarmonic.grad](SO3FunHarmonic.grad_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
curl(v, x=None)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L739">source</a></font>
{% endraw %}
