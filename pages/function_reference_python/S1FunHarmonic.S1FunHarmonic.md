---
title: 'S1FunHarmonic.S1FunHarmonic'
sidebar: function_reference_sidebar
permalink: S1FunHarmonic.S1FunHarmonic_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1FunHarmonic.S1FunHarmonic.html
status: Reference
---
{% raw %}
a function on the circle by its Fourier coefficients fhat, k = -L..L, over e^{-ikx} as
MATLAB's

## Syntax

From the coefficients, k = -2..2:

```python
sF = S1FunHarmonic([0.25, 0, 1, 0, 0.25])
```

A callable by quadrature:

```python
sF = S1FunHarmonic(lambda x: np.sin(2*x), bandwidth=16)
```

The Fourier series of an S1 kernel:

```python
sF = S1FunHarmonic(psi, bandwidth=32)
```

Another function, cut to a bandwidth:

```python
sF = S1FunHarmonic(sF, bandwidth=8)
```

The coefficients run from the degree -L to L, so a coefficient vector has odd length 2 L + 1.
A callable is sampled on the equispaced quadrature grid of the bandwidth, by default the
preference maxS1Bandwidth; an S1 kernel, an S1FunHandle or another S1FunHarmonic gives its own
coefficients, cut or padded to the bandwidth when one is given. A real function keeps
c_{-k} = conj(c_k), which is checked from the coefficients unless real says it.

## Input

| | |
|---|---|
| `fhat` | array of 2 L + 1 coefficients, a callable of the angle, an S1Kernel or an S1Fun |

## Output

| | |
|---|---|
| `sF` | S1FunHarmonic |

## Keywords

| | default | |
|---|---|---|
| `real` | `None` | whether the function takes real values only; by default read off the coefficients or the sampled values |
| `bandwidth` | `None` | the largest degree L of the series |
| `dtype` | `None` | the complex type of the coefficients, complex128 unless given |

## See also

[S1FunHarmonic.quadrature](S1FunHarmonic.quadrature_py.html), [S1FunHarmonic.interpolate](S1FunHarmonic.interpolate_py.html), [S1FunHandle](S1FunHandle_index_py.html), [S1Grid](S1Grid_index_py.html)

## Used on

[S1FunHarmonics](S1FunHarmonics_py.html)

MATLAB's [S1FunHarmonic.S1FunHarmonic](S1FunHarmonic.S1FunHarmonic.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L34">source</a></font>
{% endraw %}
