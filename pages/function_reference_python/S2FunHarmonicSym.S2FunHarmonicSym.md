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
a function on the sphere by its spherical harmonic coefficients, or a list of such functions;
symmetrised by the group of its frame, even when antipodal

## Syntax

```python
S2FunHarmonic(fhat, frame=None, *, real=None, antipodal=None, symmetrise=True, bandwidth=None, dtype=None, _internal=False)
```

```python
S2FunHarmonic(fhat)                         MTEX's coefficients
S2FunHarmonic(fhat, cs, antipodal=True)
S2FunHarmonic(lambda v: v.z**2, bandwidth=16)     a callable expanded by quadrature
S2FunHarmonic(psi)                          a kernel on the sphere
```

## Used on

[SO3FunConvolution](SO3FunConvolution_py.html), [S2FunHarmonicRepresentation](S2FunHarmonicRepresentation_py.html), [S2FunSampling](S2FunSampling_py.html), [S2FunVectorValued](S2FunVectorValued_py.html), [SphericalHarmonics](SphericalHarmonics_py.html)

MATLAB's [S2FunHarmonicSym.S2FunHarmonicSym](S2FunHarmonicSym.S2FunHarmonicSym.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2fun.py#L71">source</a></font>
{% endraw %}
