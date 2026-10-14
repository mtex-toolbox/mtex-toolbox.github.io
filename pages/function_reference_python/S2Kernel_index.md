---
title: 'The class S2Kernel'
sidebar: function_reference_sidebar
permalink: S2Kernel_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Kernel_index.html
status: Reference
---
{% raw %}
a radially symmetric spherical kernel represented by Legendre coefficients.

## Syntax

<div class="mx-form" markdown="1">

```python
psi = S2Kernel(A)
values = psi(np.cos(theta))
```

</div>

## Description

The series is `sum(A[n]*P_n(t))`, with t=cos(theta) and P_n the Legendre polynomial.
A[0] is the mean over the sphere under uniform probability. Arbitrary coefficients
are neither rescaled to mean one nor constrained to give nonnegative values.

Use a kernel family for a specified smoothing profile, or S2KernelHandle for a
callable formula. Spherical kernels describe directional density estimates and
smoothing around orientation fibres.

## Input

| `A` | one-dimensional real coefficient array, degrees zero through L |

## Output

| `psi` | S2Kernel |

## Properties

| `A` | Legendre coefficients through the stored bandwidth |
| `bandwidth` | largest stored Legendre degree |

## See also

[S2KernelHandle](S2KernelHandle_index_py.html), [S2DeLaValleePoussinKernel](S2DeLaValleePoussinKernel_index_py.html), [fibreODF](fibreODF_py.html), [calcDensity](calcDensity_py.html)

## Members

| [calcFourier](S2Kernel.calcFourier_py.html) | the Legendre coefficients A_0 . |
| [conv](S2Kernel.conv_py.html) | the convolution with another kernel on the sphere or SO(3): the coefficients multiplied and divided by 2n+1, a kernel on the sphere |
| [grad](S2Kernel.grad_py.html) | the derivative of a kernel on the sphere with respect to the polar angle, or to its cosine |
| [minus](S2Kernel.minus_py.html) |  |
| [mrdivide](S2Kernel.mrdivide_py.html) |  |
| [mtimes](S2Kernel.mtimes_py.html) |  |
| [norm](S2Kernel.norm_py.html) | the L2 norm of the kernel, sqrt(sum_n A_n^2 / (2n+1)) |
| [plotSpektra](S2Kernel.plotSpektra_py.html) | the Chebyshev coefficients of a kernel, or the harmonic power of a function, per degree |
| [plus](S2Kernel.plus_py.html) |  |
| [radon](S2Kernel.radon_py.html) | the Funk transform: A_n P_n(0) |
| [rdivide](S2Kernel.rdivide_py.html) |  |
| [S2Kernel](S2Kernel.S2Kernel_py.html) | a radially symmetric spherical kernel represented by Legendre coefficients |
| [times](S2Kernel.times_py.html) |  |
| [uminus](S2Kernel.uminus_py.html) |  |

MATLAB's [S2Kernel_index](S2Kernel_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L930">source</a></font>
{% endraw %}
