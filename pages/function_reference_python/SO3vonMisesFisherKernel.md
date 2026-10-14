---
title: 'The class SO3vonMisesFisherKernel'
sidebar: function_reference_sidebar
permalink: SO3vonMisesFisherKernel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3vonMisesFisherKernel.html
status: Reference
---
{% raw %}
the von Mises Fisher kernel on SO(3), proportional to e^(kappa cos omega), kappa > 0

## Syntax

<div class="mx-form" markdown="1">

```python
SO3vonMisesFisherKernel(90)
SO3vonMisesFisherKernel(halfwidth=10*degree)
```

</div>

## Description

A nonnegative kernel with mean one on orientation space, concentrated around the
identity rotation. Larger kappa narrows the peak. The direct evaluation uses the
closed form, while its harmonic representation is truncated.

Evaluate psi at t=cos(omega/2), the cosine of half the rotation angle.
Use psi.halfwidth() for the angular width in radians and psi.bandwidth for the
maximum degree of its harmonic representation.

## Keywords

| keyword | default | description |
|---|---|---|
| `kappa` |  | positive concentration parameter; larger values give a sharper peak |
| `halfwidth` |  | angular halfwidth in radians, taking precedence over kappa |

## Output

| `psi` | SO3vonMisesFisherKernel |

## See also

[SO3Kernel](SO3Kernel_index_py.html), [calcDensity](calcDensity_py.html), [calcKernel](EBSD.calcKernel_py.html)

## Members

| [halfwidth](SO3vonMisesFisherKernel.halfwidth_py.html) | the halfwidth in closed form, acos(1 - log(2) / kappa) |
| [radon](SO3vonMisesFisherKernel.radon_py.html) | the Radon transform: the kernel on the sphere of the same coefficients, in closed form |

## Used on

[ODFModeling](ODFModeling_py.html), [ODFShapes](ODFShapes_py.html), [RadialODFs](RadialODFs_py.html), [SO3Kernels](SO3Kernels_py.html)

MATLAB's [SO3vonMisesFisherKernel](SO3vonMisesFisherKernel.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L473">source</a></font>
{% endraw %}
