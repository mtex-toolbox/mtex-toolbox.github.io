---
title: 'vector3d.circle'
sidebar: function_reference_sidebar
permalink: vector3d.circle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.circle.html
status: Reference
---
{% raw %}
a circle on a spherical plot: the small circle of the opening angle about a direction, the
great circle by default

## Syntax

The great circle perpendicular to n:

```python
circle(n)
```

The small circle 30 degree about n:

```python
circle(n, 30*degree)
```

Onto every spherical plot of the figure:

```python
circle(n, 20*degree, add2all=True, lineColor='r')
```

The circle annotates the spherical plot drawn last, or the one nextAxis chose; draw the
plot first. A circle leaving the chart is broken where it does. Several directions give
several circles.

## Input

| | |
|---|---|
| `v` | vector3d, the centre, one or several |
| `radius` | the opening angle about v in radians, pi/2 for the great circle |

## Output

| | |
|---|---|
| `h` | the matplotlib lines, one per circle and axes |

## Keywords

| | default | |
|---|---|---|
| `add2all` | `False` | draw onto every spherical plot of the figure |
| `lineColor` | `'k'` | the colour of the line |
| `lineWidth` | `1.5` | the width of the line |
| `edgeAlpha` | `1.0` | the opacity of the line |
| `parent` | `None` | the axes, or a list of them, to draw onto |

## See also

[ellipse](ellipse_py.html), [plot](S1Grid.plot_py.html), [scatter](quaternion.scatter_py.html), [text](EBSD.text_py.html), [Annotations](Annotations_py.html)

## Used on

[CrystalOperations](CrystalOperations_py.html), [EBSDAdvancedMaps](EBSDAdvancedMaps_py.html), [EBSDOrientationAnalysis](EBSDOrientationAnalysis_py.html), [Legends](Legends_py.html)

MATLAB's [vector3d.circle](vector3d.circle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/sphericalplot.py#L761">source</a></font>
{% endraw %}
