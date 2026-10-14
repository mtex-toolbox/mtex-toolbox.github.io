---
title: 'EBSD.calcGROD'
sidebar: function_reference_sidebar
permalink: EBSD.calcGROD_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.calcGROD.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the grain reference orientation deviation, mis2mean: the misorientation of every pixel
from the mean orientation of its grain, or from a given reference; MATLAB's calcGROD

## Syntax

<div class="mx-form" markdown="1">

```python
grains = calcGrains(ebsd)
```

The grain ids stored with the map.

</div>

<div class="mx-form" markdown="1">

```python
GROD = calcGROD(ebsd, grains)
```

The deviation from the grain mean.

</div>

<div class="mx-form" markdown="1">

```python
GROD = calcGROD(ebsd, rotRef=oriRef)
```

The deviation from a reference orientation.

</div>

## Description

The reference is taken over the symmetric equivalent closest to the pixel, so the deviation
is the small rotation it is meant to be; its angle is the GROD angle. A pixel without a
grain or not indexed is NaN. The map must hold one phase.

## Input

| `ebsd` | EBSD of one phase, with the grain ids calcGrains stores |

## Keywords

| keyword | default | description |
|---|---|---|
| `grains` | `None` | grain2d whose meanRotation is the reference of its pixels |
| `rotRef` | `None` | rotation, the reference of every pixel or of all, instead of the grains |

## Output

| `GROD` | orientation, the misorientation of every pixel, of the shape of the map |

## See also

[calcGrains](EBSD.calcGrains_py.html), [grainMean](grainMean_py.html), [KAM](KAM_py.html)

## Used on

[EBSDGROD](EBSDGROD_py.html)

MATLAB's [EBSD.calcGROD](EBSD.calcGROD.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/intragranular.py#L525">source</a></font>
{% endraw %}
