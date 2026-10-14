---
title: 'S1Fun.S1Fun'
sidebar: function_reference_sidebar
permalink: S1Fun.S1Fun_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1Fun.S1Fun.html
status: Reference
---
{% raw %}
a function on the circle by its Fourier coefficients fhat, k = -L..L, over e^{-ikx} as
MATLAB's

## Syntax

<div class="mx-form" markdown="1">

```python
sF = S1FunHarmonic([0.25, 0, 1, 0, 0.25])
```

From the coefficients, k = -2..2.

</div>

<div class="mx-form" markdown="1">

```python
sF = S1FunHarmonic(lambda x: np.sin(2*x), bandwidth=16)
```

A callable by quadrature.

</div>

<div class="mx-form" markdown="1">

```python
sF = S1FunHarmonic(psi, bandwidth=32)
```

The Fourier series of an S1 kernel.

</div>

<div class="mx-form" markdown="1">

```python
sF = S1FunHarmonic(sF, bandwidth=8)
```

Another function, cut to a bandwidth.

</div>

## Description

The coefficients run from the degree -L to L, so a coefficient vector has odd length 2 L + 1.
A callable is sampled on the equispaced quadrature grid of the bandwidth, by default the
preference maxS1Bandwidth; an S1 kernel, an S1FunHandle or another S1FunHarmonic gives its own
coefficients, cut or padded to the bandwidth when one is given. A real function keeps
c_{-k} = conj(c_k), which is checked from the coefficients unless real says it.

## Input

| `fhat` | array of 2 L + 1 coefficients, a callable of the angle, an S1Kernel or an S1Fun |

## Keywords

| keyword | default | description |
|---|---|---|
| `real` | `None` | whether the function takes real values only; by default read off the coefficients or the sampled values |
| `bandwidth` | `None` | the largest degree L of the series |
| `dtype` | `None` | the complex type of the coefficients, complex128 unless given |

## Output

| `sF` | S1FunHarmonic |

## Properties

| `fhat` | complex coefficients ordered from Fourier mode -L through L |
| `bandwidth` | largest Fourier mode L |
| `isReal` | whether the function is constrained to have real values |
| `antipodal` | whether f(x+pi)=f(x), read from its coefficients |
| `even, odd` | boolean symmetry tests under x -> -x |

## See also

[S1FunHarmonic.quadrature](S1FunHarmonic.quadrature_py.html), [S1FunHarmonic.interpolate](S1FunHarmonic.interpolate_py.html), [S1FunHandle](S1FunHandle_index_py.html), [S1Grid](S1Grid_index_py.html)

## Used on

[S1FunHarmonics](S1FunHarmonics_py.html)

MATLAB's [S1Fun.S1Fun](S1Fun.S1Fun.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L34">source</a></font>
{% endraw %}
