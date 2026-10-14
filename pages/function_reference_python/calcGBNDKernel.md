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
the kernel of the inclination of a boundary plane about its trace, the one calcGBND
convolves with

## Syntax

<div class="mx-form" markdown="1">

```python
Psi, psi = calcGBNDKernel()
```

The kernel of halfwidth 10 degree.

</div>

<div class="mx-form" markdown="1">

```python
Psi, psi = calcGBNDKernel(5*degree, nonneg=True)
```

A nonnegative kernel of another halfwidth.

</div>

<div class="mx-form" markdown="1">

```python
Psi, psi = calcGBNDKernel(S2DeLaValleePoussinKernel(halfwidth=10*degree))
```

The kernel for a given density kernel.

</div>

## Description

A trace in a section leaves the inclination of the plane open. Psi is a function of the
cosine t between a normal and the trace, and psi(v) = Psi(v.z) sin(angle(v, x)) is the
spherical function it is applied as, for a trace along z in a section with normal x. Both
are normalised so that a uniform distribution of planes gives one.

By default Psi solves the integral equation that makes the density of the normals the de
la Vallee Poussin kernel of the halfwidth, or the S2Kernel given in its place; that
solution may be negative. nonneg takes a Gaussian in t instead, bump the indicator of
|t| < sin(halfwidth).

## Keywords

| keyword | default | description |
|---|---|---|
| `halfwidth` | `10*degree` | the halfwidth of the kernel, or an S2Kernel, the density of the normals the kernel of the inclination is to give |
| `nonneg` | `False` | a nonnegative kernel, a Gaussian in the cosine to the trace |
| `bump` | `False` | a bump kernel, one within the halfwidth and zero outside |

## Output

| `Psi` | S2Kernel, or S2KernelHandle with nonneg or bump, the kernel of the inclination |
| `psi` | S2FunHarmonic, the spherical function of a trace along z, antipodal |

## See also

[calcGBND](grain3Boundary.calcGBND_py.html), [S2DeLaValleePoussinKernel](S2DeLaValleePoussinKernel_index_py.html)

MATLAB's [calcGBNDKernel](calcGBNDKernel.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/gbnd.py#L32">source</a></font>
{% endraw %}
