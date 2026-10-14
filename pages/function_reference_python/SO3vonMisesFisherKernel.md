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

```python
SO3vonMisesFisherKernel(90)
SO3vonMisesFisherKernel(halfwidth=10*degree)
```

## Members

| | |
|---|---|
| [halfwidth](SO3vonMisesFisherKernel.halfwidth_py.html) | the halfwidth in closed form, acos(1 - log(2) / kappa) |
| [radon](SO3vonMisesFisherKernel.radon_py.html) | the Radon transform: the kernel on the sphere of the same coefficients, in closed form |

## Used on

[ODFModeling](ODFModeling_py.html), [ODFShapes](ODFShapes_py.html), [RadialODFs](RadialODFs_py.html), [SO3Kernels](SO3Kernels_py.html)

MATLAB's [SO3vonMisesFisherKernel](SO3vonMisesFisherKernel.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L357">source</a></font>
{% endraw %}
