---
title: 'The class mtexFigure'
sidebar: function_reference_sidebar
permalink: mtexFigure_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mtexFigure_index.html
status: Reference
---
{% raw %}
a figure of MTEX plots: equally sized axes in a grid, with colour bars and legends that
follow them

## Syntax

A new figure:

```python
fig = mtexFigure()
```

Laid out for 4 axes, large:

```python
fig = mtexFigure(4, figSize='large')
```

One row of three axes:

```python
fig = mtexFigure(layout=(1, 3))
```

6 axes in two columns:

```python
fig = mtexFigure(6, columns=2)
```

The next axes of the layout:

```python
ax = fig.nextAxis()
```

The axes made so far:

```python
fig.children
```

A colour bar per axes, or one for all:

```python
fig.colorbar()
```

The figure becomes the current one, which gcm returns and into which the plots of MTEX
draw; newMtexFigure makes one the same way. Without layout or columns the n axes are laid
out in the grid nearest to a slightly wide picture. The layout grows when more axes are
asked for than it holds, and the figure grows with it, so that the axes keep their size.
The spacing between the axes is matplotlib's constrained layout; MATLAB's
innerPlotSpacing and outerPlotSpacing are taken and have no effect.

## Input

| | |
|---|---|
| `n` | the number of axes the layout is made for |

## Output

| | |
|---|---|
| `fig` | mtexFigure, with fig.fig the matplotlib figure and fig.children its axes |

## Keywords

| | default | |
|---|---|---|
| `figSize` |  | 'tiny', 'small', 'medium', 'normal', 'large', 'huge', or (width, height) in inches |
| `hold` |  | start with hold on: the next plot draws into the last axes |
| `figure` |  | a matplotlib figure to adopt, with its axes, instead of a new one; one embedded in a window keeps its size |
| `columns` |  | the number of columns of the layout |
| `layout` |  | (rows, columns) of the layout |
| `innerPlotSpacing` |  | MATLAB's spacing between the axes, without effect |
| `outerPlotSpacing` |  | MATLAB's margin around the figure, without effect |
| `marginx` |  | the space left and right of every axes, in pixels at 96 to the inch |
| `marginy` |  | the space above and below every axes, in pixels at 96 to the inch |

## See also

[newMtexFigure](newMtexFigure_py.html), [nextAxis](nextAxis_py.html), [gcm](gcm_py.html), [hold](hold_py.html), [mtexColorbar](mtexColorbar_py.html), [Multiplot](Multiplot_py.html)

## Members

| | |
|---|---|
| [colorbar](mtexFigure.colorbar_py.html) | mtexColorbar: a bar per axes, or one for all when they share a range and a colour map |
| [currentAxes](mtexFigure.currentAxes_py.html) | the last axes of the figure, a new one when there is none |
| [drawNow](mtexFigure.drawNow_py.html) | drawNow(figSize='normal'): the figure resized to a named size of its layout, then drawn |
| [gca](mtexFigure.gca_py.html) | MATLAB's mtexFig.gca: the axes drawn into last |
| [mtexFigure](mtexFigure.mtexFigure_py.html) | a figure of MTEX plots: equally sized axes in a grid, with colour bars and legends that follow them |
| [nextAxis](mtexFigure.nextAxis_py.html) | a new axes in the next cell of the layout, the layout and the figure grown when it is full |
| [savefig](mtexFigure.savefig_py.html) | a PNG is written at zlib level 1, not Pillow's 6: the same pixels, a file about a tenth larger, in half the time a large map took, most of which was the compression |
| [setColormap](mtexFigure.setColormap_py.html) | a filled contour plot cuts its bands out of the map, so it is drawn again |
| [setColorRange](mtexFigure.setColorRange_py.html) | one colour range over every axes ('equal'), each axes its own ('tight'), or one given as (lo, hi) |
| [setColorScale](mtexFigure.setColorScale_py.html) | MATLAB's set(gca, 'ColorScale', 'log'): the colours spread over the decades of the range |
| [show](mtexFigure.show_py.html) | shows the figures, matplotlib's show |
| [takeAxis](mtexFigure.takeAxis_py.html) | the axes the next plot draws into: the pending one, else a new one |

## Used on

[CrystalSymmetries](CrystalSymmetries_py.html)

MATLAB's [mtexFigure_index](mtexFigure_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L54">source</a></font>
{% endraw %}
