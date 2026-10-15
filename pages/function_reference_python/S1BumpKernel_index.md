---
title: 'The class S1BumpKernel'
sidebar: function_reference_sidebar
permalink: S1BumpKernel_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1BumpKernel_index.html
status: Reference
---
{% raw %}
the indicator of the interval |x| < delta scaled to a density

## Syntax

<div class="mx-form" markdown="1">

```python
psi = S1BumpKernel()
```

</div>

## Description

A periodic constant kernel on the open interval (-delta, delta), with zero values
outside. The height is pi/delta, giving mean one over the circle. Its derivative
is zero away from the two discontinuities and is undefined at them.

Evaluate psi at x, an angle in radians.
Use psi.halfwidth() for the angular width in radians and psi.bandwidth for the
maximum degree of its harmonic representation.

## Keywords

| keyword | default | description |
|---|---|---|
| `delta` |  | angular radius of the open support in radians |
| `halfwidth` |  | angular halfwidth in radians, taking precedence over delta |

## Output

| `psi` | S1BumpKernel |

## See also

[S1Kernel](S1Kernel_index_py.html), [calcDensity](calcDensity_py.html), [calcKernel](EBSD.calcKernel_py.html)

## Members

| [grad](S1BumpKernel.grad_py.html) | the derivative of the bump kernel, zero wherever it exists |
| [halfwidth](S1BumpKernel.halfwidth_py.html) | the halfwidth, the half length delta of the interval |

MATLAB's [S1BumpKernel_index](S1BumpKernel_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L1598">source</a></font>
{% endraw %}
