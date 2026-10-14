---
title: 'num2rgb'
sidebar: function_reference_sidebar
permalink: num2rgb_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: num2rgb.html
status: Reference
---
{% raw %}
the colours a colour map gives those numbers, MATLAB's num2rgb

## Syntax

<div class="mx-form" markdown="1">

```python
rgb = num2rgb(values)
```

WhiteJet over the extent of the values.

</div>

<div class="mx-form" markdown="1">

```python
rgb = num2rgb(values, 'hot', range=[0, 6])
```

Another map, a fixed range.

</div>

<div class="mx-form" markdown="1">

```python
rgb = num2rgb(values, blue2redColorMap(8))
```

One of eight colours of a matrix.

</div>

## Description

The values are scaled to the range and clipped to it; a map given by name is sampled
continuously, a matrix of colours gives the nearest of its rows (MATLAB's option N, the
number of colours of a named map, is not taken).

## Input

| `values` | an array of numbers |

## Keywords

| keyword | default | description |
|---|---|---|
| `colormap` | `'WhiteJet'` | the name of a colour map, a matplotlib map or an n x 3 matrix of colours |
| `range` | `None` | [lower, upper] limit of the values, by default their minimum and maximum |

## Output

| `rgb` | n x 3 rgb triplets, one row per value |

## See also

[ind2color](ind2color_py.html), [mtexColorMap](mtexColorMap_py.html)

## Used on

[TiltAndTwistBoundaries](TiltAndTwistBoundaries_py.html)

MATLAB's [num2rgb](num2rgb.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/colormaps.py#L166">source</a></font>
{% endraw %}
