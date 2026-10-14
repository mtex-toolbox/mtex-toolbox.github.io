---
title: 'SO3Fun.calcMDF'
sidebar: function_reference_sidebar
permalink: SO3Fun.calcMDF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.calcMDF.html
status: Reference
---
{% raw %}
the uncorrelated misorientation distribution function of one or two ODFs; MATLAB's calcMDF

## Syntax

Of one ODF, with grain exchange symmetry:

```python
mdf = calcMDF(odf)
```

Of two ODFs, at another bandwidth:

```python
mdf = calcMDF(odf1, odf2, bandwidth=16)
```

The density of inv(o1) o2 for independent grains, (inv f1 * f2)(g) = int f1(S g^-1)
f2(S) dS, computed by the convolution of the harmonic expansions; for one ODF the result
has the exchange symmetry of the misorientations within one phase.

## Input

| | |
|---|---|
| `f1` | SO3Fun |
| `f2` | SO3Fun, the second phase; f1 when omitted |

## Output

| | |
|---|---|
| `mdf` | SO3FunHarmonic, from the crystal frame of f1 to that of f2 |

## Keywords

| | default | |
|---|---|---|
| `bandwidth` | `32` | the bandwidth the expansions are truncated to |

## See also

[calcMIndex](SO3Fun.calcMIndex_py.html), [calcAngleDistribution](SO3Fun.calcAngleDistribution_py.html), [calcAxisDistribution](SO3Fun.calcAxisDistribution_py.html), [SO3FunHarmonic.conv](SO3FunHarmonic.conv_py.html)

## Used on

[AngleDistributionFunction](AngleDistributionFunction_py.html), [AxisDistributionFunction](AxisDistributionFunction_py.html), [MisorientationDistributionFunction](MisorientationDistributionFunction_py.html)

MATLAB's [SO3Fun.calcMDF](SO3Fun.calcMDF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L219">source</a></font>
{% endraw %}
