---
title: 'SO3FunHarmonic.SO3FunHarmonic'
sidebar: function_reference_sidebar
permalink: SO3FunHarmonic.SO3FunHarmonic_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3FunHarmonic.SO3FunHarmonic.html
status: Reference
---
{% raw %}
a function on SO(3) as a series of Wigner functions, symmetric under its crystal and specimen
frame: from MTEX's coefficients fhat, another SO(3) function, a kernel or a callable (by
quadrature); a list of functions carries its shape in front of the coefficients

## Syntax

```python
SO3FunHarmonic(fhat, *frames, real=None, antipodal=None, symmetrise=True, bandwidth=None, dtype=None, _internal=False)
```

```python
SO3FunHarmonic(fhat, cs, ss)
SO3FunHarmonic(odf, bandwidth=32)               the harmonic form of another function
SO3FunHarmonic(lambda ori: ori.angle(), cs)     by quadrature
```

## Used on

[AngleDistributionFunction](AngleDistributionFunction_py.html), [ODFInversePoleFigure](ODFInversePoleFigure_py.html), [RandomSampling](RandomSampling_py.html), [SO3FunHarmonicRepresentation](SO3FunHarmonicRepresentation_py.html), [SingleSlipModel](SingleSlipModel_py.html), [PoleFigure2ODFAmbiguity](PoleFigure2ODFAmbiguity_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [SO3FunDefinition](SO3FunDefinition_py.html), [SO3FunOperations](SO3FunOperations_py.html), [SO3FunQuadrature](SO3FunQuadrature_py.html), [SO3FunSymmetricFunctions](SO3FunSymmetricFunctions_py.html)

MATLAB's [SO3FunHarmonic.SO3FunHarmonic](SO3FunHarmonic.SO3FunHarmonic.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L66">source</a></font>
{% endraw %}
