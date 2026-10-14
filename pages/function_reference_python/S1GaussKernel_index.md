---
title: 'The class S1GaussKernel'
sidebar: function_reference_sidebar
permalink: S1GaussKernel_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the heat kernel of the circle, a wrapped Gaussian: what smooths a density of angles

## Syntax

<div class="mx-form" markdown="1">

```python
psi = S1GaussKernel()
```

</div>

## Description

The periodic heat kernel, obtained by wrapping a Gaussian of standard deviation
sigma around the circle. The mean over the circle is one, and mode k is multiplied
by `exp(-k**2*sigma**2/2)`. Larger sigma gives a broader smoothing kernel.

Evaluate psi at x, an angle in radians.
Use psi.halfwidth() for the angular width in radians and psi.bandwidth for the
maximum degree of its harmonic representation.

## Keywords

| keyword | default | description |
|---|---|---|
| `sigma` |  | Gaussian standard deviation in radians; five degrees when neither sigma nor halfwidth is supplied |
| `halfwidth` |  | angular halfwidth in radians, taking precedence over sigma |

## Output

| `psi` | S1GaussKernel |

## See also

[S1Kernel](S1Kernel_index_py.html), [calcDensity](calcDensity_py.html), [calcKernel](EBSD.calcKernel_py.html)

## Members

| [bandwidth](S1GaussKernel.bandwidth_py.html) | the modes beyond 6 / sigma are below e^{-18} |
| [halfwidth](S1GaussKernel.halfwidth_py.html) | the halfwidth in closed form, sigma sqrt(2 log 2) |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L1655">source</a></font>
{% endraw %}
