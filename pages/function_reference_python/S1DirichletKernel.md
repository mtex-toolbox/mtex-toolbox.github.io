---
title: 'The class S1DirichletKernel'
sidebar: function_reference_sidebar
permalink: S1DirichletKernel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1DirichletKernel.html
status: Reference
---
{% raw %}
the Dirichlet kernel on the circle, sum_(k = -n .. n) e^(ikx), of mean one

## Syntax

<div class="mx-form" markdown="1">

```python
psi = S1DirichletKernel()
```

</div>

## Description

The sharp Fourier cutoff: convolution retains modes -n through n unchanged and
removes the rest. The mean over the circle is one. Oscillating negative side lobes
can produce ringing when approximating discontinuous data.

Evaluate psi at x, an angle in radians.
Use psi.halfwidth() for the angular width in radians and psi.bandwidth for the
maximum degree of its harmonic representation.

## Keywords

| keyword | default | description |
|---|---|---|
| `n` |  | maximum harmonic degree |

## Output

| `psi` | S1DirichletKernel |

## See also

[S1Kernel](S1Kernel_index_py.html), [calcDensity](calcDensity_py.html), [calcKernel](EBSD.calcKernel_py.html)

## Members

| [bandwidth](S1DirichletKernel.bandwidth_py.html) | the degree n of the kernel |

MATLAB's [S1DirichletKernel](S1DirichletKernel.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kernelfunctions.py#L1519">source</a></font>
{% endraw %}
