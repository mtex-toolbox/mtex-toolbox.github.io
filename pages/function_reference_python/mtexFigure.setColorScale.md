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

<div class="mx-form" markdown="1">

```python
mtexFig.setColorScale('log')
```

The colours spread over the decades of the range.

</div>

<div class="mx-form" markdown="1">

```python
mtexFig.setColorScale('linear')
```

Back to linear colours.

</div>

## Description

A range starting at zero or below starts at a millionth of its top on the logarithmic scale.

## Input

| `scale` | 'log' or 'linear' |

## See also

[setColorScale](setColorScale_py.html), [mtexFigure.setColorRange](mtexFigure.setColorRange_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
mtexFigure.setColorScale(self, scale='linear')
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L313">source</a></font>
{% endraw %}
