---
title: 'SO3Fun.calcAngleDistribution'
sidebar: function_reference_sidebar
permalink: SO3Fun.calcAngleDistribution_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.calcAngleDistribution.html
status: Reference
---
{% raw %}
the distribution of the misorientation angle, MATLAB's order (density, omega):

```python
calcAngleDistribution(cs1, cs2)   the uniform one, the area of the axis sector at each
                                  angle times sin^2(omega/2), with mean one over the angles
calcAngleDistribution(mori)       a histogram of the disorientation angles in percent
calcAngleDistribution(f)          the uniform one times the mean of f over the axes at each
                                  angle, found by sampling the axes with a count following
                                  sin^2(omega/2) and keeping the rotations of minimal angle
```

## Syntax

```python
calcAngleDistribution(f, *args, omega=None, edges=None, resolution=0.5*degree)
```

## Used on

[AngleDistributionFunction](AngleDistributionFunction_py.html)

MATLAB's [SO3Fun.calcAngleDistribution](SO3Fun.calcAngleDistribution.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/characteristics.py#L179">source</a></font>
{% endraw %}
