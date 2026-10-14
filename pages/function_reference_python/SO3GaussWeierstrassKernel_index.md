---
title: 'The class SO3GaussWeierstrassKernel'
sidebar: function_reference_sidebar
permalink: SO3GaussWeierstrassKernel_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the Gauss Weierstrass kernel on SO(3), sum_n (2n+1) e^(-n(n+1) kappa) U_2n(t), kappa > 0

## Syntax

<div class="mx-form" markdown="1">

```python
SO3GaussWeierstrassKernel(0.1)
SO3GaussWeierstrassKernel(halfwidth=10*degree)
```

</div>

## Description

The heat kernel smooths an orientation function by damping degree n by
`exp(-n*(n+1)*kappa)`. Larger kappa produces stronger smoothing and a broader peak.
The kernel has mean one; its infinite series is truncated numerically.

Evaluate psi at t=cos(omega/2), the cosine of half the rotation angle.
Use psi.halfwidth() for the angular width in radians and psi.bandwidth for the
maximum degree of its harmonic representation.

## Keywords

| keyword | default | description |
|---|---|---|
| `kappa` |  | positive diffusion parameter; larger values give a broader kernel |
| `halfwidth` |  | angular halfwidth in radians, taking precedence over kappa |

## Output

| `psi` | SO3GaussWeierstrassKernel |

## See also

[SO3Kernel](SO3Kernel_index_py.html), [calcDensity](calcDensity_py.html), [calcKernel](EBSD.calcKernel_py.html)

## Used on

[ODFShapes](ODFShapes_py.html), [SO3Kernels](SO3Kernels_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L524">source</a></font>
{% endraw %}
