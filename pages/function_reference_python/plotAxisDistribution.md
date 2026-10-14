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

Axes of misorientations, in crystal coordinates:

```python
plotAxisDistribution(mori)
```

Their density, smoothed by 10 degrees:

```python
plotAxisDistribution(mori, contourf=True)
```

Axes between orientations, in specimen coordinates:

```python
plotAxisDistribution(ori1, ori2)
```

Random axis distribution:

```python
plotAxisDistribution(cs)
```

Uncorrelated axis distribution of two phases:

```python
plotAxisDistribution(cs1, cs2)
```

Axis distribution of an MDF:

```python
plotAxisDistribution(mdf)
```

A list of misorientations is drawn as its axes, one marker each; with a filled plot
(contourf=True, smooth=True, pcolor=True) as the density of the axes, a kernel density
estimate of halfwidth 10 degrees unless halfwidth says otherwise. An MDF or two frames give
the axis distribution function, drawn in multiples of the random distribution. The axes
are shown in the fundamental sector; other keywords go to the spherical plot (markerSize,
colorRange, ...).

## Input

| | |
|---|---|
| `mori` | misorientation, a list of misorientations |
| `ori1, ori2` | orientation, two lists of orientations of one length |
| `cs, cs1, cs2` | crystalFrame, the phases |
| `mdf` | SO3Fun, a misorientation distribution function |

## Output

| | |
|---|---|
| `h` | the handle of the spherical plot |

## Keywords

| | default | |
|---|---|---|
| `halfwidth` | `None` | the halfwidth of the kernel density estimate of the axes, in radians |
| `weights` | `None` | a weight per misorientation for the density estimate |
| `antipodal` | `False` | treat the axes as antipodal, as for misorientations between grains of one phase whose order does not matter |

## See also

[plotAngleDistribution](plotAngleDistribution_py.html), [calcAxisDistribution](SO3Fun.calcAxisDistribution_py.html), [axis](axis_py.html), [MisorientationDistributionFunction](MisorientationDistributionFunction_py.html), [MisorientationTheory](MisorientationTheory_py.html)

## Used on

[AxisDistributionFunction](AxisDistributionFunction_py.html), [MisorientationDistributionFunction](MisorientationDistributionFunction_py.html), [MisorientationTheory](MisorientationTheory_py.html)

MATLAB's [plotAxisDistribution](plotAxisDistribution.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/distributionplot.py#L125">source</a></font>
{% endraw %}
