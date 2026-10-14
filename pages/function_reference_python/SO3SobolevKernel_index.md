---
title: 'The class SO3SobolevKernel'
sidebar: function_reference_sidebar
permalink: SO3SobolevKernel_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the Sobolev kernel on SO(3), sum_n (2n+1) (n(n+1))^s U_2n(t) up to the bandwidth

## Syntax

<div class="mx-form" markdown="1">

```python
SO3SobolevKernel(1.1, bandwidth=20)
```

</div>

## Description

A finite spectral kernel with degree-n multiplier `(n*(n+1))**s`. Positive s
amplifies higher degrees instead of smoothing them. The constant mode vanishes
for positive s, so this kernel is not a normalised density.

Evaluate psi at t=cos(omega/2), the cosine of half the rotation angle.
Use psi.halfwidth() for the angular width in radians and psi.bandwidth for the
maximum degree of its harmonic representation.

## Keywords

| keyword | default | description |
|---|---|---|
| `s` |  | Sobolev exponent applied to n*(n+1) |
| `bandwidth` |  | maximum harmonic degree; the maxSO3Bandwidth preference when omitted |

## Output

| `psi` | SO3SobolevKernel |

## See also

[SO3Kernel](SO3Kernel_index_py.html), [calcDensity](calcDensity_py.html), [calcKernel](EBSD.calcKernel_py.html)

## Members

| [bandwidth](SO3SobolevKernel.bandwidth_py.html) | the degree N the kernel is cut at |

## Used on

[SO3Kernels](SO3Kernels_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L802">source</a></font>
{% endraw %}
