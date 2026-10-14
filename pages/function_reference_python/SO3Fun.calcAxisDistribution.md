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
distribution of the uniform distribution, exactly; MATLAB's calcAxisDistribution

## Syntax

<div class="mx-form" markdown="1">

```python
adf = calcAxisDistribution(mdf)
```

The axis distribution.

</div>

<div class="mx-form" markdown="1">

```python
value = calcAxisDistribution(mdf, v)
```

Its values at the axes v.

</div>

<div class="mx-form" markdown="1">

```python
adf = calcAxisDistribution(mdf, minAngle=20*degree, maxAngle=40*degree)
```

Only rotations by 20 to 40 degree.

</div>

<div class="mx-form" markdown="1">

```python
value = calcAxisDistribution(mdf, v, resolution=1*degree)
```

A finer angle quadrature.

</div>

<div class="mx-form" markdown="1">

```python
adf = calcAxisDistribution(cs1, cs2)
```

Of the uniform distribution.

</div>

## Description

By default the rotation angle is integrated over the full range the fundamental region
allows for the axis in question, by a rectangle rule of the step resolution (2.5 degree).
The keywords minAngle and maxAngle restrict that range to a window, which is what the axis
angle sections show; an axis for which the window lies outside the fundamental region
contributes zero. The quadrature keeps its step, so a narrow window is integrated with
few points. The distribution is antipodal for a function with grain exchange.

## Input

| `f` | SO3Fun, or a crystal frame cs1 for the uniform distribution |
| `v` | vector3d, the axes to evaluate at, or the second frame cs2 |

## Keywords

| keyword | default | description |
|---|---|---|
| `bandwidth` | `64` | the bandwidth of the harmonic expansion of adf |

## Output

| `adf` | S2FunHarmonic, or S2FunHandle for the uniform distribution |
| `value` | the values at the axes v |

## See also

[calcAngleDistribution](SO3Fun.calcAngleDistribution_py.html), [calcMDF](SO3Fun.calcMDF_py.html), [axisAngleSections](axisAngleSections_index_py.html)

## Used on

[AxisDistributionFunction](AxisDistributionFunction_py.html), [MisorientationDistributionFunction](MisorientationDistributionFunction_py.html)

MATLAB's [SO3Fun.calcAxisDistribution](SO3Fun.calcAxisDistribution.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L414">source</a></font>
{% endraw %}
