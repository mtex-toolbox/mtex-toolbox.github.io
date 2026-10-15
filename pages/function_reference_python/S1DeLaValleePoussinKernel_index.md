---
title: 'The class S1DeLaValleePoussinKernel'
sidebar: function_reference_sidebar
permalink: S1DeLaValleePoussinKernel_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1DeLaValleePoussinKernel_index.html
status: Reference
---
{% raw %}
the n-th de la Vallee Poussin kernel on the circle, 2 F_(2n-1) - F_(n-1) with F the Fejer
kernels: coefficients one up to n, falling to zero at 2n

## Syntax

<div class="mx-form" markdown="1">

```python
S1DeLaValleePoussinKernel(20)
S1DeLaValleePoussinKernel(halfwidth=5*degree)
```

</div>

## Description

A circular kernel with Fourier multipliers equal to one through degree n and
falling linearly to zero at `2*n`. The series is finite and has mean one. The halfwidth
option chooses an integer n approximately, so the requested width is not exact.

Evaluate psi at x, an angle in radians.
Use psi.halfwidth() for the angular width in radians and psi.bandwidth for the
maximum degree of its harmonic representation.

## Keywords

| keyword | default | description |
|---|---|---|
| `n` |  | positive integer controlling the cutoff at 2*n; omitted n is chosen for about 2.9 degrees |
| `halfwidth` |  | approximate angular halfwidth in radians, used when n is omitted |

## Output

| `psi` | S1DeLaValleePoussinKernel |

## See also

[S1Kernel](S1Kernel_index_py.html), [calcDensity](calcDensity_py.html), [calcKernel](EBSD.calcKernel_py.html)

## Members

| [bandwidth](S1DeLaValleePoussinKernel.bandwidth_py.html) | the degree 2n beyond which the coefficients vanish |

## Used on

[EllipseBasedParameters](EllipseBasedParameters_py.html)

MATLAB's [S1DeLaValleePoussinKernel_index](S1DeLaValleePoussinKernel_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L1472">source</a></font>
{% endraw %}
