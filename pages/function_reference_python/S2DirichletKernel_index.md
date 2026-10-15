---
title: 'The class S2DirichletKernel'
sidebar: function_reference_sidebar
permalink: S2DirichletKernel_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2DirichletKernel_index.html
status: Reference
---
{% raw %}
the Dirichlet kernel on the sphere, sum_n (2n+1) P_n(t) up to the degree N, of mean one

## Syntax

<div class="mx-form" markdown="1">

```python
S2DirichletKernel(35)
```

</div>

<div class="mx-form" markdown="1">

```python
S2DirichletKernel()
```

N the preference maxS2Bandwidth.

</div>

## Description

Convolution with this kernel retains spherical harmonic degrees 0 through N
unchanged and removes higher degrees. It has mean one but can take negative values;
nonnegative smoothing kernels are usually preferable for density estimation.

Evaluate psi at t=cos(theta), the cosine of the angular distance on the sphere.
Use psi.halfwidth() for the angular width in radians and psi.bandwidth for the
maximum degree of its harmonic representation.

## Keywords

| keyword | default | description |
|---|---|---|
| `N` |  | maximum harmonic degree; the maxS2Bandwidth preference when omitted |

## Output

| `psi` | S2DirichletKernel |

## See also

[S2Kernel](S2Kernel_index_py.html), [calcDensity](calcDensity_py.html), [calcKernel](EBSD.calcKernel_py.html)

## Members

| [bandwidth](S2DirichletKernel.bandwidth_py.html) | the degree N of the kernel |

## Used on

[S2Kernels](S2Kernels_py.html), [VectorsDensityEstimation](VectorsDensityEstimation_py.html)

MATLAB's [S2DirichletKernel_index](S2DirichletKernel_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L1125">source</a></font>
{% endraw %}
