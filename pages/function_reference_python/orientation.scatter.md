---
title: 'orientation.scatter'
sidebar: function_reference_sidebar
permalink: orientation.scatter_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.scatter.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

orientations as points in a three dimensional space of orientations; MATLAB's
orientation/scatter

## Syntax

In Euler angle space, in the fundamental region:

```python
scatter(ori)
```

In axis angle space, the region around them:

```python
scatter(ori, axisAngle=True)
```

In Rodrigues space:

```python
scatter(ori, Rodrigues=True)
```

Coloured by a value each:

```python
scatter(ori, ori.angle(), axisAngle=True, colorbar=True)
```

The orientations as they are:

```python
scatter(ori, ignoreFundamentalRegion=True)
```

Every orientation, not a sample:

```python
scatter(ori, all=True)
```

Orientations are brought into the fundamental region of their symmetries and drawn in
Euler angle space by default, misorientations and bare rotations in axis angle space;
into held axes they go in the coordinates those already have. In axis angle space the
boundary of the fundamental region is drawn behind them, for a bare rotation the ball of
all rotations. The space can also be named by a positional string, 'axisAngle',
'Rodrigues', 'Euler' or 'Bunge', as MATLAB names it.

A list longer than 2000 orientations is drawn as 2000 of them taken at random, as MATLAB
does; NaN orientations are left out with their values. A further set into held axes
takes the next colour as open circles. plot3d(ori) is the same.

## Input

| | |
|---|---|
| `ori` | orientation or rotation |
| `data` | one value per orientation, or an (n, 3) array of RGB colours |

## Output

| | |
|---|---|
| `h` | the matplotlib Path3DCollection of the markers |

## Keywords

| | default | |
|---|---|---|
| `axisAngle` | `False` | draw in axis angle space |
| `Rodrigues` | `False` | draw in Rodrigues space |
| `Euler` | `False` | draw in Euler angle space |
| `region` | `True` | draw the boundary of the fundamental region, or the ball, in axis angle space |
| `fundamentalRegion` | `True` | bring the orientations into the fundamental region |
| `ignoreFundamentalRegion` | `False` | keep the orientations as they are, the axes fitted to them |
| `complete` | `False` | keep the orientations as they are in the whole space, without the region |
| `points` | `None` | the number of orientations drawn, taken at random |
| `markerSize` | `5` | the size of the markers in points |
| `color` | `(0.0, 0.447, 0.741)` | the colour of the markers without data; by default the next colour of the order, as open circles |
| `colormap` | `'viridis'` | the colour map of the data |
| `colorRange` | `None` | (lo, hi), the values of the ends of the colour map; by default the range of the data |
| `colorbar` | `False` | add a colour bar of the data |
| `all` | `False` | draw every orientation, however many |

## See also

[orientationRegion.plot](orientationRegion.plot_py.html), [quiver3d](S2AxisField.quiver3_py.html), [plotPF](SO3Fun.plotPDF_py.html), [plotIPF](SO3Fun.plotIPDF_py.html), [plotSection](S2Fun.plotSection_py.html), [OrientationVisualization3d](OrientationVisualization3d_py.html), [RotationPlotting](RotationPlotting_py.html)

MATLAB's [orientation.scatter](orientation.scatter.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spaceplot.py#L626">source</a></font>
{% endraw %}
