---
title: 'differentiate'
sidebar: function_reference_sidebar
permalink: differentiate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the three derivatives of a coefficient vector, on the rows for the left side and on the
columns for the right; the degree is preserved

## Syntax

<div class="mx-form" markdown="1">

```python
D = differentiate(SO3F._fhat)
```

The left derivatives, one column each.

</div>

<div class="mx-form" markdown="1">

```python
D = differentiate(SO3F._fhat, side='right')
```

The right derivatives.

</div>

## Description

The three columns are the coefficients of the derivatives along the x, y and z axes of the
tangent space, the coefficient matrix of the gradient field; the vector is in the port's
internal convention (docs/design/harmonics.md), not MATLAB's fhat. The port's own, no MATLAB
counterpart.

## Input

| `fhat` | ndarray, deg2dim(L + 1) Wigner coefficients |

## Keywords

| keyword | default | description |
|---|---|---|
| `side` | `'left'` | 'left' or 'right', the tangent space |

## Output

| `D` | ndarray of shape (deg2dim(L + 1), 3) |

## See also

[SO3FunHarmonic.grad](SO3FunHarmonic.grad_py.html), [div](div_py.html), [curl](curl_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3vectorfield.py#L88">source</a></font>
{% endraw %}
