---
title: 'shape2d.plot'
sidebar: function_reference_sidebar
permalink: shape2d.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: shape2d.plot.html
status: Reference
---
{% raw %}
A method of [shape2d](shape2d_index_py.html).

plot of a two dimensional shape, its outline in polar coordinates about its centre;
MATLAB's shape2d/plot

## Syntax

The outline about its centre:

```python
h = plot(shape)
```

Scaled to area 1, without grid and labels:

```python
h = plot(shape, normalize=True, plain=True)
```

The outline is shifted to the mean of its vertices and drawn as a closed polar line, the
angle measured in the plane of the map as its frame's plotting convention shows it.
Further keywords go to matplotlib's plot.

## Input

| | |
|---|---|
| `shape` | shape2d, a closed outline, as characteristicShape returns |

## Output

| | |
|---|---|
| `h` | matplotlib Line2D, the outline drawn |

## Keywords

| | default | |
|---|---|---|
| `lineWidth` | `1.0` | the width of the line in points |
| `displayName` | `None` | the name of the line in a legend |
| `color` | `None` | the colour of the line, a name or an RGB triple |
| `normalize` | `False` | scale the shape to area 1, for comparing the form of shapes of different size |
| `plain` | `False` | leave out the polar grid and the radial labels |
| `how2plot` | `None` | the plotting convention; by default that of the shape's frame |

## See also

[characteristicShape](characteristicShape_py.html), [shape2d](shape2d_index_py.html), [ProjectionBasedParameters](ProjectionBasedParameters_py.html)

MATLAB's [shape2d.plot](shape2d.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/polarplot.py#L314">source</a></font>
{% endraw %}
