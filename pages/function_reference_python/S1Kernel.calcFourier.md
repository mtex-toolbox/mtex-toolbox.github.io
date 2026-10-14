---
title: 'S1Kernel.calcFourier'
sidebar: function_reference_sidebar
permalink: S1Kernel.calcFourier_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [S1Kernel](S1Kernel_index_py.html).

the Fourier coefficients of the kernel, degrees -L .. L, to its bandwidth by default;
MATLAB's calcFourier

## Syntax

<div class="mx-form" markdown="1">

```python
fhat = psi.calcFourier()
```

Up to the bandwidth of the kernel, psi.fhat.

</div>

<div class="mx-form" markdown="1">

```python
fhat = psi.calcFourier(16)
```

The degrees -16 .. 16.

</div>

## Description

The kernel is the even series psi(x) = sum_k c_k e^{ikx}, c_-k = c_k; the coefficients are
returned two sided, beyond the bandwidth as zeros.

## Input

| `psi` | S1Kernel |

## Keywords

| keyword | default | description |
|---|---|---|
| `L` | `None` | the largest degree, the bandwidth of the kernel when not given |

## Output

| `fhat` | ndarray of 2L + 1 coefficients |

## See also

[S1Kernel.grad](S1Kernel.grad_py.html), [SO3Kernel.calcFourier](SO3Kernel.calcFourier_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L1374">source</a></font>
{% endraw %}
