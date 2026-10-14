---
title: 'SO3GridPlan.adjoint'
sidebar: function_reference_sidebar
permalink: SO3GridPlan.adjoint_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [SO3GridPlan](SO3GridPlan_index_py.html).

the SO(3) coefficients from weighted values on the grid, the FFTs taken backwards; without
weights those of the grid's rule

## Syntax

<div class="mx-form" markdown="1">

```python
g = quadratureSO3Grid(16)
p = SO3GridPlan(g, 8)
```

</div>

<div class="mx-form" markdown="1">

```python
fhat = p.adjoint(values)
```

The quadrature of the grid's rule.

</div>

<div class="mx-form" markdown="1">

```python
fhat = p.adjoint(values, weights=g.weights)
```

Weights of the grid's shape given.

</div>

## Description

The values are those at the nodes of a Clenshaw-Curtis grid in its order; real values give
the coefficients of a real function. With the grid's rule the adjoint is the exact
quadrature, p.adjoint(p(fhat)) = fhat for a bandwidth the grid holds. The coefficients are
the internal ones, F._fhat.

## Input

| `values` | the values at the grid's nodes |

## Keywords

| keyword | default | description |
|---|---|---|
| `weights` | `None` | the quadrature weights at the nodes; by default the grid's rule in beta, the same for every alpha and gamma |

## Output

| `fhat` | the Wigner coefficients up to the plan's bandwidth |

## See also

[wignerSeriesAdjoint](wignerSeriesAdjoint_py.html), [wignerPlan](wignerPlan_py.html), [quadratureSO3Grid](quadratureSO3Grid_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L843">source</a></font>
{% endraw %}
