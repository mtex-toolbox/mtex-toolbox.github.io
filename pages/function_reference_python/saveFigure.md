---
title: 'saveFigure'
sidebar: function_reference_sidebar
permalink: saveFigure_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: saveFigure.html
status: Reference
---
{% raw %}
the figure written to a graphics file cropped to its content; MATLAB's saveFigure

## Syntax

The current figure:

```python
saveFigure('pf.png')
```

A figure given, as vector graphics:

```python
saveFigure('pf.pdf', fig=mtexFig)
```

Another resolution:

```python
saveFigure('pf.png', dpi=300)
```

The format is that of the extension. A bitmap is written at 1.5 times the screen
resolution, a map at 2.5 times and without smoothing between its cells, so that no colour
is invented between measurements. 'crop' and 'pdf' of MATLAB's TeX tools need nothing here.
Further keywords go to matplotlib's savefig; positional arguments after fig are ignored.
MATLAB's file dialog without a name has no counterpart.

## Input

| | |
|---|---|
| `fname` | the file name |

## Keywords

| | default | |
|---|---|---|
| `fig` | `None` | the mtexFigure or matplotlib figure; the current one by default |

## See also

[mtexFigure.savefig](mtexFigure.savefig_py.html), [mtexFigure.drawNow](mtexFigure.drawNow_py.html)

## Used on

[PlottingExport](PlottingExport_py.html)

MATLAB's [saveFigure](saveFigure.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L735">source</a></font>
{% endraw %}
