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
a figure of MTEX plots

```python
mtexFigure()              a new figure
mtexFigure(n)             a new figure laid out for n axes
fig.nextAxis()            the next axes of the layout
fig.children              the axes made so far
fig.colorbar()            a colour bar per axes, or one when ranges and colour maps agree
```

## Members

| | |
|---|---|
| [colorbar](mtexFigure.colorbar_py.html) | mtexColorbar: a bar per axes, or one for all when they share a range and a colour map |
| [currentAxes](mtexFigure.currentAxes_py.html) | the last axes of the figure, a new one when there is none |
| [drawNow](mtexFigure.drawNow_py.html) | drawNow(figSize='normal'): the figure resized to a named size of its layout, then drawn |
| [gca](mtexFigure.gca_py.html) | MATLAB's mtexFig.gca: the axes drawn into last |
| [mtexFigure](mtexFigure.mtexFigure_py.html) | a figure of MTEX plots |
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
