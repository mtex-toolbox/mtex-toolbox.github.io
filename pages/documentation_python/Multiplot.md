---
title: 'Align Plots in a Grid'
sidebar: documentation_sidebar
permalink: Multiplot_py.html
folder: documentation
toc: false
search: exclude
lang: python
counterpart: Multiplot.html
status: Checked
---
{% raw %}
<font size="2"><a href="python_scripts/Multiplot.py" download>download as script</a> · <a href="https://github.com/mtex-toolbox/pymtex/blob/main/docs/pages/Plotting/Multiplot.py">edit page</a></font>

<!--introduction-->

MTEX manages multiple axes through [mtexFigure](mtexFigure.mtexFigure.html).
It keeps their sizes and spacing consistent. It also
coordinates figure-wide tools such as colour ranges and colorbars.

Commands such as `plotPF` over several lattice planes, or `plot` of an
ODF in sections, create this kind of figure automatically. To build one
by hand, `newMtexFigure` creates the figure and its layout. The two
entries of `layout` are the number of rows and columns.

```python
from mtex import *

mtexFig = newMtexFigure(layout=[2, 3], figSize='normal')
plottingConvention.default('y↑→x')
plot(vector3d(1, 1, 1), upper=True, markerSize=8)
```

<center class="mtex-figure"><img class="inline" src="figures/python/Multiplot-1.png"></center>

The first direction occupies the upper-left position of the fixed grid.

## Fill the axes in sequence

`nextAxis` without an argument selects the next free axis. The fixed
layout fills from left to right and then from top to bottom.

```python
nextAxis()

plot(vector3d(-1, 1, 1), upper=True, markerSize=8)
```

<center class="mtex-figure"><img class="inline" src="figures/python/Multiplot-2.png"></center>

The second direction appears beside the first one in the upper row.

## Select an axis by row and column

Two arguments select a particular row and column. This makes it possible
to fill the layout in any order and to leave positions empty.

```python
nextAxis(2, 3)

plot(vector3d.rand(200), upper=True)
```

<center class="mtex-figure"><img class="inline" src="figures/python/Multiplot-3.png"></center>

The cloud appears in the lower-right position. The unused upper-right
and lower-middle positions remain empty.

## Return to an occupied axis

Calling `nextAxis` for an occupied position selects that axis again, but
selecting is not the same as overlaying. With the hold state off, the next
plot command starts a fresh layout and discards the whole gallery rather
than repainting one cell. Use `hold(True)` to draw into
the selected axis and keep the arrangement.

```python
nextAxis(2, 3)

hold(True)
plot(vector3d(1, -1, 1), upper=True, markerSize=8)
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/Multiplot-4.png"></center>

The single direction now sits on top of the random cloud, and the 2-by-3
arrangement is unchanged.
Keep `upper` when revisiting an upper-hemisphere axis. A full-sphere plot
needs separate upper- and lower-hemisphere axes. It therefore changes the
arrangement rather than converting this one axis in place.

## Mix different kinds of plot

The axes need not contain the same kind of object. Here the lower-left
axis shows the symmetry elements of a cubic crystal beside spherical
plots of directions. It needs `hold(True)` for the same reason as above.

```python
nextAxis(2, 1)

hold(True)
plot(crystalFrame('432'))
hold(False)
```

<center class="mtex-figure"><img class="inline" src="figures/python/Multiplot-5.png"></center>

Across the staged figures, every occupied axis keeps the same size while
the unused grid positions remain blank. The last addition also shows that
a symmetry plot can use the same layout as spherical direction plots.
See [Spherical Projections](SphericalProjections_py.html) for the hemisphere
and projection choices used by the spherical axes.

## Figure-wide controls

An `mtexFigure` makes shared controls possible, but it does not make
independent data ranges equal automatically. When coloured panels show
comparable quantities, set one range after drawing all panels and then
add the colorbar:

    setColorRange('equal')
    mtexColorbar()

[Color Mapping](ColorMaps_py.html) explains when a common range is required.
[Annotations](Annotations_py.html) covers colorbars and other figure-wide
additions.
The figure manager also preserves consistent axis sizes after a resize.
It provides the cropping used by [saveFigure](PlottingExport_py.html).

Use [Combined Plots](CombinedPlots_py.html) when the goal is to overlay data.
For unrelated matplotlib axes, use `plt.subplot` or a `GridSpec` instead
of an `mtexFigure`.

## Further reading

Wong, B. [Layout](https://doi.org/10.1038/nmeth.1711). Nature Methods 8,
783 (2011). This short article explains how grids and visual order guide
a reader through a multi-panel figure.

See the matplotlib
[GridSpec documentation](https://matplotlib.org/stable/api/_as_gen/matplotlib.gridspec.GridSpec.html).
It describes matplotlib's general-purpose counterpart for arranging ordinary
axes.
{% endraw %}
