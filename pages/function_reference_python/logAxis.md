---
title: 'logAxis'
sidebar: function_reference_sidebar
permalink: logAxis_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: logAxis.html
status: Reference
---
{% raw %}
both axes of a plot logarithmic, a decade of the same length on either

## Syntax

The current axes:

```python
logAxis()
```

The axes given, with their limits:

```python
logAxis(ax, (1, 100), (1, 1000))
```

## Input

| | |
|---|---|
| `ax` | the matplotlib axes; the current one by default |
| `xLimits` | (lo, hi) of the x axis; by default the limits it has |
| `yLimits` | (lo, hi) of the y axis; by default the limits it has |

## Output

| | |
|---|---|
| `ax` | the axes |

## See also

[plotAngleDistribution](plotAngleDistribution_py.html)

## Signature

```python
logAxis(ax=None, xLimits=None, yLimits=None)
```

## Used on

[ShapeParameters](ShapeParameters_py.html)

MATLAB's [logAxis](logAxis.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L773">source</a></font>
{% endraw %}
