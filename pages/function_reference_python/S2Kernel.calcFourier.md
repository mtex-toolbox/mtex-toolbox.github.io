---
title: 'S2Kernel.calcFourier'
sidebar: function_reference_sidebar
permalink: S2Kernel.calcFourier_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [S2Kernel](S2Kernel_index_py.html).

the Legendre coefficients A_0 .. A_L of the kernel, to its bandwidth by default; MATLAB's
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

The kernel is the series psi(t) = sum_n A_n P_n(t) of Legendre polynomials in the cosine t
of the polar angle.

## Input

| `psi` | S2Kernel |

## Keywords

| keyword | default | description |
|---|---|---|
| `L` | `None` | the largest degree, the bandwidth of the kernel when not given |

## Output

| `A` | ndarray of L + 1 coefficients |

## See also

S2Kernel.eval, [SO3Kernel.calcFourier](SO3Kernel.calcFourier_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L984">source</a></font>
{% endraw %}
