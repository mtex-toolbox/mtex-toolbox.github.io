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

<div class="mx-form" markdown="1">

```python
logAxis()
```

The current axes.

</div>

<div class="mx-form" markdown="1">

```python
logAxis(ax, (1, 100), (1, 1000))
```

The axes given, with their limits.

</div>

## Input

| `ax` | the matplotlib axes; the current one by default |
| `xLimits` | (lo, hi) of the x axis; by default the limits it has |
| `yLimits` | (lo, hi) of the y axis; by default the limits it has |

## Output

| `ax` | the axes |

## See also

[plotAngleDistribution](plotAngleDistribution_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
logAxis(ax=None, xLimits=None, yLimits=None)
```

</div>

## Used on

[ShapeParameters](ShapeParameters_py.html)

MATLAB's [logAxis](logAxis.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/mtexfigure.py#L782">source</a></font>
{% endraw %}
