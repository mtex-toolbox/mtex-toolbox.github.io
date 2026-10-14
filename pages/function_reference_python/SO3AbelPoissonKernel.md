---
title: 'The class SO3AbelPoissonKernel'
sidebar: function_reference_sidebar
permalink: SO3AbelPoissonKernel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3AbelPoissonKernel.html
status: Reference
---
{% raw %}
the Abel Poisson kernel on SO(3), sum_n (2n+1) kappa^(2n) U_2n(t), kappa in (0, 1)

```python
SO3AbelPoissonKernel(0.4)
SO3AbelPoissonKernel(halfwidth=5*degree)
```

## Members

| | |
|---|---|
| [radon](SO3AbelPoissonKernel.radon_py.html) | the Radon transform: the kernel on the sphere of the same coefficients, in closed form |

## Used on

[ODFShapes](ODFShapes_py.html), [RBFApproximationTheory](RBFApproximationTheory_py.html), [SO3Kernels](SO3Kernels_py.html)

MATLAB's [SO3AbelPoissonKernel](SO3AbelPoissonKernel.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L325">source</a></font>
{% endraw %}
