---
title: 'wignerSeriesAdjoint'
sidebar: function_reference_sidebar
permalink: wignerSeriesAdjoint_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
coefficients from weighted values: the adjoint sum below DIRECT_SUM_NODES nodes; a
quadrature grid brings the weights of its rule

## Syntax

<div class="mx-form" markdown="1">

```python
fhat = wignerSeriesAdjoint(rots, values, 8)
```

The weights 1/n.

</div>

<div class="mx-form" markdown="1">

```python
fhat = wignerSeriesAdjoint(rots, values, 8, weights=w)
```

Weighted.

</div>

<div class="mx-form" markdown="1">

```python
fhat = wignerSeriesAdjoint(quadratureSO3Grid(16), values, 8)
```

The quadrature of a grid.

</div>

## Description

The internal Wigner coefficients fhat_n^{kl} = sqrt(2n+1) sum_q w_q v_q conj(D_n^{kl}(R_q))
up to bandwidth L, the adjoint of wignerSeries; on a quadrature grid with its weights the
exact coefficients of a function of that bandwidth. Real values give the coefficients of a
real function.

## Input

| `rots` | rotations, or a quadratureSO3Grid |
| `values` | the values at the rotations |
| `L` | the bandwidth |

## Keywords

| keyword | default | description |
|---|---|---|
| `weights` | `None` | the weight of every rotation; by default 1/n, or the grid's rule |
| `folds` | `(1, 1)` | (rA, rB), the folds about z the result is known to have, which shrink the NUFFT's array; a grid brings its own |

## Output

| `fhat` | the Wigner coefficients, internal convention |

## See also

[wignerSeries](wignerSeries_py.html), [wignerSeriesAdjointGridded](wignerSeriesAdjointGridded_py.html), [wignerPlan](wignerPlan_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L985">source</a></font>
{% endraw %}
