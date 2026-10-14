---
title: 'The class S2DeLaValleePoussinKernel'
sidebar: function_reference_sidebar
permalink: S2DeLaValleePoussinKernel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2DeLaValleePoussinKernel.html
status: Reference
---
{% raw %}
the de la Vallee Poussin kernel on the sphere, (1 + kappa) ((1 + t) / 2)^kappa: nonnegative and
a finite series, the kernel recommended for texture analysis

## Syntax

<div class="mx-form" markdown="1">

```python
S2DeLaValleePoussinKernel(20)
S2DeLaValleePoussinKernel(halfwidth=10*degree)
```

</div>

## Members

| [halfwidth](S2DeLaValleePoussinKernel.halfwidth_py.html) | the halfwidth in closed form, acos(2 * 2^(-1 / kappa) - 1) |

## Used on

[EBSDAdvancedMaps](EBSDAdvancedMaps_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [S2Kernels](S2Kernels_py.html), [VectorsDensityEstimation](VectorsDensityEstimation_py.html)

MATLAB's [S2DeLaValleePoussinKernel](S2DeLaValleePoussinKernel.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L842">source</a></font>
{% endraw %}
