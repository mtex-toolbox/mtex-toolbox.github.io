---
title: 'halfwidth'
sidebar: function_reference_sidebar
permalink: halfwidth_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
halfwidth(x, ...) is x.halfwidth(...), the method of the object passed

## Syntax

```python
halfwidth(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [fibreVonMisesFisherKernel](fibreVonMisesFisherKernel.halfwidth_py.html) | the halfwidth in closed form, acos(1 - log(2) / kappa) |
| [S1BumpKernel](S1BumpKernel.halfwidth_py.html) | the halfwidth, the half length delta of the interval |
| [S1GaussKernel](S1GaussKernel.halfwidth_py.html) | the halfwidth in closed form, sigma sqrt(2 log 2) |
| [S2BumpKernel](S2BumpKernel.halfwidth_py.html) | the halfwidth, the radius delta of the cap |
| [S2DeLaValleePoussinKernel](S2DeLaValleePoussinKernel.halfwidth_py.html) | the halfwidth in closed form, acos(2 * 2^(-1 / kappa) - 1) |
| [SO3BumpKernel](SO3BumpKernel.halfwidth_py.html) | the halfwidth, the radius delta of the bump |
| [SO3DeLaValleePoussinKernel](SO3DeLaValleePoussinKernel.halfwidth_py.html) | the halfwidth in closed form, 2 acos(2^(-1 / (2 kappa))) |
| [SO3vonMisesFisherKernel](SO3vonMisesFisherKernel.halfwidth_py.html) | the halfwidth in closed form, acos(1 - log(2) / kappa) |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
