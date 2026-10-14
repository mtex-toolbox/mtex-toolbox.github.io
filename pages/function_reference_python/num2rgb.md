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
rgb = num2rgb(values, 'LaboTeX', N=16)
```

One of 16 colours of a named map.

</div>

<div class="mx-form" markdown="1">

```python
rgb = num2rgb(values, blue2redColorMap(8))
```

One of eight colours of a matrix.

</div>

## Description

The values are scaled to the range and clipped to it, and take one of the N colours a named
map is sampled at, or of the rows of a matrix of colours: the value at the fraction t of the
range the colour ceil(t N), counted from one, the lowest value the first.

## Input

| `values` | an array of numbers |

## Keywords

| keyword | default | description |
|---|---|---|
| `colormap` | `'WhiteJet'` | the name of a colour map, a matplotlib map or an n x 3 matrix of colours |
| `range` | `None` | [lower, upper] limit of the values, by default their minimum and maximum |
| `N` | `255` | the number of colours a named map is sampled at; a matrix has its rows |

## Output

| `rgb` | n x 3 rgb triplets, one row per value |

## See also

[ind2color](ind2color_py.html), [mtexColorMap](mtexColorMap_py.html)

## Used on

[TiltAndTwistBoundaries](TiltAndTwistBoundaries_py.html)

MATLAB's [num2rgb](num2rgb.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/colormaps.py#L170">source</a></font>
{% endraw %}
