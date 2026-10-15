---
title: 'The class S1Kernel'
sidebar: function_reference_sidebar
permalink: S1Kernel_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1Kernel_index.html
status: Reference
---
{% raw %}
an even kernel on the circle represented by a finite Fourier series.

## Syntax

<div class="mx-form" markdown="1">

```python
psi = S1Kernel(fhat)
values = psi(angles)
```

</div>

## Description

Input coefficients are ordered from mode -N to N and are expected to be real and
even: c[-k]=c[k]. The constructor stores the nonnegative half and mirrors it on
output. Angles are in radians, with period `2*pi`. The middle coefficient is the mean
over the circle; choose it as one for a mean-one smoothing kernel.

## Input

| `fhat` | real symmetric coefficient array of odd length 2*N+1 |

## Output

| `psi` | S1Kernel |

## Properties

| `fhat` | two-sided coefficients, modes -N through N |
| `bandwidth` | largest Fourier mode N |

## See also

[S1GaussKernel](S1GaussKernel_index_py.html), [S1DirichletKernel](S1DirichletKernel_index_py.html), [S1FejerKernel](S1FejerKernel_index_py.html), [calcDensity](calcDensity_py.html)

## Members

| [calcFourier](S1Kernel.calcFourier_py.html) | the Fourier coefficients of the kernel, degrees -L . |
| [conv](S1Kernel.conv_py.html) | the convolution with another kernel on the circle: the coefficients multiplied |
| [grad](S1Kernel.grad_py.html) | the derivative of a kernel on the circle, -2 sum_k k c_k sin(kx) |
| [norm](S1Kernel.norm_py.html) | the L2 norm of the kernel, the Euclidean norm of its two sided coefficients |

MATLAB's [S1Kernel_index](S1Kernel_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L1334">source</a></font>
{% endraw %}
