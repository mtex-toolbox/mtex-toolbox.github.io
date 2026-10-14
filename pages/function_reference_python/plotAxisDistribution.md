---
title: 'plotAxisDistribution'
sidebar: function_reference_sidebar
permalink: plotAxisDistribution_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: plotAxisDistribution.html
status: Reference
---
{% raw %}
the distribution of the misorientation axes, in the fundamental sector of the symmetry
the two frames share

## Syntax

<div class="mx-form" markdown="1">

```python
plotAxisDistribution(mori)
```

Axes of misorientations, in crystal coordinates.

</div>

<div class="mx-form" markdown="1">

```python
plotAxisDistribution(mori, contourf=True)
```

Their density, smoothed by 10 degrees.

</div>

<div class="mx-form" markdown="1">

```python
plotAxisDistribution(ori1, ori2)
```

Axes between orientations, in specimen coordinates.

</div>

<div class="mx-form" markdown="1">

```python
plotAxisDistribution(cs)
```

Random axis distribution.

</div>

<div class="mx-form" markdown="1">

```python
plotAxisDistribution(cs1, cs2)
```

Uncorrelated axis distribution of two phases.

</div>

<div class="mx-form" markdown="1">

```python
plotAxisDistribution(mdf)
```

Axis distribution of an MDF.

</div>

## Description

A list of misorientations is drawn as its axes, one marker each; with a filled plot
(contourf=True, smooth=True, pcolor=True) as the density of the axes, a kernel density
estimate of halfwidth 10 degrees unless halfwidth says otherwise. An MDF or two frames give
the axis distribution function, drawn in multiples of the random distribution. The axes
are shown in the fundamental sector; other keywords go to the spherical plot (markerSize,
colorRange, ...).

## Input

| `mori` | misorientation, a list of misorientations |
| `ori1, ori2` | orientation, two lists of orientations of one length |
| `cs, cs1, cs2` | crystalFrame, the phases |
| `mdf` | SO3Fun, a misorientation distribution function |

## Keywords

| keyword | default | description |
|---|---|---|
| `halfwidth` | `None` | the halfwidth of the kernel density estimate of the axes, in radians |
| `weights` | `None` | a weight per misorientation for the density estimate |
| `antipodal` | `False` | treat the axes as antipodal, as for misorientations between grains of one phase whose order does not matter |

## Output

| `h` | the handle of the spherical plot |

## See also

[plotAngleDistribution](plotAngleDistribution_py.html), [calcAxisDistribution](SO3Fun.calcAxisDistribution_py.html), [axis](axis_py.html), [MisorientationDistributionFunction](MisorientationDistributionFunction_py.html), [MisorientationTheory](MisorientationTheory_py.html)

## Used on

[AxisDistributionFunction](AxisDistributionFunction_py.html), [MisorientationDistributionFunction](MisorientationDistributionFunction_py.html), [MisorientationTheory](MisorientationTheory_py.html)

MATLAB's [plotAxisDistribution](plotAxisDistribution.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/distributionplot.py#L125">source</a></font>
{% endraw %}
