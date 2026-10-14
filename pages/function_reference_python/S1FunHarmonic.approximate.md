---
title: 'S1FunHarmonic.approximate'
sidebar: function_reference_sidebar
permalink: S1FunHarmonic.approximate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1FunHarmonic.approximate.html
status: Reference
---
{% raw %}
A method of [S1FunHarmonic](S1FunHarmonic_index_py.html).

the Fourier series of a function on the circle by quadrature; MATLAB's approximate and
quadrature

## Syntax

A callable on the grid of the bandwidth:

```python
sF = S1FunHarmonic.quadrature(lambda x: np.sin(2*x))
```

To another bandwidth:

```python
sF = S1FunHarmonic.quadrature(lambda x: np.sin(2*x), bandwidth=16)
```

Values at given angles:

```python
sF = S1FunHarmonic.quadrature(x, values, bandwidth=16, weights=w)
```

A callable is sampled on the equispaced quadrature grid of the bandwidth, which makes the
coefficients exact up to that degree; values at given angles are summed with the weights,
the coefficient c_k = sum_j w_j f(x_j) e^{ikx_j}, which is the quadrature only when the
weights are those of a quadrature rule for the angles (1/n for n equispaced ones). The
bandwidth is by default the preference maxS1Bandwidth. S1FunHarmonic.approximate is the
same function.

## Input

| | |
|---|---|
| `x` | a callable of the angle, or an array of angles in radians |

## Output

| | |
|---|---|
| `sF` | S1FunHarmonic |

## Keywords

| | default | |
|---|---|---|
| `values` | `None` | the values at the angles x |
| `bandwidth` | `None` | the largest degree of the series |
| `weights` | `None` | the quadrature weights of the angles |
| `real` | `None` | whether the function takes real values only; by default whether the values are real |

## See also

[S1FunHarmonic](S1FunHarmonic_index_py.html), [S1FunHarmonic.interpolate](S1FunHarmonic.interpolate_py.html), [SO3FunHarmonic.quadrature](SO3FunHarmonic.quadrature_py.html)

MATLAB's [S1FunHarmonic.approximate](S1FunHarmonic.approximate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L154">source</a></font>
{% endraw %}
