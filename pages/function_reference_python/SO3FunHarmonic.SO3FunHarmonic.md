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
frame

## Syntax

From MTEX's coefficients:

```python
SO3F = SO3FunHarmonic(fhat, cs, ss)
```

The harmonic form of another function:

```python
SO3F = SO3FunHarmonic(odf, bandwidth=32)
```

A callable by quadrature:

```python
SO3F = SO3FunHarmonic(lambda ori: ori.angle(), cs)
```

On the Gauss-Legendre grid:

```python
SO3F = SO3FunHarmonic(lambda ori: ori.angle(), cs, 'GaussLegendre', bandwidth=16)
```

The series of an SO(3) kernel:

```python
SO3F = SO3FunHarmonic(psi, cs, bandwidth=24)
```

A misorientation function, f(g) = f(g^-1):

```python
mdf = SO3FunHarmonic(lambda o: o.angle(), cs, cs, antipodal=True, bandwidth=8)
```

The coefficients fhat are MTEX's, degree by degree, deg2dim(L + 1) of them for the bandwidth L;
a vector ending inside a degree block is padded with zeros to its end. Another SO(3) function
gives its harmonic form at the bandwidth given (an SO3FunRBF at most its kernel's), a kernel
its series, a callable of orientations is sampled on a quadrature grid of the bandwidth, by
default the preference defaultSO3Bandwidth, Clenshaw-Curtis unless 'GaussLegendre' is named
among the frames. The frames are the crystal frame and the specimen frame, the second by
default specimenFrame.default; the coefficients are made invariant under both unless
symmetrise=False. A list of functions carries its shape in front of the coefficients.

## Input

| | |
|---|---|
| `fhat` | array of MTEX's coefficients, an SO3Fun, an SO3Kernel or a callable of orientations |
| `cs, ss` | crystalFrame and specimenFrame (or a second crystalFrame) |

## Output

| | |
|---|---|
| `SO3F` | SO3FunHarmonic |

## Keywords

| | default | |
|---|---|---|
| `real` | `None` | whether the function takes real values only; by default read off the coefficients or the sampled values |
| `antipodal` | `None` | f(g) = f(g^-1), the exchange symmetry of a misorientation function; needs the same frame on both sides |
| `symmetrise` | `True` | make the coefficients invariant under the two frames' symmetries |
| `bandwidth` | `None` | the largest degree of the series |
| `dtype` | `None` | the complex type of the coefficients, complex128 unless given |

## See also

[SO3FunHarmonic.quadrature](SO3FunHarmonic.quadrature_py.html), [SO3FunHarmonic.interpolate](SO3FunHarmonic.interpolate_py.html), [SO3FunRBF](SO3FunRBF_index_py.html), [SO3FunHandle](SO3FunHandle_index_py.html), [SO3VectorFieldHarmonic](SO3VectorFieldHarmonic_index_py.html), [SO3FunHarmonicRepresentation](SO3FunHarmonicRepresentation_py.html)

## Used on

[AngleDistributionFunction](AngleDistributionFunction_py.html), [ODFInversePoleFigure](ODFInversePoleFigure_py.html), [RandomSampling](RandomSampling_py.html), [SO3FunHarmonicRepresentation](SO3FunHarmonicRepresentation_py.html), [SingleSlipModel](SingleSlipModel_py.html), [PoleFigure2ODFAmbiguity](PoleFigure2ODFAmbiguity_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [SO3FunDefinition](SO3FunDefinition_py.html), [SO3FunOperations](SO3FunOperations_py.html), [SO3FunQuadrature](SO3FunQuadrature_py.html), [SO3FunSymmetricFunctions](SO3FunSymmetricFunctions_py.html)

MATLAB's [SO3FunHarmonic.SO3FunHarmonic](SO3FunHarmonic.SO3FunHarmonic.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/so3fun.py#L66">source</a></font>
{% endraw %}
