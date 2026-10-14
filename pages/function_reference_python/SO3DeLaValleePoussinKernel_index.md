---
title: 'The class SO3DeLaValleePoussinKernel'
sidebar: function_reference_sidebar
permalink: SO3DeLaValleePoussinKernel_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the de la Vallee Poussin kernel on SO(3), B(3/2, 1/2) / B(3/2, kappa + 1/2) t^(2 kappa):
nonnegative and a finite series, the kernel recommended for texture analysis

## Syntax

<div class="mx-form" markdown="1">

```python
SO3DeLaValleePoussinKernel(20)
SO3DeLaValleePoussinKernel(halfwidth=10*degree)
```

</div>

## Members

| [halfwidth](SO3DeLaValleePoussinKernel.halfwidth_py.html) | the halfwidth in closed form, 2 acos(2^(-1 / (2 kappa))) |
| [radon](SO3DeLaValleePoussinKernel.radon_py.html) | the Radon transform: the de la Vallee Poussin kernel on the sphere of the same kappa |

## Used on

[OrientationEmbeddings](OrientationEmbeddings_py.html), [EBSDAdvancedMaps](EBSDAdvancedMaps_py.html), [ODFShapes](ODFShapes_py.html), [SO3FunApproximationTheory](SO3FunApproximationTheory_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [SO3FunDefinition](SO3FunDefinition_py.html), [SO3FunOperations](SO3FunOperations_py.html), [SO3Kernels](SO3Kernels_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L348">source</a></font>
{% endraw %}
