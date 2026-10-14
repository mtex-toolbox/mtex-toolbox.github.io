---
title: 'The class fibreVonMisesFisherKernel'
sidebar: function_reference_sidebar
permalink: fibreVonMisesFisherKernel_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the von Mises Fisher kernel of a fibre, what fibreODF convolves with; kappa the
concentration, larger is sharper

## Syntax

<div class="mx-form" markdown="1">

```python
fibreVonMisesFisherKernel(90)
fibreVonMisesFisherKernel(halfwidth=10*degree)
```

</div>

## Description

The kernel used to smooth an ideal orientation fibre in [`fibreODF`](fibreODF_py.html). Larger kappa
concentrates the density closer to the fibre. It has mean one; its spherical
Radon kernel can be evaluated in closed form.

Evaluate psi at t=cos(omega/2), the cosine of half the rotation angle.
Use psi.halfwidth() for the angular width in radians and psi.bandwidth for the
maximum degree of its harmonic representation.

## Keywords

| keyword | default | description |
|---|---|---|
| `kappa` |  | positive concentration parameter; larger values give a sharper peak |
| `halfwidth` |  | angular halfwidth in radians, taking precedence over kappa |

## Output

| `psi` | fibreVonMisesFisherKernel |

## See also

[SO3Kernel](SO3Kernel_index_py.html), [calcDensity](calcDensity_py.html), [calcKernel](EBSD.calcKernel_py.html)

## Members

| [halfwidth](fibreVonMisesFisherKernel.halfwidth_py.html) | the halfwidth in closed form, acos(1 - log(2) / kappa) |
| [radon](fibreVonMisesFisherKernel.radon_py.html) | the Radon transform: the kernel on the sphere of the same coefficients, in closed form |

## Used on

[ODFShapes](ODFShapes_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L838">source</a></font>
{% endraw %}
