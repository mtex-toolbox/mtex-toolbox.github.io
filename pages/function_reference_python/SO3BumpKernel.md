---
title: 'The class SO3BumpKernel'
sidebar: function_reference_sidebar
permalink: SO3BumpKernel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3BumpKernel.html
status: Reference
---
{% raw %}
the bump kernel on SO(3): constant on the rotations of angle below delta, zero beyond, of
mean one

## Syntax

<div class="mx-form" markdown="1">

```python
SO3BumpKernel(40*degree)
SO3BumpKernel(halfwidth=10*degree, bandwidth=64)
```

</div>

## Members

| [grad](SO3BumpKernel.grad_py.html) | the derivative of the bump kernel, zero wherever it exists |
| [halfwidth](SO3BumpKernel.halfwidth_py.html) | the halfwidth, the radius delta of the bump |
| [radon](SO3BumpKernel.radon_py.html) | the Radon transform: the kernel on the sphere of the same coefficients, in closed form |

## Used on

[ODFShapes](ODFShapes_py.html), [SO3Kernels](SO3Kernels_py.html)

MATLAB's [SO3BumpKernel](SO3BumpKernel.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L510">source</a></font>
{% endraw %}
