---
title: 'grad'
sidebar: function_reference_sidebar
permalink: grad_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
grad(x, ...) is x.grad(...), the method of the object passed

## Syntax

```python
grad(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [S1BumpKernel](S1BumpKernel.grad_py.html) | the derivative of the bump kernel, zero wherever it exists |
| [S1FunHarmonic](S1FunHarmonic.grad_py.html) | the derivative as a function, or its values at the angles x |
| [S1Kernel](S1Kernel.grad_py.html) | the derivative of a kernel on the circle, -2 sum_k k c_k sin(kx) |
| [S2BumpKernel](S2BumpKernel.grad_py.html) | the derivative of the bump kernel, zero wherever it exists |
| [S2FunHarmonic](S2FunHarmonic.grad_py.html) | the surface gradient: a vector field, or its values at the directions x |
| [S2Kernel](S2Kernel.grad_py.html) | the derivative of a kernel on the sphere with respect to the polar angle, or to its cosine |
| [SO3BumpKernel](SO3BumpKernel.grad_py.html) | the derivative of the bump kernel, zero wherever it exists |
| [SO3FunCBF](SO3FunCBF.grad_py.html) | the gradient of a fibre ODF at orientations, or without them the vector field of the gradients of its harmonic expansion, as MATLAB's grad |
| [SO3FunComposition](SO3FunComposition.grad_py.html) | the gradient with respect to the tangent space basis, at the orientations x or as a field, left or right sided |
| [SO3FunHarmonic](SO3FunHarmonic.grad_py.html) | the gradient, a harmonic vector field on SO(3), left or with side='right' right |
| [SO3FunRBF](SO3FunRBF.grad_py.html) | the gradient of a kernel sum at orientations, or without them the vector field of the gradients of its harmonic expansion, as MATLAB's grad |
| [SO3Kernel](SO3Kernel.grad_py.html) | the derivative with respect to the rotation angle omega at the cosine argument t = cos(omega/2) |

## Used on

[SO3FunOperations](SO3FunOperations_py.html), [S2FunOperations](S2FunOperations_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
