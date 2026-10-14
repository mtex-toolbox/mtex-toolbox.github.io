---
title: 'gaussLegendre'
sidebar: function_reference_sidebar
permalink: gaussLegendre_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
construct an n-point Gauss–Legendre quadrature rule on [-1, 1]

## Syntax

<div class="mx-form" markdown="1">

```python
x, w = gaussLegendre(n)
integral = np.sum(w * fun(x))
```

</div>

## Description

The rule integrates polynomials of degree at most `2*n-1` exactly, apart from floating-point
rounding. Weights sum to 2, so this approximates an integral rather than an interval mean.

## Input

| `n` | positive integer node count |

## Output

| `x` | one-dimensional array of nodes |
| `w` | positive quadrature weights, one per node |

## See also

[clenshawCurtis](clenshawCurtis_py.html), [quadratureS2Grid](quadratureS2Grid_index_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
gaussLegendre(n)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/quadrature.py#L32">source</a></font>
{% endraw %}
