---
title: 'The class S1FejerKernel'
sidebar: function_reference_sidebar
permalink: S1FejerKernel_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1FejerKernel_index.html
status: Reference
---
{% raw %}
the Fejer kernel on the circle, the mean of the Dirichlet kernels D_0 .. D_n: nonnegative,
of mean one

## Syntax

<div class="mx-form" markdown="1">

```python
psi = S1FejerKernel()
```

</div>

## Description

A nonnegative circular smoothing kernel formed by averaging the Dirichlet kernels.
Its Fourier multipliers decrease linearly from one at mode zero to zero beyond n.
The mean over the circle is one.

Evaluate psi at x, an angle in radians.
Use psi.halfwidth() for the angular width in radians and psi.bandwidth for the
maximum degree of its harmonic representation.

## Keywords

| keyword | default | description |
|---|---|---|
| `n` |  | maximum harmonic degree |

## Output

| `psi` | S1FejerKernel |

## See also

[S1Kernel](S1Kernel_index_py.html), [calcDensity](calcDensity_py.html), [calcKernel](EBSD.calcKernel_py.html)

## Members

| [bandwidth](S1FejerKernel.bandwidth_py.html) | the degree n of the kernel |

MATLAB's [S1FejerKernel_index](S1FejerKernel_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L1558">source</a></font>
{% endraw %}
