---
title: 'SO3Kernel.SO3Kernel'
sidebar: function_reference_sidebar
permalink: SO3Kernel.SO3Kernel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Kernel.SO3Kernel.html
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

## Signature

<div class="mx-form" markdown="1">

```python
SO3Kernel(A)
```

</div>

## Used on

[SO3Kernels](SO3Kernels_py.html)

MATLAB's [SO3Kernel.SO3Kernel](SO3Kernel.SO3Kernel.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L213">source</a></font>
{% endraw %}
