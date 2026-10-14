---
title: 'The class SO3SquareSingularityKernel'
sidebar: function_reference_sidebar
permalink: SO3SquareSingularityKernel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3SquareSingularityKernel.html
status: Reference
---
{% raw %}
the square singularity kernel on SO(3), kappa in (0, 1), its coefficients the Legendre
functions of the second kind

## Syntax

<div class="mx-form" markdown="1">

```python
SO3SquareSingularityKernel(0.9)
SO3SquareSingularityKernel(halfwidth=10*degree)
```

</div>

## Description

A nonnegative, mean-one smoothing kernel on orientation space. The parameter
kappa lies between zero and one; values closer to one give a sharper peak. Its
harmonic coefficients are computed from Legendre functions of the second kind.

Evaluate psi at t=cos(omega/2), the cosine of half the rotation angle.
Use psi.halfwidth() for the angular width in radians and psi.bandwidth for the
maximum degree of its harmonic representation.

## Keywords

| keyword | default | description |
|---|---|---|
| `kappa` |  | concentration in (0, 1), with larger values giving a sharper peak |
| `halfwidth` |  | angular halfwidth in radians, taking precedence over kappa |

## Output

| `psi` | SO3SquareSingularityKernel |

## See also

[SO3Kernel](SO3Kernel_index_py.html), [calcDensity](calcDensity_py.html), [calcKernel](EBSD.calcKernel_py.html)

## Members

| [radon](SO3SquareSingularityKernel.radon_py.html) | the Radon transform: the kernel on the sphere of the same coefficients, in closed form |

## Used on

[ODFShapes](ODFShapes_py.html), [SO3Kernels](SO3Kernels_py.html)

MATLAB's [SO3SquareSingularityKernel](SO3SquareSingularityKernel.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L570">source</a></font>
{% endraw %}
