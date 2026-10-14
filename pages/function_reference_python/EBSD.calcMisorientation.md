---
title: 'EBSD.calcMisorientation'
sidebar: function_reference_sidebar
permalink: EBSD.calcMisorientation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.calcMisorientation.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

uncorrelated misorientations: those of random pairs of measurements far enough apart that
they say nothing about one another; MATLAB's calcMisorientation of a map

## Syntax

<div class="mx-form" markdown="1">

```python
mori = calcMisorientation(ebsd['Forsterite'], sampleSize=1000)
```

Within one phase.

</div>

<div class="mx-form" markdown="1">

```python
mori = calcMisorientation(ebsd['Forsterite'], minDistance=100)
```

Pairs at least 100 apart.

</div>

<div class="mx-form" markdown="1">

```python
mori = calcMisorientation(ebsd['Forsterite'], ebsd['Enstatite'])
```

Between two phases.

</div>

## Description

This is the distribution an uncorrelated misorientation distribution is compared against.
Both maps must hold one indexed phase. For orientations o1 of the first map and o2 of the
second the misorientation is inv(o1) * o2, carrying the coordinates of the second crystal
into those of the first. The pairs closer than minDistance are dropped from the sample, so
fewer than sampleSize may come back. MATLAB's second output, the pairs of orientations, is
not returned.

## Input

| `ebsd` | EBSD of one indexed phase |
| `other` | EBSD of one indexed phase, by default the first map |

## Keywords

| keyword | default | description |
|---|---|---|
| `sampleSize` | `100000` | the number of pairs drawn |
| `minDistance` | `None` | the least distance of a pair, in the scan unit; a hundredth of the diagonal of the first map by default |
| `rng` | `None` | the seed or the numpy Generator of the draw |

## Output

| `mori` | orientation from the crystal frame of other to that of ebsd |

## See also

[calcMDF](SO3Fun.calcMDF_py.html), [grainBoundary.misorientation](grainBoundary.misorientation_py.html), [MisorientationDistributionFunction](MisorientationDistributionFunction_py.html)

MATLAB's [EBSD.calcMisorientation](EBSD.calcMisorientation.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L670">source</a></font>
{% endraw %}
