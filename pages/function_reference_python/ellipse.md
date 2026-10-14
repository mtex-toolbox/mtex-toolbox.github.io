---
title: 'ellipse'
sidebar: function_reference_sidebar
permalink: ellipse_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: ellipse.html
status: Reference
---
{% raw %}
an ellipse on the spherical plots of a figure, about a direction and turned as a rotation
says

## Syntax

Semi-axes a and b about rot * z:

```python
ellipse(rot, a, b)
```

Onto the last plot only:

```python
ellipse(rot, a, b, lineColor='b', add2all=False)
```

The centre of the ellipse is rot * z, its semi-axes, a and b in radians, lie along rot * x
and rot * y; the polar distance from the centre is ab / sqrt((b cos rho)^2 + (a sin rho)^2).
A list of rotations, with one a and b or one per rotation, gives several ellipses.

## Input

| | |
|---|---|
| `rot` | rotation, the position and the turn of the ellipse |
| `a` | the semi-axis along rot * x, in radians |
| `b` | the semi-axis along rot * y, in radians |

## Output

| | |
|---|---|
| `h` | the matplotlib lines, one per ellipse and axes |

## Keywords

| | default | |
|---|---|---|
| `add2all` | `True` | draw onto every spherical plot of the figure, else onto the last one |
| `lineColor` | `'k'` | the colour of the line |
| `lineWidth` | `1.5` | the width of the line |
| `edgeAlpha` | `1.0` | the opacity of the line |
| `parent` | `None` | the axes, or a list of them, to draw onto |

## See also

[circle](vector3d.circle_py.html), [plot](S1Grid.plot_py.html), [scatter](quaternion.scatter_py.html), [Annotations](Annotations_py.html)

## Used on

[S2Bingham](S2Bingham_py.html)

MATLAB's [ellipse](ellipse.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L798">source</a></font>
{% endraw %}
