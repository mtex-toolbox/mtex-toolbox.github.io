---
title: 'EBSD.grainMean'
sidebar: function_reference_sidebar
permalink: EBSD.grainMean_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.grainMean.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the average of a property over each grain; MATLAB's grainMean

## Syntax

One value per grain:

```python
meanG = grainMean(ebsd, ebsd.ci, grains)
```

The value of its grain at every pixel:

```python
meanE = grainMean(ebsd, ebsd.ci)
```

The maximum instead of the mean:

```python
maxG = grainMean(ebsd, ebsd.ci, grains, np.max)
```

Only the values above 0.1:

```python
meanG = grainMean(ebsd, ebsd.ci, grains, llim=0.1)
```

The grains are those of the grain ids the map carries, which calcGrains stores with it.
A pixel without a grain and a grain without a value in the range are NaN.

## Input

| | |
|---|---|
| `ebsd` | EBSD with grain ids |
| `prop` | array of a value per pixel, of the shape of the map |
| `grains` | grain2d, for one value per grain in its order; without it one value per pixel |
| `method` | the reduction of the values of a grain, a function of an array |

## Output

| | |
|---|---|
| `meanProp` | array, a value per grain, or one per pixel of the shape of the map |

## Keywords

| | default | |
|---|---|---|
| `ulim` | `inf` | the largest value taken into the average |
| `llim` | `-inf` | the smallest value taken into the average |

## See also

[calcGrains](EBSD.calcGrains_py.html), [calcGROD](calcGROD_py.html), [grain2d.meanOrientation](grain2d.meanOrientation_py.html), [GrainOrientationParameters](GrainOrientationParameters_py.html), [GrainSpatialPlots](GrainSpatialPlots_py.html)

MATLAB's [EBSD.grainMean](EBSD.grainMean.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L565">source</a></font>
{% endraw %}
