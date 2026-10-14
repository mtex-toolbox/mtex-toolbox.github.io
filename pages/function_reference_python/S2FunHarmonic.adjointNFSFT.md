---
title: 'S2FunHarmonic.adjointNFSFT'
sidebar: function_reference_sidebar
permalink: S2FunHarmonic.adjointNFSFT_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHarmonic.adjointNFSFT.html
status: Reference
---
{% raw %}
A method of [S2FunHarmonic](S2FunHarmonic_index_py.html).

S2FunHarmonic.adjointNFSFT(v, values, bandwidth=32): the adjoint transform, the
coefficients sum_j w_j y_j conj(Y(v_j)) with unit weights unless given, a grid's own on a grid;
MATLAB's adjoint and adjointNFSFT

## Syntax

Unit weights:

```python
sF = S2FunHarmonic.adjoint(v, values, bandwidth=16)
```

With quadrature weights:

```python
sF = S2FunHarmonic.adjoint(v, values, bandwidth=16, weights=w)
```

A quadrature grid: its bandwidth and weights:

```python
sF = S2FunHarmonic.adjoint(quadratureS2Grid(16), values)
```

With the weights of a quadrature rule exact up to twice the bandwidth the adjoint is the
expansion of the function the values sample; with other weights it is the adjoint of the
evaluation only, S2FunHarmonic.interpolate fits by least squares. A NaN value counts as 0.
Several values per node, an array (n, ...), give one function per column. MATLAB's flags
'nfsft' and 'directComputation' choose the algorithm and have no counterpart; its default
bandwidth is 512.

## Input

| | |
|---|---|
| `nodes` | vector3d or quadratureS2Grid |
| `values` | ndarray, one value or one row of values per node |

## Output

| | |
|---|---|
| `sF` | S2FunHarmonic |

## Keywords

| | default | |
|---|---|---|
| `bandwidth` | `None` | the largest harmonic degree; by default the bandwidth of the grid, else 128 |
| `weights` | `None` | the weights of the nodes, one number or one per node; by default those of a quadrature grid, else one |

## See also

[S2FunHarmonic.quadrature](S2FunHarmonic.quadrature_py.html), [S2FunHarmonic.interpolate](S2FunHarmonic.interpolate_py.html), [sphericalSeriesAdjoint](sphericalSeriesAdjoint_py.html)

## Used on

[S2FunSampling](S2FunSampling_py.html)

MATLAB's [S2FunHarmonic.adjointNFSFT](S2FunHarmonic.adjointNFSFT.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L210">source</a></font>
{% endraw %}
