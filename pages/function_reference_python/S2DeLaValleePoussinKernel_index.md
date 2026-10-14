---
title: 'The class S2DeLaValleePoussinKernel'
sidebar: function_reference_sidebar
permalink: S2DeLaValleePoussinKernel_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the de la Vallee Poussin kernel on the sphere, (1 + kappa) ((1 + t) / 2)^kappa: nonnegative and
a finite series, the kernel recommended for texture analysis

```python
S2DeLaValleePoussinKernel(20)
S2DeLaValleePoussinKernel(halfwidth=10*degree)
```

## Members

| | |
|---|---|
| [halfwidth](S2DeLaValleePoussinKernel.halfwidth_py.html) | the halfwidth in closed form, acos(2 * 2^(-1 / kappa) - 1) |

## Used on

[EBSDAdvancedMaps](EBSDAdvancedMaps_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [S2Kernels](S2Kernels_py.html), [VectorsDensityEstimation](VectorsDensityEstimation_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L728">source</a></font>
{% endraw %}
