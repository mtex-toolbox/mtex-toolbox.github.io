---
title: 'S2FunHarmonicSym.S2FunHarmonicSym'
sidebar: function_reference_sidebar
permalink: S2FunHarmonicSym.S2FunHarmonicSym_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunHarmonicSym.S2FunHarmonicSym.html
status: Reference
---
{% raw %}
a function on the sphere by its spherical harmonic series, or a list of such functions;
the default representation of a function on the sphere

## Syntax

<div class="mx-form" markdown="1">

```python
sF = S2FunHarmonic(fhat)
```

From MTEX's coefficients.

</div>

<div class="mx-form" markdown="1">

```python
sF = S2FunHarmonic(fhat, cs, antipodal=True)
```

In a crystal frame, f(v) = f(-v).

</div>

<div class="mx-form" markdown="1">

```python
sF = S2FunHarmonic(lambda v: v.z**2, bandwidth=16)
```

A callable expanded by quadrature.

</div>

<div class="mx-form" markdown="1">

```python
sF = S2FunHarmonic(psi)
```

The series of a kernel on the sphere.

</div>

<div class="mx-form" markdown="1">

```python
sF = S2FunHarmonic(sF, bandwidth=8)
```

Another function, truncated.

</div>

## Description

The coefficients fhat are MTEX's, degree by degree, (L + 1)^2 of them for the bandwidth L;
a vector ending inside a degree block is padded with zeros to its end. Convolution,
rotation, products and quadrature are cheap on this form. A callable of vector3d is
sampled on a quadrature grid of the bandwidth, by default the preference
defaultS2Bandwidth (S2FunHarmonic.quadrature takes values at nodes), a kernel gives its
series, another S2Fun its harmonic form. The function is symmetrised under the group of
its frame, also when antipodal, unless symmetrise=False. A list of functions carries its
shape in front of the coefficients.

## Input

| `fhat` | array of MTEX's coefficients, an S2Fun, an S2Kernel or a callable of vector3d |
| `frame` | the crystalFrame or specimenFrame of the directions |

## Keywords

| keyword | default | description |
|---|---|---|
| `real` | `None` | whether the function takes real values only; by default read off the coefficients or the sampled values |
| `antipodal` | `None` | f(v) = f(-v) |
| `symmetrise` | `True` | make the coefficients invariant under the group of the frame |
| `bandwidth` | `None` | the largest degree of the series |
| `dtype` | `None` | the complex type of the coefficients, complex128 unless given |

## Output

| `sF` | S2FunHarmonic |

## See also

[S2FunHarmonic.quadrature](S2FunHarmonic.quadrature_py.html), [S2FunHarmonic.interpolate](S2FunHarmonic.interpolate_py.html), [S2FunHandle](S2FunHandle_index_py.html), [S2Kernel](S2Kernel_index_py.html), [SO3FunHarmonic](SO3FunHarmonic_index_py.html), [S2FunHarmonicRepresentation](S2FunHarmonicRepresentation_py.html)

## Used on

[SO3FunConvolution](SO3FunConvolution_py.html), [S2FunHarmonicRepresentation](S2FunHarmonicRepresentation_py.html), [S2FunSampling](S2FunSampling_py.html), [S2FunVectorValued](S2FunVectorValued_py.html), [SphericalHarmonics](SphericalHarmonics_py.html)

MATLAB's [S2FunHarmonicSym.S2FunHarmonicSym](S2FunHarmonicSym.S2FunHarmonicSym.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L71">source</a></font>
{% endraw %}
