---
title: 'The class S1FunHarmonic'
sidebar: function_reference_sidebar
permalink: S1Fun_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1Fun_index.html
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
| `real` |  | whether the function takes real values only; by default read off the coefficients or the sampled values |
| `bandwidth` |  | the largest degree L of the series |
| `dtype` |  | the complex type of the coefficients, complex128 unless given |

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

## Members

| [abs](S1Fun.abs_py.html) | the pointwise absolute value, a Fourier series of a smoothing bandwidth |
| [abs](S1FunHarmonic.abs_py.html) | the pointwise absolute value, a Fourier series of a smoothing bandwidth |
| [antipodal](S1FunHarmonic.antipodal_py.html) | whether f(x+pi)=f(x), tested by checking that every odd Fourier mode vanishes |
| [approximate](S1FunHarmonic.approximate_py.html) | the Fourier series of a function on the circle by quadrature |
| [bandwidth](S1FunHarmonic.bandwidth_py.html) | the bandwidth L, the largest frequency of the coefficients |
| [cat](S1FunHarmonic.cat_py.html) | cat(a, b, ...) is type(a).cat(a, b, ...): the list of the operands, MATLAB's [a, b], the carried attributes joined |
| [conj](S1Fun.conj_py.html) | the complex conjugate function |
| [conj](S1FunHarmonic.conj_py.html) | the complex conjugate function |
| [conv](S1Fun.conv_py.html) | smoothing by a kernel is one factor per mode |
| [conv](S1FunHarmonic.conv_py.html) | smoothing by a kernel is one factor per mode |
| [diff](S1FunHarmonic.diff_py.html) | differentiate the circular function with respect to its angle in radians |
| [dot](S1FunHarmonic.dot_py.html) | the inner product with g for the normalised measure, by the coefficients |
| [eval](S1FunHarmonic.eval_py.html) | evaluate the Fourier series at angles in radians |
| [even](S1FunHarmonic.even_py.html) | whether f(x)=f(-x), tested from the Fourier coefficients |
| [exp](S1Fun.exp_py.html) | the pointwise exponential, a Fourier series of a smoothing bandwidth, or at the bandwidth given |
| [grad](S1FunHarmonic.grad_py.html) | the derivative as a function, or its values at the angles x |
| [interpolate](S1FunHarmonic.interpolate_py.html) | the Fourier series through noisy samples at angles on the circle, fitted by regularised least squares |
| [isclose](S1FunHarmonic.isclose_py.html) | whether the coefficients of g agree within atol + rtol times their norm |
| [log](S1Fun.log_py.html) | the pointwise logarithm, a Fourier series of a smoothing bandwidth, or at the bandwidth given |
| [max](S1Fun.max_py.html) | global, local and pointwise maxima of a function on the circle |
| [max](S1FunHarmonic.max_py.html) | global, local and pointwise maxima of a function on the circle |
| [mean](S1Fun.mean_py.html) | the mean over the circle, the coefficient c_0 |
| [mean](S1FunHarmonic.mean_py.html) | the mean over the circle, the coefficient c_0 |
| [min](S1Fun.min_py.html) | global, local and pointwise minima of a function on the circle |
| [min](S1FunHarmonic.min_py.html) | global, local and pointwise minima of a function on the circle |
| [minus](S1Fun.minus_py.html) |  |
| [mrdivide](S1Fun.mrdivide_py.html) |  |
| [mtimes](S1Fun.mtimes_py.html) |  |
| [mtimes](S1FunHarmonic.mtimes_py.html) |  |
| [norm](S1Fun.norm_py.html) | the L2 norm for the normalised measure, the Euclidean norm of the coefficients |
| [norm](S1FunHarmonic.norm_py.html) | the L2 norm for the normalised measure, the Euclidean norm of the coefficients |
| [odd](S1FunHarmonic.odd_py.html) | whether f(x)=-f(-x), tested from the Fourier coefficients |
| [plot](S1Fun.plot_py.html) | plot of a function on the circle, its values as the radius of a polar line |
| [plotSpektra](S1FunHarmonic.plotSpektra_py.html) | the Chebyshev coefficients of a kernel, or the harmonic power of a function, per degree |
| [plus](S1Fun.plus_py.html) |  |
| [plus](S1FunHarmonic.plus_py.html) |  |
| [power](S1Fun.power_py.html) |  |
| [power](S1FunHarmonic.power_py.html) |  |
| [quadrature](S1FunHarmonic.quadrature_py.html) | the Fourier series of a function on the circle by quadrature |
| [rdivide](S1Fun.rdivide_py.html) |  |
| [rdivide](S1FunHarmonic.rdivide_py.html) |  |
| [rotate](S1FunHarmonic.rotate_py.html) | shift the circular function by an angle in radians |
| [S1Fun](S1Fun.S1Fun_py.html) | a function on the circle by its Fourier coefficients fhat, k = -L..L, over e^{-ikx} as MATLAB's |
| [S1FunHarmonic](S1FunHarmonic.S1FunHarmonic_py.html) | a function on the circle by its Fourier coefficients fhat, k = -L..L, over e^{-ikx} as MATLAB's |
| [smooth](S1Fun.smooth_py.html) | the convolution with a de la Vallee Poussin kernel, 2.9 degree unless a kernel or a halfwidth is given |
| [sqrt](S1Fun.sqrt_py.html) | the pointwise square root, a Fourier series of a smoothing bandwidth, or at the bandwidth given |
| [sqrt](S1FunHarmonic.sqrt_py.html) | the pointwise square root, a Fourier series of a smoothing bandwidth, or at the bandwidth given |
| [sum](S1Fun.sum_py.html) | the integral over the circle, 2 pi times the mean, MATLAB's sum |
| [sum](S1FunHarmonic.sum_py.html) | the integral over the circle, 2 pi times the mean, MATLAB's sum |
| [times](S1Fun.times_py.html) |  |
| [times](S1FunHarmonic.times_py.html) |  |
| [truncate](S1FunHarmonic.truncate_py.html) | return the same circular function represented through Fourier mode L |
| [uminus](S1Fun.uminus_py.html) |  |
| [uminus](S1FunHarmonic.uminus_py.html) |  |

## Used on

[S1FunHarmonics](S1FunHarmonics_py.html)

MATLAB's [S1Fun_index](S1Fun_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L34">source</a></font>
{% endraw %}
