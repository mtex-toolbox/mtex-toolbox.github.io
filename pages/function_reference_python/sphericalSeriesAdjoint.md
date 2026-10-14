---
title: 'sphericalSeriesAdjoint'
sidebar: function_reference_sidebar
permalink: sphericalSeriesAdjoint_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the spherical coefficients up to bandwidth L from weighted values at directions, the direct sum
below 50 nodes; a quadrature grid brings the weights of its rule

## Syntax

<div class="mx-form" markdown="1">

```python
fhat = sphericalSeriesAdjoint(v, values, 8)
```

The weights 1/n.

</div>

<div class="mx-form" markdown="1">

```python
fhat = sphericalSeriesAdjoint(v, values, 8, weights=w, real=True)
```

Weighted, real values.

</div>

<div class="mx-form" markdown="1">

```python
fhat = sphericalSeriesAdjoint(quadratureS2Grid(16), values, 8)
```

The quadrature of a grid.

</div>

## Description

The internal coefficients fhat_l^m = sum_q w_q v_q conj(Y_l^m(v_q)), the adjoint of
sphericalSeries; on a quadrature grid with its weights the exact coefficients of a function
of that bandwidth. Every route gives the same coefficients; real chooses only the array of
the NUFFT, half of it for real values, the full one otherwise.

## Input

| `v` | vector3d, or a quadratureS2Grid |
| `values` | the values at the directions |
| `L` | the bandwidth |

## Keywords

| keyword | default | description |
|---|---|---|
| `weights` | `None` | the weight of every direction; by default 1/n, or the grid's rule |
| `real` | `None` | the NUFFT works on half its array, complex values taken as two real ones; by default when the values are real |

## Output

| `fhat` | the (L+1)^2 spherical coefficients, internal convention |

## See also

[sphericalSeries](sphericalSeries_py.html), [sphericalPlan](sphericalPlan_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L1194">source</a></font>
{% endraw %}
