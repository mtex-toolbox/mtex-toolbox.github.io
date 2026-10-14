---
title: 'mtexFigure.mtexFigure'
sidebar: function_reference_sidebar
permalink: mtexFigure.mtexFigure_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mtexFigure.mtexFigure.html
status: Reference
---
{% raw %}
a figure of MTEX plots: equally sized axes in a grid, with colour bars and legends that
follow them

## Syntax

<div class="mx-form" markdown="1">

```python
fig = mtexFigure()
```

A new figure.

</div>

<div class="mx-form" markdown="1">

```python
fig = mtexFigure(4, figSize='large')
```

Laid out for 4 axes, large.

</div>

<div class="mx-form" markdown="1">

```python
fig = mtexFigure(layout=(1, 3))
```

One row of three axes.

</div>

<div class="mx-form" markdown="1">

```python
fig = mtexFigure(6, columns=2)
```

6 axes in two columns.

</div>

<div class="mx-form" markdown="1">

```python
ax = fig.nextAxis()
```

The next axes of the layout.

</div>

<div class="mx-form" markdown="1">

```python
fig.children
```

The axes made so far.

</div>

<div class="mx-form" markdown="1">

```python
fig.colorbar()
```

A colour bar per axes, or one for all.

</div>

## Description

The figure becomes the current one, which gcm returns and into which the plots of MTEX
draw; newMtexFigure makes one the same way. Without layout or columns the n axes are laid
out in the grid nearest to a slightly wide picture. The layout grows when more axes are
asked for than it holds, and the figure grows with it, so that the axes keep their size.
The spacing between the axes is matplotlib's constrained layout, which makes room for
titles, labels and colour bars; innerPlotSpacing sets the gap between neighbouring axes and
outerPlotSpacing the margin around them all, at least half that gap, in pixels at 96 to
the inch, as MATLAB's.

## Input

| `n` | the number of axes the layout is made for |

## Keywords

| keyword | default | description |
|---|---|---|
| `figSize` | `None` | 'tiny', 'small', 'medium', 'normal', 'large', 'huge', or (width, height) in inches |
| `hold` | `False` | start with hold on: the next plot draws into the last axes |
| `figure` | `None` | a matplotlib figure to adopt, with its axes, instead of a new one; one embedded in a window keeps its size |
| `columns` | `None` | the number of columns of the layout |
| `layout` | `None` | (rows, columns) of the layout |
| `innerPlotSpacing` | `None` | the gap between neighbouring axes, in pixels at 96 to the inch |
| `outerPlotSpacing` | `None` | the margin around the axes, in pixels at 96 to the inch |
| `marginx` | `None` | the space left and right of every axes, in pixels at 96 to the inch |
| `marginy` | `None` | the space above and below every axes, in pixels at 96 to the inch |

## Output

| `fig` | mtexFigure, with fig.fig the matplotlib figure and fig.children its axes |

## See also

[newMtexFigure](newMtexFigure_py.html), [nextAxis](nextAxis_py.html), [gcm](gcm_py.html), [hold](hold_py.html), [mtexColorbar](mtexColorbar_py.html), [Multiplot](Multiplot_py.html)

## Used on

[CrystalSymmetries](CrystalSymmetries_py.html)

MATLAB's [mtexFigure.mtexFigure](mtexFigure.mtexFigure.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L71">source</a></font>
{% endraw %}
