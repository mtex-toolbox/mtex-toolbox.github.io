---
title: 'plotEllipse'
sidebar: function_reference_sidebar
permalink: plotEllipse_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: plotEllipse.html
status: Reference
---
{% raw %}
ellipses drawn into the map that is held, one per centre; MATLAB's plotEllipse

## Syntax

The ellipses of the grains:

```python
plotEllipse(grains.centroid, a, b)
```

In red, thicker:

```python
plotEllipse(grains.centroid, a, b, lineColor='r', lineWidth=2)
```

The ellipse about c with the half axes a and b is c + a cos t + b sin t, so a and b are
vectors, for instance the principal components of the grains. The map is plotted first and
held; the ellipses are drawn over it.

## Input

| | |
|---|---|
| `c` | vector3d, the centres |
| `a` | vector3d, the first half axes |
| `b` | vector3d, the second half axes |

## Output

| | |
|---|---|
| `h` | the LineCollection of the ellipses |

## Keywords

| | default | |
|---|---|---|
| `lineColor` | `'k'` | the colour of the lines, a name or an RGB triple |
| `lineWidth` | `1.0` | the width of the lines |
| `displayName` | `None` | the name of the ellipses in the legend |

## See also

[grain2d.principalComponents](grain2d.principalComponents_py.html), [grain2d.fitEllipse](grain2d.fitEllipse_py.html), [plot](S1Grid.plot_py.html), [EllipseBasedParameters](EllipseBasedParameters_py.html)

## Used on

[EllipseBasedParameters](EllipseBasedParameters_py.html)

MATLAB's [plotEllipse](plotEllipse.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/grainplots.py#L108">source</a></font>
{% endraw %}
