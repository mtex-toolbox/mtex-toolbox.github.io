---
title: 'S2Kernel.S2Kernel'
sidebar: function_reference_sidebar
permalink: S2Kernel.S2Kernel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Kernel.S2Kernel.html
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

## Signature

<div class="mx-form" markdown="1">

```python
S2Kernel(A)
```

</div>

MATLAB's [S2Kernel.S2Kernel](S2Kernel.S2Kernel.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L930">source</a></font>
{% endraw %}
