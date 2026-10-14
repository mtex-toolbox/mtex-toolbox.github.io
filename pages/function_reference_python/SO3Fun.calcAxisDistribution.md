---
title: 'SO3Fun.calcAxisDistribution'
sidebar: function_reference_sidebar
permalink: SO3Fun.calcAxisDistribution_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.calcAxisDistribution.html
status: Reference
---
{% raw %}
the axis distribution of an SO(3) function, an S2 function of the rotation axes symmetric under
the rotations the two frames share; with v its values at the axes v; for two frames the axis
distribution of the uniform distribution, exactly

## Syntax

```python
calcAxisDistribution(f, v=None, *args, bandwidth=64, **kwargs)
```

```python
adf = calcAxisDistribution(odf)
value = calcAxisDistribution(odf, v)
adf = calcAxisDistribution(odf, minAngle=20*degree, maxAngle=40*degree)
adf = calcAxisDistribution(cs1, cs2)
```

## Used on

[AxisDistributionFunction](AxisDistributionFunction_py.html), [MisorientationDistributionFunction](MisorientationDistributionFunction_py.html)

MATLAB's [SO3Fun.calcAxisDistribution](SO3Fun.calcAxisDistribution.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L285">source</a></font>
{% endraw %}
