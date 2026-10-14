---
title: 'The class SO3Kernel'
sidebar: function_reference_sidebar
permalink: SO3Kernel_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Kernel_index.html
status: Reference
---
{% raw %}
a kernel on SO(3) given by its Chebyshev coefficients A

## Members

| | |
|---|---|
| [calcFourier](SO3Kernel.calcFourier_py.html) | the Chebyshev coefficients A_0 . |
| [conv](SO3Kernel.conv_py.html) | convolution multiplies the coefficients and divides by 2n+1, on S2 when either factor is |
| [eval](SO3Kernel.eval_py.html) | the kernel at the cosine argument t (the angle on S1), or at a rotation or direction, or between two of them: psi.eval(t), psi.eval(rot), psi.eval(rot1, rot2) |
| [grad](SO3Kernel.grad_py.html) | the derivative with respect to the angle at the cosine argument t, through sin(omega/2) psi = sum_n A_n sin((2n+1) omega/2) |
| [minus](SO3Kernel.minus_py.html) |  |
| [mrdivide](SO3Kernel.mrdivide_py.html) |  |
| [mtimes](SO3Kernel.mtimes_py.html) |  |
| [norm](SO3Kernel.norm_py.html) | the L2 norm of the kernel, the Euclidean norm of its coefficients |
| [plot](SO3Kernel.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [plotPDF](SO3Kernel.plotPDF_py.html) | pole figures, one per crystal direction: of an ODF, of a list of orientations or of a measured PoleFigure |
| [plotSpektra](SO3Kernel.plotSpektra_py.html) | plotSpectrum(psi), plotSpectrum(odf): the Chebyshev coefficients of a kernel, or the harmonic power of a function, per degree (MATLAB's plotSpektra) |
| [plus](SO3Kernel.plus_py.html) |  |
| [radon](SO3Kernel.radon_py.html) | the Radon transform is the S2 kernel with the same coefficients |
| [rdivide](SO3Kernel.rdivide_py.html) |  |
| [SO3Kernel](SO3Kernel.SO3Kernel_py.html) | a kernel on SO(3) given by its Chebyshev coefficients A |
| [times](SO3Kernel.times_py.html) |  |
| [uminus](SO3Kernel.uminus_py.html) |  |
| [volume](SO3Kernel.volume_py.html) | the share of orientations within a radius of a centre: the mean of f on a local grid in the ball, times the ball's share of the fundamental region (its Haar measure times the number of symmetric copies, at most one) |

## Used on

[SO3Kernels](SO3Kernels_py.html)

MATLAB's [SO3Kernel_index](SO3Kernel_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L192">source</a></font>
{% endraw %}
