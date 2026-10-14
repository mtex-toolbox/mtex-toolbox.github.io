---
title: 'wignerSeries'
sidebar: function_reference_sidebar
permalink: wignerSeries_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the series at every rotation of a container or on a quadrature grid; the direct sum below
DIRECT_SERIES_NODES nodes (DIRECT_SUM_NODES without numba), and a grid that cannot hold the bandwidth is evaluated at its nodes

## Syntax

```python
F = SO3FunHarmonic(unimodalODF(orientation.rand(crystalFrame('1'))), bandwidth=8)
```

The values at rotations, as F.eval:

```python
f = wignerSeries(F._fhat, rotation.rand(10))
```

On a grid, by the FFT:

```python
f = wignerSeries(F._fhat, quadratureSO3Grid(16))
```

The complex values:

```python
f = wignerSeries(F._fhat, rotation.rand(10), real=False)
```

The sum of sqrt(2n+1) fhat_n^{kl} D_n^{kl}(R) over the degrees n up to the bandwidth of the
internal coefficients F._fhat; the route, the direct sum, the FFT of a Clenshaw-Curtis grid or
the NUFFT, is chosen by the number of nodes. The result has the shape of the rotations.

## Input

| | |
|---|---|
| `fhat` | the internal Wigner coefficients |
| `rots` | rotations, or a quadratureSO3Grid |

## Output

| | |
|---|---|
| `f` | the values at the rotations, real for real coefficients |

## Keywords

| | default | |
|---|---|---|
| `real` | `None` | whether the coefficients are those of a real function, whose values are returned real; by default isRealWigner(fhat) |
| `folds` | `(1, 1)` | (rA, rB), the folds about z the coefficients have, which shrink the NUFFT's array; a grid brings its own |

## See also

[wignerSeriesAdjoint](wignerSeriesAdjoint_py.html), [wignerPlan](wignerPlan_py.html), [SO3FunHarmonic.eval](SO3FunHarmonic.eval_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L945">source</a></font>
{% endraw %}
