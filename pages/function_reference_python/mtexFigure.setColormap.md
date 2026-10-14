---
title: 'mtexFigure.setColormap'
sidebar: function_reference_sidebar
permalink: mtexFigure.setColormap_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [mtexFigure](mtexFigure_index_py.html).

the colour map of the plots of the figure, or of one axes; MATLAB's mtexColorMap

## Syntax

Every axes, and the plots to come:

```python
mtexFig.setColormap('viridis')
```

One axes only:

```python
mtexFig.setColormap('hot', ax=mtexFig.children[0])
```

A filled contour plot cuts its bands out of the map, so it is drawn again.

## Input

| | |
|---|---|
| `cmap` | a matplotlib colour map or the name of one of matplotlib's; mtexColorMap resolves MTEX's names, as 'LaboTeX', and calls this |

## Keywords

| | default | |
|---|---|---|
| `ax` | `None` | the one axes to recolour; the figure keeps its colour map for the others |

## See also

[mtexColorMap](mtexColorMap_py.html), [mtexFigure.setColorRange](mtexFigure.setColorRange_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L331">source</a></font>
{% endraw %}
