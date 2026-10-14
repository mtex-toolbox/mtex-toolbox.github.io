---
title: 'orientationRegion.calcAngleDistribution'
sidebar: function_reference_sidebar
permalink: orientationRegion.calcAngleDistribution_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientationRegion.calcAngleDistribution.html
status: Reference
---
{% raw %}
the distribution of the misorientation angle: of a misorientation density, of a list of
misorientations, or of the uniform density of two crystal frames

## Syntax

The angle distribution of a misorientation density:

```python
density, omega = calcAngleDistribution(mdf)
```

At the angles given:

```python
density, omega = calcAngleDistribution(mdf, omega=np.linspace(0, 60, 31)*degree)
```

A histogram of misorientations:

```python
density, omega = calcAngleDistribution(mori)
```

With the bin edges given:

```python
density, omega = calcAngleDistribution(mori, edges=np.linspace(0, 63, 22)*degree)
```

The uniform distribution of one crystal frame:

```python
ad, omega = calcAngleDistribution(cs)
```

The uniform one of two crystal frames:

```python
ad, omega = calcAngleDistribution(cs, cs2)
```

At the angles given:

```python
ad, omega = calcAngleDistribution(cs, np.linspace(0, 60, 61)*degree)
```

For a crystal frame the distribution of the uniform density is the area of the axis sector
of the fundamental region at each angle times sin^2(omega/2), scaled to mean one over the
angles. For an SO3Fun it is that uniform distribution times the mean of the function over the
axes at each angle: the axes are sampled with a count following sin^2(omega/2) and only the
rotations of minimal angle under the symmetries kept. For misorientations it is a histogram
of the disorientation angles in percent, summing to 100, and omega the centres of the bins.
The angles are in radians and end at the largest angle of the fundamental region; MATLAB's
outputs in this order. The angles may also be given positionally, after the second frame.

## Input

| | |
|---|---|
| `f` | SO3Fun, a misorientation density; orientation, misorientations; or crystalFrame |
| `cs2` | crystalFrame, the second frame of the uniform distribution (positional) |

## Output

| | |
|---|---|
| `density` | ndarray, the values of the distribution |
| `omega` | ndarray, the angles they belong to |

## Keywords

| | default | |
|---|---|---|
| `omega` | `None` | the angles at which the distribution is computed, 200 up to the largest angle by default (SO3Fun and frames) |
| `edges` | `None` | the bin edges of the histogram, by default between 5 and 50 bins up to the largest angle (misorientations) |
| `resolution` | `0.5*degree` | the spacing of the axes sampled at each angle (SO3Fun) |

## See also

[calcAxisDistribution](SO3Fun.calcAxisDistribution_py.html), [calcMDF](SO3Fun.calcMDF_py.html), [calcMisorientation](calcMisorientation_py.html), [plotAngleDistribution](plotAngleDistribution_py.html), [MisorientationDistributionFunction](MisorientationDistributionFunction_py.html)

## Used on

[AngleDistributionFunction](AngleDistributionFunction_py.html)

MATLAB's [orientationRegion.calcAngleDistribution](orientationRegion.calcAngleDistribution.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L256">source</a></font>
{% endraw %}
