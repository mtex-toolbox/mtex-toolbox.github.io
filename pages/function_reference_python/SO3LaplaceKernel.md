---
title: 'The class SO3LaplaceKernel'
sidebar: function_reference_sidebar
permalink: SO3LaplaceKernel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3LaplaceKernel.html
status: Reference
---
{% raw %}
the Laplace kernel on SO(3), sum_n (2n+1) / (4 n^2 (2n+2)^2) U_2n(t), without a constant term

## Syntax

<div class="mx-form" markdown="1">

```python
psi = SO3LaplaceKernel()
```

</div>

## Description

A radial kernel with no constant mode: its mean over orientation space is zero.
The degree-n coefficient for n>=1 is `(2*n+1)/(4*n**2*(2*n+2)**2)`. It is an operator
kernel rather than a normalised orientation density.

Evaluate psi at t=cos(omega/2), the cosine of half the rotation angle.
Use psi.halfwidth() for the angular width in radians and psi.bandwidth for the
maximum degree of its harmonic representation.

## Output

| `psi` | SO3LaplaceKernel |

## See also

[SO3Kernel](SO3Kernel_index_py.html), [calcDensity](calcDensity_py.html), [calcKernel](EBSD.calcKernel_py.html)

## Used on

[SO3Kernels](SO3Kernels_py.html)

MATLAB's [SO3LaplaceKernel](SO3LaplaceKernel.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L773">source</a></font>
{% endraw %}
