---
title: 'mtexFigure.setColorScale'
sidebar: function_reference_sidebar
permalink: mtexFigure.setColorScale_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [mtexFigure](mtexFigure_index_py.html).

logarithmic or linear colours on every axes of the figure; MATLAB's set(gca, 'ColorScale', 'log')

## Syntax

The colours spread over the decades of the range:

```python
mtexFig.setColorScale('log')
```

Back to linear colours:

```python
mtexFig.setColorScale('linear')
```

A range starting at zero or below starts at a millionth of its top on the logarithmic scale.

## Input

| | |
|---|---|
| `scale` | 'log' or 'linear' |

## See also

[setColorScale](setColorScale_py.html), [mtexFigure.setColorRange](mtexFigure.setColorRange_py.html)

## Signature

```python
mtexFigure.setColorScale(self, scale='linear')
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L310">source</a></font>
{% endraw %}
