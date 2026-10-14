---
title: 'SO3Kernel.calcFourier'
sidebar: function_reference_sidebar
permalink: SO3Kernel.calcFourier_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Kernel.calcFourier.html
status: Reference
---
{% raw %}
A method of [SO3Kernel](SO3Kernel_index_py.html).

the Chebyshev coefficients A_0 .. A_L of the kernel, to its bandwidth by default; MATLAB's
calcFourier

## Syntax

<div class="mx-form" markdown="1">

```python
A = psi.calcFourier()
```

Up to the bandwidth of the kernel, psi.A.

</div>

<div class="mx-form" markdown="1">

```python
A = psi.calcFourier(64)
```

Up to the degree 64.

</div>

## Description

The kernel is the series psi(cos(omega/2)) = sum_n A_n U_2n(cos(omega/2)) of Chebyshev
polynomials of the second kind; the coefficients come in closed form or by a recurrence for
the kernel families and by quadrature for a kernel given as a function. MATLAB's
'GaussKronrod' and maxAngle are not taken.

## Input

| `psi` | SO3Kernel |

## Keywords

| keyword | default | description |
|---|---|---|
| `L` | `None` | the largest degree, the bandwidth of the kernel when not given |

## Output

| `A` | ndarray of L + 1 coefficients |

## See also

[SO3Kernel.eval](SO3Kernel.eval_py.html), [S2Kernel.calcFourier](S2Kernel.calcFourier_py.html), [S1Kernel.calcFourier](S1Kernel.calcFourier_py.html)

MATLAB's [SO3Kernel.calcFourier](SO3Kernel.calcFourier.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L247">source</a></font>
{% endraw %}
