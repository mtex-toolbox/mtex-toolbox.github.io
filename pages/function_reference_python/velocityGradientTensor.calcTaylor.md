---
title: 'velocityGradientTensor.calcTaylor'
sidebar: function_reference_sidebar
permalink: velocityGradientTensor.calcTaylor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: velocityGradientTensor.calcTaylor.html
status: Reference
---
{% raw %}
the Taylor factor, the shears of the slip systems and the plastic spin of a strain the
crystal accommodates by slip alone

## Syntax

Eps in the crystal frame, one or a list of strains:

```python
M, b, W = calcTaylor(eps, sS)
```

The strain of every orientation, one row of shears each:

```python
M, b, W = calcTaylor(inv(ori) * eps, sS)
```

The orientation the spin turns the crystal to:

```python
oriNew = ori.exp(-W)
```

The plastic work instead of the factor:

```python
work, b, W = calcTaylor(inv(ori) * eps, sS, plasticWork=True)
```

Eps in the specimen frame: functions of the orientation:

```python
MFun, _, WFun = calcTaylor(eps, sS, bandwidth=32)
```

Taylor's model: every grain takes the macroscopic strain, which its slip systems must
produce. Of the shears that do, the ones of least total shear, the sum of the absolute
shears weighted by the critical resolved shear stresses, are taken, found by a linear
program; that sum divided by the size of the strain is the Taylor factor M. The shears are
the analytic centre of the optimal face, which makes them and the spin unique and symmetric,
as MATLAB's; spinSelection takes another point of the face. The spin is a spinTensor in the
crystal frame, so ori.exp(-W) turns the crystal.

A strain in a crystal frame, one or a list, gives numbers. A strain in the specimen frame
gives the factor as an SO3FunHarmonic and the spin as an SO3VectorFieldHarmonic of the
orientation, fitted on a quadrature grid of the bandwidth (MATLAB's 'SO3Fun' flag);
the shears are None then.

## Input

| | |
|---|---|
| `eps` | strainTensor, in the crystal frame of sS or in the specimen frame |
| `sS` | slipSystem, the systems in the crystal frame with their critical resolved shear stresses, symmetrised; or a TaylorModel prepared from them |

## Output

| | |
|---|---|
| `M` | the Taylor factor, a number or an array of the shape of eps; SO3FunHarmonic for a strain in the specimen frame |
| `b` | the shear of every slip system, an array (..., number of systems); None for a strain in the specimen frame |
| `W` | spinTensor, the plastic spin in the crystal frame; SO3VectorFieldHarmonic for a strain in the specimen frame |

## Keywords

| | default | |
|---|---|---|
| `plasticWork` | `False` | take the plastic work, the shears weighted by the critical resolved shear stresses, instead of the geometric Taylor factor |
| `spinSelection` | `None` | which shears of an optimal face: 'centre' its analytic centre, 'basic' a vertex, 'minimumNorm' the shears of least norm; by default the model's, 'centre' |
| `bandwidth` | `32` | the bandwidth of the functions for a strain in the specimen frame |
| `smoothing` | `0.0` | the halfwidth of a de la Vallee Poussin kernel the spin field is smoothed with; zero for none |

## References

- G. I. Taylor, Plastic strain in metals, J. Inst. Metals 62 (1938) 307-324

## See also

[slipSystem](slipSystem_index_py.html), [strainTensor](strainTensor_index_py.html), [linearProgram](linearProgram_py.html), [TaylorModel](TaylorModel_index_py.html), [TaylorHex](TaylorHex_py.html)

## Used on

[SachsModel](SachsModel_py.html), [TaylorHex](TaylorHex_py.html), [TaylorModel](TaylorModel_py.html), [TextureEvolution](TextureEvolution_py.html), [SO3FunVectorField](SO3FunVectorField_py.html)

MATLAB's [velocityGradientTensor.calcTaylor](velocityGradientTensor.calcTaylor.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/taylor.py#L339">source</a></font>
{% endraw %}
