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
the misorientation distribution of two ODFs, the density of inv(o1) o2 for independent
grains, (inv f1 * f2)(g) = int f1(S g^-1) f2(S) dS, with exchange symmetry for one ODF

## Syntax

```python
calcMDF(f1, f2=None, bandwidth=32)
```

## Used on

[AngleDistributionFunction](AngleDistributionFunction_py.html), [AxisDistributionFunction](AxisDistributionFunction_py.html), [MisorientationDistributionFunction](MisorientationDistributionFunction_py.html)

MATLAB's [SO3Fun.calcMDF](SO3Fun.calcMDF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L178">source</a></font>
{% endraw %}
