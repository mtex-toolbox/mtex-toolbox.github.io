---
title: 'setColorScale'
sidebar: function_reference_sidebar
permalink: setColorScale_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
logarithmic or linear colours on every plot of the figure

## Syntax

The colours spread over the decades of the range:

```python
setColorScale('log')
```

Linear colours again on a figure given:

```python
setColorScale('linear', fig=mtexFig)
```

## Input

| | |
|---|---|
| `scale` | 'log' or 'linear' |

## Keywords

| | default | |
|---|---|---|
| `fig` | `None` | the mtexFigure; the current one by default |

## See also

[mtexFigure.setColorScale](mtexFigure.setColorScale_py.html), [setColorRange](setColorRange_py.html)

## Used on

[GND](GND_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L821">source</a></font>
{% endraw %}
