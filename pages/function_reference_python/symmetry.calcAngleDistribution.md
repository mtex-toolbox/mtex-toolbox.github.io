---
title: 'symmetry.calcAngleDistribution'
sidebar: function_reference_sidebar
permalink: symmetry.calcAngleDistribution_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: symmetry.calcAngleDistribution.html
status: Reference
---
{% raw %}
the distribution of the misorientation angle: of a misorientation density, of a list of
misorientations, or of the uniform density of two crystal frames

## Syntax

<div class="mx-form" markdown="1">

```python
density, omega = calcAngleDistribution(mdf)
```

The angle distribution of a misorientation density.

</div>

<div class="mx-form" markdown="1">

```python
density, omega = calcAngleDistribution(mdf, omega=np.linspace(0, 60, 31)*degree)
```

At the angles given.

</div>

<div class="mx-form" markdown="1">

```python
density, omega = calcAngleDistribution(mori)
```

A histogram of misorientations.

</div>

<div class="mx-form" markdown="1">

```python
density, omega = calcAngleDistribution(mori, edges=np.linspace(0, 63, 22)*degree)
```

With the bin edges given.

</div>

<div class="mx-form" markdown="1">

```python
ad, omega = calcAngleDistribution(cs)
```

The uniform distribution of one crystal frame.

</div>

<div class="mx-form" markdown="1">

```python
ad, omega = calcAngleDistribution(cs, cs2)
```

The uniform one of two crystal frames.

</div>

<div class="mx-form" markdown="1">

```python
ad, omega = calcAngleDistribution(cs, np.linspace(0, 60, 61)*degree)
```

At the angles given.

</div>

## Description

The result depends on the input:

- a crystal frame, or two: the distribution of the uniform density, the area of the axis
sector of the fundamental region at each angle times sin^2(omega/2), scaled to mean one
over the angles.
- an SO3Fun: that uniform distribution times the mean of the function over the axes at each
angle, scaled by the same factor, so that a uniform density gives the uniform distribution.
- misorientations: a histogram of the disorientation angles in percent, summing to 100,
with omega the centres of the bins.

The angles are in radians and end at the largest angle of the fundamental region; angles
given beyond it are dropped. They may also be given positionally, after the second frame.
MATLAB returns the same two outputs in this order.

## Input

| `f` | SO3Fun, a misorientation density; orientation, misorientations; or crystalFrame |
| `cs2` | crystalFrame, the second frame of the uniform distribution (positional) |

## Keywords

| keyword | default | description |
|---|---|---|
| `omega` | `None` | the angles at which the distribution is computed, 200 up to the largest angle by default (SO3Fun and frames) |
| `edges` | `None` | the bin edges of the histogram, by default between 4 and 49 bins up to the largest angle, one per 20 misorientations (misorientations) |
| `resolution` | `0.5*degree` | the spacing of the axes sampled at each angle (SO3Fun) |

## Output

| `density` | ndarray, the values of the distribution |
| `omega` | ndarray, the angles they belong to |

## See also

[calcAxisDistribution](SO3Fun.calcAxisDistribution_py.html), [calcMDF](SO3Fun.calcMDF_py.html), [calcMisorientation](calcMisorientation_py.html), [plotAngleDistribution](plotAngleDistribution_py.html), [MisorientationDistributionFunction](MisorientationDistributionFunction_py.html)

## Used on

[AngleDistributionFunction](AngleDistributionFunction_py.html)

MATLAB's [symmetry.calcAngleDistribution](symmetry.calcAngleDistribution.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L265">source</a></font>
{% endraw %}
