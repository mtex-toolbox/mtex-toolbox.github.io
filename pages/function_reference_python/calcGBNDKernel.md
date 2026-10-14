---
title: 'calcGBNDKernel'
sidebar: function_reference_sidebar
permalink: calcGBNDKernel_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: calcGBNDKernel.html
status: Reference
---
{% raw %}
calcGBNDKernel(halfwidth=10*degree, nonneg=True): the kernel Psi of the inclination, a
function of the cosine to the trace, normalised so that a uniform distribution of planes
gives one, and the spherical function psi(v) = Psi(v.z) sin(angle(v, x)) it is applied as;
without nonneg or bump Psi is the solution of the integral equation that makes the density
of the normals the de la Vallee Poussin kernel of that halfwidth, or the S2Kernel given
in its place

## Syntax

```python
calcGBNDKernel(halfwidth=10*degree, nonneg=False, bump=False)
```

MATLAB's [calcGBNDKernel](calcGBNDKernel.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/gbnd.py#L32">source</a></font>
{% endraw %}
