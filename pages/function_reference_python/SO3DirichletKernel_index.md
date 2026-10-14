---
title: 'The class SO3DirichletKernel'
sidebar: function_reference_sidebar
permalink: SO3DirichletKernel_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the Dirichlet kernel on SO(3), sum_n (2n+1) U_2n(t) up to the degree N, of mean one:
the kernel for physical properties

## Syntax

<div class="mx-form" markdown="1">

```python
SO3DirichletKernel(35)
```

</div>

<div class="mx-form" markdown="1">

```python
SO3DirichletKernel()
```

N the preference maxSO3Bandwidth.

</div>

## Description

Convolution with this kernel retains harmonic degrees 0 through N unchanged and
removes higher degrees. It is useful for a specified harmonic resolution, including
physical-property calculations. It has mean one but can take negative values.

Evaluate psi at t=cos(omega/2), the cosine of half the rotation angle.
Use psi.halfwidth() for the angular width in radians and psi.bandwidth for the
maximum degree of its harmonic representation.

## Keywords

| keyword | default | description |
|---|---|---|
| `N` |  | maximum harmonic degree; the maxSO3Bandwidth preference when omitted |

## Output

| `psi` | SO3DirichletKernel |

## See also

[SO3Kernel](SO3Kernel_index_py.html), [calcDensity](calcDensity_py.html), [calcKernel](EBSD.calcKernel_py.html)

## Members

| [bandwidth](SO3DirichletKernel.bandwidth_py.html) | the degree N of the kernel |
| [radon](SO3DirichletKernel.radon_py.html) | the Radon transform: the Dirichlet kernel on the sphere of the same degree |

## Used on

[ODFShapes](ODFShapes_py.html), [SO3Kernels](SO3Kernels_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L688">source</a></font>
{% endraw %}
