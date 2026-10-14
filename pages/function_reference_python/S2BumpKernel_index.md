---
title: 'The class S2BumpKernel'
sidebar: function_reference_sidebar
permalink: S2BumpKernel_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the bump kernel on the sphere: 2 / (1 - cos delta) on the cap of radius delta, zero beyond,
a density of mean one

## Syntax

<div class="mx-form" markdown="1">

```python
S2BumpKernel(10*degree)
S2BumpKernel(halfwidth=10*degree, bandwidth=64)
```

</div>

## Description

A uniform kernel inside a spherical cap, with zero values on and outside its
boundary. Its constant value is chosen so that the mean over the sphere is one.
A finite harmonic representation approximates the discontinuity and can ring.

Evaluate psi at t=cos(theta), the cosine of the angular distance on the sphere.
Use psi.halfwidth() for the angular width in radians and psi.bandwidth for the
maximum degree of its harmonic representation.

## Keywords

| keyword | default | description |
|---|---|---|
| `delta` |  | angular radius of the open support in radians |
| `halfwidth` |  | angular halfwidth in radians, taking precedence over delta |
| `bandwidth` |  | maximum harmonic degree; chosen by the coefficient cutoff when omitted |

## Output

| `psi` | S2BumpKernel |

## See also

[S2Kernel](S2Kernel_index_py.html), [calcDensity](calcDensity_py.html), [calcKernel](EBSD.calcKernel_py.html)

## Members

| [grad](S2BumpKernel.grad_py.html) | the derivative of the bump kernel, zero wherever it exists |
| [halfwidth](S2BumpKernel.halfwidth_py.html) | the halfwidth, the radius delta of the cap |

## Used on

[S2Kernels](S2Kernels_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L1159">source</a></font>
{% endraw %}
