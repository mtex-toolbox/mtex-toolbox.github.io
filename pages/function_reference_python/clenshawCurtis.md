---
title: 'clenshawCurtis'
sidebar: function_reference_sidebar
permalink: clenshawCurtis_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
construct an n-point Clenshaw–Curtis quadrature rule on [-1, 1]

## Syntax

<div class="mx-form" markdown="1">

```python
x, w = clenshawCurtis(n)
integral = np.sum(w * fun(x))
```

</div>

## Description

Nodes are `cos(pi*b/(n-1))` for b from zero to n-1, including both endpoints. Weights
integrate polynomials through degree n-1 exactly, apart from rounding, and sum to 2.
For n=1 the single node is zero with weight 2.

## Input

| `n` | positive integer node count |

## Output

| `x` | nodes in descending order |
| `w` | quadrature weights corresponding to x |

## See also

[gaussLegendre](gaussLegendre_py.html), [quadratureS2Grid](quadratureS2Grid_index_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
clenshawCurtis(n)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/quadrature.py#L52">source</a></font>
{% endraw %}
