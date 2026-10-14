---
title: 'The class S2BumpKernel'
sidebar: function_reference_sidebar
permalink: S2BumpKernel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2BumpKernel.html
status: Reference
---
{% raw %}
the bump kernel on the sphere: 2 / (1 - cos delta) on the cap of radius delta, zero beyond,
a density of mean one

## Syntax

```python
S2BumpKernel(10*degree)
S2BumpKernel(halfwidth=10*degree, bandwidth=64)
```

## Members

| | |
|---|---|
| [grad](S2BumpKernel.grad_py.html) | the derivative of the bump kernel, zero wherever it exists |
| [halfwidth](S2BumpKernel.halfwidth_py.html) | the halfwidth, the radius delta of the cap |

## Used on

[S2Kernels](S2Kernels_py.html)

MATLAB's [S2BumpKernel](S2BumpKernel.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L796">source</a></font>
{% endraw %}
