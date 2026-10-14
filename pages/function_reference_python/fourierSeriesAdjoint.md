---
title: 'fourierSeriesAdjoint'
sidebar: function_reference_sidebar
permalink: fourierSeriesAdjoint_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the Fourier coefficients c_{-L} .. c_L from weighted values at the angles x, the sum of
w v e^{-ikx}; a quadrature grid brings the weights of its rule

## Syntax

<div class="mx-form" markdown="1">

```python
chat = fourierSeriesAdjoint(x, np.cos(x), 1)
```

The weights 1/n.

</div>

<div class="mx-form" markdown="1">

```python
chat = fourierSeriesAdjoint(x, np.cos(x), 1, weights=w)
```

Weighted.

</div>

<div class="mx-form" markdown="1">

```python
chat = fourierSeriesAdjoint(quadratureS1Grid(16), values, 8)
```

The quadrature of a grid.

</div>

## Description

The adjoint of fourierSeries, directly or by the NUFFT; at equispaced angles with weights 1/n
the coefficients of a trigonometric polynomial of degree L.

## Input

| `x` | the angles, or a quadratureS1Grid |
| `values` | the values at the angles |
| `L` | the bandwidth |

## Keywords

| keyword | default | description |
|---|---|---|
| `weights` | `None` | the weight of every angle; by default 1/n, or the grid's rule |

## Output

| `chat` | the 2L+1 coefficients, complex |

## See also

[fourierSeries](fourierSeries_py.html), [S1FunHarmonic](S1FunHarmonic_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L1322">source</a></font>
{% endraw %}
