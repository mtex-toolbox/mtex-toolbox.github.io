---
title: 'The class SO3BumpKernel'
sidebar: function_reference_sidebar
permalink: SO3BumpKernel_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
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

## Description

A uniform kernel inside a rotational ball, with zero values on and outside its
boundary. Its constant value is chosen so that the mean over SO(3) is one. The
direct evaluation retains the sharp boundary; a harmonic truncation can ring there.

Evaluate psi at t=cos(omega/2), the cosine of half the rotation angle.
Use psi.halfwidth() for the angular width in radians and psi.bandwidth for the
maximum degree of its harmonic representation.

## Keywords

| keyword | default | description |
|---|---|---|
| `delta` |  | angular radius of the open support in radians |
| `halfwidth` |  | angular halfwidth in radians, taking precedence over delta |
| `bandwidth` |  | maximum harmonic degree; the maxS1Bandwidth preference when omitted |

## Output

| `psi` | SO3BumpKernel |

## See also

[SO3Kernel](SO3Kernel_index_py.html), [calcDensity](calcDensity_py.html), [calcKernel](EBSD.calcKernel_py.html)

## Members

| [grad](SO3BumpKernel.grad_py.html) | the derivative of the bump kernel, zero wherever it exists |
| [halfwidth](SO3BumpKernel.halfwidth_py.html) | the halfwidth, the radius delta of the bump |
| [radon](SO3BumpKernel.radon_py.html) | the Radon transform: the kernel on the sphere of the same coefficients, in closed form |

## Used on

[ODFShapes](ODFShapes_py.html), [SO3Kernels](SO3Kernels_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L612">source</a></font>
{% endraw %}
