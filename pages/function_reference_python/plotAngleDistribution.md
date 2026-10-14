---
title: 'plotAngleDistribution'
sidebar: function_reference_sidebar
permalink: plotAngleDistribution_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: plotAngleDistribution.html
status: Reference
---
{% raw %}
the distribution of the misorientation angles: a histogram of a list of
misorientations, a curve of a misorientation distribution function or of two random phases

## Syntax

<div class="mx-form" markdown="1">

```python
plotAngleDistribution(gB.misorientation)
```

Histogram of boundary misorientations.

</div>

<div class="mx-form" markdown="1">

```python
plotAngleDistribution(mori, resolution=2*degree)
```

Narrower bins.

</div>

<div class="mx-form" markdown="1">

```python
plotAngleDistribution(mdf)
```

Angle distribution of an MDF.

</div>

<div class="mx-form" markdown="1">

```python
plotAngleDistribution(cs1, cs2)
```

Uncorrelated angle distribution of two phases.

</div>

<div class="mx-form" markdown="1">

```python
plotAngleDistribution(cs1, cs1, displayName='uncorrelated')
```

With a legend entry.

</div>

## Description

A list of misorientations is drawn as bars, the percentage of the misorientations in each
bin; the bins run from 0 to the largest misorientation angle the two symmetries allow, or
to the largest angle present when it is below half of that. A misorientation distribution
function, or the distribution of uncorrelated orientations of two frames, is drawn as a
curve, in multiples of the random distribution. Drawn into held axes holding a histogram,
a list takes the same bins and a curve is scaled to percent of a bin, so that the two
compare; each new bar set or curve takes the next of MTEX's colours. Other keywords
(color, lineWidth, ...) go to matplotlib's bar or plot.

## Input

| `mori` | misorientation, a list of misorientations |
| `mdf` | SO3Fun, a misorientation distribution function |
| `cs1, cs2` | crystalFrame, the two phases |

## Keywords

| keyword | default | description |
|---|---|---|
| `figSize` | `None` | the size of a new figure, 'small', 'normal', 'large', ... |
| `resolution` | `5*degree` | the width of the bins, in radians |
| `numBins` | `None` | the number of bin edges instead of the resolution |
| `percent` | `False` | draw a curve in percent instead of multiples of the random distribution |
| `displayName` | `None` | the name of the bars or the curve in a legend |

## Output

| `h` | the bar container of the histogram, or the line of the curve |

## See also

[plotAxisDistribution](plotAxisDistribution_py.html), [calcAngleDistribution](SO3Fun.calcAngleDistribution_py.html), [MisorientationDistributionFunction](MisorientationDistributionFunction_py.html), [MisorientationTheory](MisorientationTheory_py.html)

## Used on

[AngleDistributionFunction](AngleDistributionFunction_py.html), [MisorientationDistributionFunction](MisorientationDistributionFunction_py.html), [MisorientationTheory](MisorientationTheory_py.html)

MATLAB's [plotAngleDistribution](plotAngleDistribution.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/distributionplot.py#L42">source</a></font>
{% endraw %}
