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
a function on the circle by its Fourier coefficients fhat, k = -L..L, over e^{-ikx} as MATLAB's

```python
S1FunHarmonic(fhat)
S1FunHarmonic(fun, bandwidth=L)     the coefficients of a callable by quadrature
S1FunHarmonic(psi, bandwidth=L)     the coefficients of an S1 kernel
S1FunHarmonic(f, bandwidth=L)       another function truncated, or any with a harmonic form
```

## Members

| | |
|---|---|
| [abs](S1Fun.abs_py.html) | the pointwise absolute value, a Fourier series of a smoothing bandwidth |
| [abs](S1FunHarmonic.abs_py.html) | the pointwise absolute value, a Fourier series of a smoothing bandwidth |
| [antipodal](S1FunHarmonic.antipodal_py.html) | f(x) = f(x + pi): the odd modes vanish |
| [approximate](S1FunHarmonic.approximate_py.html) | the Fourier series of values at the angles x by quadrature with the weights given, or of a callable |
| [bandwidth](S1FunHarmonic.bandwidth_py.html) | the bandwidth L, the largest frequency of the coefficients |
| [cat](S1FunHarmonic.cat_py.html) | cat(a, b, ...) is type(a).cat(a, b, ...): the list of the operands, MATLAB's [a, b], the carried attributes joined |
| [conj](S1Fun.conj_py.html) | the complex conjugate function |
| [conj](S1FunHarmonic.conj_py.html) | the complex conjugate function |
| [conv](S1Fun.conv_py.html) | smoothing by a kernel is one factor per mode |
| [conv](S1FunHarmonic.conv_py.html) | smoothing by a kernel is one factor per mode |
| [diff](S1FunHarmonic.diff_py.html) | the derivative multiplies c_k by -ik |
| [dot](S1FunHarmonic.dot_py.html) | the inner product with g for the normalised measure, by the coefficients |
| [eval](S1FunHarmonic.eval_py.html) | the values at the angles x |
| [even](S1FunHarmonic.even_py.html) | f(x) = f(-x): c_{-k} = c_k |
| [exp](S1Fun.exp_py.html) | the pointwise exponential, a Fourier series of a smoothing bandwidth, or at the bandwidth given |
| [grad](S1FunHarmonic.grad_py.html) | the derivative as a function, or its values at the angles x |
| [interpolate](S1FunHarmonic.interpolate_py.html) | the Fourier series through samples on the circle, as MATLAB's: equispaced samples by quadrature |
| [isclose](S1FunHarmonic.isclose_py.html) | whether the coefficients of g agree within atol + rtol times their norm |
| [log](S1Fun.log_py.html) | the pointwise logarithm, a Fourier series of a smoothing bandwidth, or at the bandwidth given |
| [max](S1Fun.max_py.html) | the largest value and the angle it is taken at, sampled at the resolution and refined |
| [max](S1FunHarmonic.max_py.html) | the largest value and the angle it is taken at, sampled at the resolution and refined |
| [mean](S1Fun.mean_py.html) | the mean over the circle, the coefficient c_0 |
| [mean](S1FunHarmonic.mean_py.html) | the mean over the circle, the coefficient c_0 |
| [min](S1Fun.min_py.html) | the smallest value and the angle it is taken at, sampled at the resolution and refined |
| [min](S1FunHarmonic.min_py.html) | the smallest value and the angle it is taken at, sampled at the resolution and refined |
| [minus](S1Fun.minus_py.html) |  |
| [mrdivide](S1Fun.mrdivide_py.html) |  |
| [mtimes](S1Fun.mtimes_py.html) |  |
| [mtimes](S1FunHarmonic.mtimes_py.html) |  |
| [norm](S1Fun.norm_py.html) | the L2 norm for the normalised measure, the Euclidean norm of the coefficients |
| [norm](S1FunHarmonic.norm_py.html) | the L2 norm for the normalised measure, the Euclidean norm of the coefficients |
| [odd](S1FunHarmonic.odd_py.html) | whether f(x) = -f(-x): c_{-k} = -c_k |
| [plot](S1Fun.plot_py.html) | plot(sF1): a function on the circle as a polar line, or over the angle with polar=False |
| [plotSpektra](S1FunHarmonic.plotSpektra_py.html) | plotSpectrum(psi), plotSpectrum(odf): the Chebyshev coefficients of a kernel, or the harmonic power of a function, per degree (MATLAB's plotSpektra) |
| [plus](S1Fun.plus_py.html) |  |
| [plus](S1FunHarmonic.plus_py.html) |  |
| [power](S1Fun.power_py.html) |  |
| [power](S1FunHarmonic.power_py.html) |  |
| [quadrature](S1FunHarmonic.quadrature_py.html) | the Fourier series of values at the angles x by quadrature with the weights given, or of a callable |
| [rdivide](S1Fun.rdivide_py.html) |  |
| [rdivide](S1FunHarmonic.rdivide_py.html) |  |
| [rotate](S1FunHarmonic.rotate_py.html) | the rotation f(x - phi) |
| [S1Fun](S1Fun.S1Fun_py.html) | a function on the circle by its Fourier coefficients fhat, k = -L..L, over e^{-ikx} as MATLAB's |
| [S1FunHarmonic](S1FunHarmonic.S1FunHarmonic_py.html) | a function on the circle by its Fourier coefficients fhat, k = -L..L, over e^{-ikx} as MATLAB's |
| [smooth](S1Fun.smooth_py.html) | the convolution with a de la Vallee Poussin kernel, 2.9 degree unless a kernel or a halfwidth is given |
| [sqrt](S1Fun.sqrt_py.html) | the pointwise square root, a Fourier series of a smoothing bandwidth, or at the bandwidth given |
| [sqrt](S1FunHarmonic.sqrt_py.html) | the pointwise square root, a Fourier series of a smoothing bandwidth, or at the bandwidth given |
| [sum](S1Fun.sum_py.html) | the integral over the circle, 2 pi times the mean, MATLAB's sum |
| [sum](S1FunHarmonic.sum_py.html) | the integral over the circle, 2 pi times the mean, MATLAB's sum |
| [times](S1Fun.times_py.html) |  |
| [times](S1FunHarmonic.times_py.html) |  |
| [truncate](S1FunHarmonic.truncate_py.html) | the function cut, or padded with zeros, to the bandwidth L |
| [uminus](S1Fun.uminus_py.html) |  |
| [uminus](S1FunHarmonic.uminus_py.html) |  |

## Used on

[S1FunHarmonics](S1FunHarmonics_py.html)

MATLAB's [S1Fun_index](S1Fun_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s1fun.py#L34">source</a></font>
{% endraw %}
