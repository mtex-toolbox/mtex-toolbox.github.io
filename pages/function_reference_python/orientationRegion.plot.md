---
title: 'orientationRegion.plot'
sidebar: function_reference_sidebar
permalink: orientationRegion.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientationRegion.plot.html
status: Reference
---
{% raw %}
A method of [orientationRegion](orientationRegion_index_py.html).

a fundamental region of orientation space drawn in axis angle space; MATLAB's
orientationRegion/plot

## Syntax

The region with its surface and edges:

```python
plot(oR)
```

Only the edges, in red:

```python
plot(oR, boundaryColor='r', surface=False)
```

Another surface, without the grid lines:

```python
plot(oR, color='b', alpha=0.5, lines=False)
```

The region is drawn in axis angle space, the coordinates in degrees: its surface, light
and transparent so that orientations inside it show, the parallels and meridians on it
and the edges where two faces meet. Orientations scattered into the held axes afterwards
come in the same coordinates, brought into the region. A new plot fits its axes to the
region; a region reaching the half turn keeps the whole ball. plot3d(oR) is the same.

## Input

| | |
|---|---|
| `oR` | orientationRegion, e.g. fundamentalRegion(cs, ss) |

## Output

| | |
|---|---|
| `h` | the Poly3DCollection of the surface, or the list of the edges' lines when surface=False |

## Keywords

| | default | |
|---|---|---|
| `resolution` | `5*degree` | the spacing of the mesh of the surface, an angle |
| `color` | `(0.8, 0.8, 0.8)` | the colour of the surface |
| `alpha` | `0.25` | the opacity of the surface, 0 transparent to 1 opaque |
| `lines` | `True` | draw the parallels and meridians on the surface |
| `lineColor` | `'k'` | the colour of the parallels and meridians |
| `boundaryColor` | `'k'` | the colour of the edges of the region |
| `surface` | `True` | draw the surface; False draws the edges alone |

## See also

[fundamentalRegion](fundamentalRegion_py.html), [orientation.scatter](orientation.scatter_py.html), [plot3d](S2Fun.plot3d_py.html), [OrientationFundamentalRegion](OrientationFundamentalRegion_py.html), [OrientationVisualization3d](OrientationVisualization3d_py.html)

MATLAB's [orientationRegion.plot](orientationRegion.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spaceplot.py#L495">source</a></font>
{% endraw %}
