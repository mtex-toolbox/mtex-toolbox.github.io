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
a rotationally symmetric kernel represented by Chebyshev coefficients.

## Syntax

<div class="mx-form" markdown="1">

```python
psi = SO3Kernel(A)
values = psi(np.cos(omega/2))
```

</div>

## Description

The series is `sum(A[n]*U_(2*n)(t))`, where t=cos(omega/2) and U is the Chebyshev
polynomial of the second kind. A[0] is the mean with respect to uniform probability
on SO(3); choose A[0]=1 for a mean-one density kernel. No positivity or normalisation
is imposed on arbitrary coefficients.

Use an SO3Kernel family to construct a specified shape or angular halfwidth.
For a callable formula, use SO3KernelHandle. The same kernel can be supplied to
unimodalODF or calcDensity for orientation smoothing.

## Input

| `A` | one-dimensional real coefficient array, degrees zero through L |

## Output

| `psi` | SO3Kernel |

## Properties

| `A` | Chebyshev coefficients through the stored bandwidth |
| `bandwidth` | largest stored harmonic degree |

## See also

[SO3KernelHandle](SO3KernelHandle_index_py.html), [SO3DeLaValleePoussinKernel](SO3DeLaValleePoussinKernel_index_py.html), [unimodalODF](unimodalODF_py.html), [calcDensity](calcDensity_py.html)

## Members

| [calcFourier](SO3Kernel.calcFourier_py.html) | the Chebyshev coefficients A_0 . |
| [conv](SO3Kernel.conv_py.html) | convolution multiplies the coefficients and divides by 2n+1, on S2 when either factor is |
| [eval](SO3Kernel.eval_py.html) | the kernel at the cosine argument t (the angle on S1), or at a rotation or direction, or between two of them |
| [grad](SO3Kernel.grad_py.html) | the derivative with respect to the rotation angle omega at the cosine argument t = cos(omega/2) |
| [minus](SO3Kernel.minus_py.html) |  |
| [mrdivide](SO3Kernel.mrdivide_py.html) |  |
| [mtimes](SO3Kernel.mtimes_py.html) |  |
| [norm](SO3Kernel.norm_py.html) | the L2 norm of the kernel, the Euclidean norm of its coefficients |
| [plot](SO3Kernel.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [plotPDF](SO3Kernel.plotPDF_py.html) | pole figures, one per crystal direction: of an ODF, of a list of orientations or of a measured PoleFigure |
| [plotSpektra](SO3Kernel.plotSpektra_py.html) | the Chebyshev coefficients of a kernel, or the harmonic power of a function, per degree |
| [plus](SO3Kernel.plus_py.html) |  |
| [radon](SO3Kernel.radon_py.html) | the Radon transform is the S2 kernel with the same coefficients |
| [rdivide](SO3Kernel.rdivide_py.html) |  |
| [SO3Kernel](SO3Kernel.SO3Kernel_py.html) | a rotationally symmetric kernel represented by Chebyshev coefficients |
| [times](SO3Kernel.times_py.html) |  |
| [uminus](SO3Kernel.uminus_py.html) |  |
| [volume](SO3Kernel.volume_py.html) | the share of orientations within a radius of a centre: the integral of f over the ball, int_{angle(g, c) < r} f(g) dg, relative to the integral over all orientations |

## Used on

[SO3Kernels](SO3Kernels_py.html)

MATLAB's [SO3Kernel_index](SO3Kernel_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L213">source</a></font>
{% endraw %}
