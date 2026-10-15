---
title: 'The class SO3DeLaValleePoussinKernel'
sidebar: function_reference_sidebar
permalink: SO3DeLaValleePoussinKernel_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3DeLaValleePoussinKernel_index.html
status: Reference
---
{% raw %}
the de la Vallee Poussin kernel on SO(3), B(3/2, 1/2) / B(3/2, kappa + 1/2) t^(2 kappa):
nonnegative and concentrated at zero, the kernel recommended for texture analysis

## Syntax

<div class="mx-form" markdown="1">

```python
SO3DeLaValleePoussinKernel(20)
SO3DeLaValleePoussinKernel(halfwidth=10*degree)
```

</div>

## Description

A nonnegative, mean-one kernel for orientation density estimation. Larger kappa
gives a narrower peak. For integer kappa its harmonic series is finite; when a
halfwidth produces a noninteger kappa, the stored harmonic expansion is truncated.

Evaluate psi at t=cos(omega/2), the cosine of half the rotation angle.
Use psi.halfwidth() for the angular width in radians and psi.bandwidth for the
maximum degree of its harmonic representation.

## Keywords

| keyword | default | description |
|---|---|---|
| `kappa` |  | positive concentration parameter; larger values give a sharper peak |
| `halfwidth` |  | angular halfwidth in radians, taking precedence over kappa |

## Output

| `psi` | SO3DeLaValleePoussinKernel |

## See also

[SO3Kernel](SO3Kernel_index_py.html), [calcDensity](calcDensity_py.html), [calcKernel](EBSD.calcKernel_py.html)

## Members

| [halfwidth](SO3DeLaValleePoussinKernel.halfwidth_py.html) | the halfwidth in closed form, 2 acos(2^(-1 / (2 kappa))) |
| [radon](SO3DeLaValleePoussinKernel.radon_py.html) | the Radon transform: the de la Vallee Poussin kernel on the sphere of the same kappa |

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html), [EBSDAdvancedMaps](EBSDAdvancedMaps_py.html), [ODFShapes](ODFShapes_py.html), [SO3FunApproximationTheory](SO3FunApproximationTheory_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [SO3FunDefinition](SO3FunDefinition_py.html), [SO3FunOperations](SO3FunOperations_py.html), [SO3Kernels](SO3Kernels_py.html)

MATLAB's [SO3DeLaValleePoussinKernel_index](SO3DeLaValleePoussinKernel_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L375">source</a></font>
{% endraw %}
