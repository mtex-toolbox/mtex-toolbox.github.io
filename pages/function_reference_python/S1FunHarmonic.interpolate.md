---
title: 'S1FunHarmonic.interpolate'
sidebar: function_reference_sidebar
permalink: S1FunHarmonic.interpolate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1FunHarmonic.interpolate.html
status: Reference
---
{% raw %}
A method of [S1FunHarmonic](S1FunHarmonic_index_py.html).

the Fourier series through noisy samples at angles on the circle, fitted by regularised
least squares

## Syntax

Samples at the angles x:

```python
sF = S1FunHarmonic.interpolate(x, values)
```

A bandwidth and a stronger smoothing:

```python
sF = S1FunHarmonic.interpolate(x, values, bandwidth=10, regularisation=1e-3)
```

The samples weighted:

```python
sF = S1FunHarmonic.interpolate(x, values, weights=w)
```

Equispaced samples, x = 2 pi k / n, are expanded by quadrature to the bandwidth (n - 1) / 2,
or the one given. Other angles are taken modulo 2 pi, samples at coinciding angles merged
to their mean, and the coefficients fitted by LSQR to the weighted samples, penalised by
regularisation times the Sobolev norm sum |k|^(2 SobolevIndex) |c_k|^2; the bandwidth is
round(n / 4) for n distinct angles, at most the preference maxS1Bandwidth. A bandwidth
set by hand may undersample the data.

## Input

| | |
|---|---|
| `x` | array of angles in radians |
| `values` | array, one value per angle |

## Output

| | |
|---|---|
| `sF` | S1FunHarmonic, real when the values are |

## Keywords

| | default | |
|---|---|---|
| `bandwidth` | `None` | the largest degree of the series |
| `weights` | `None` | one weight per sample, equal weights unless given |
| `regularisation` | `1e-05` | the factor lambda of the Sobolev penalty; 0 fits without it |
| `SobolevIndex` | `2` | the exponent s of the Sobolev penalty \|k\|^(2 s) |
| `tol` | `1e-06` | the stopping tolerance of LSQR |
| `maxIter` | `100` | the largest number of iterations of LSQR |

## See also

[S1FunHarmonic.quadrature](S1FunHarmonic.quadrature_py.html), [S1FunHarmonic](S1FunHarmonic_index_py.html), [SO3FunHarmonic.interpolate](SO3FunHarmonic.interpolate_py.html)

MATLAB's [S1FunHarmonic.interpolate](S1FunHarmonic.interpolate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L96">source</a></font>
{% endraw %}
