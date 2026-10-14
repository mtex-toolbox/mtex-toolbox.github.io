---
title: 'setView'
sidebar: function_reference_sidebar
permalink: setView_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a polar axes turned as the plotting convention says, a 3D axes looking down its out of
screen direction; MATLAB's plottingConvention/setView

## Syntax

<div class="mx-form" markdown="1">

```python
pC.setView()
```

The current axes as pC says.

</div>

<div class="mx-form" markdown="1">

```python
setView('y↓→x', ax=ax)
```

The axes given, a convention by its name.

</div>

<div class="mx-form" markdown="1">

```python
plottingConvention.default.setView(ax=ax)
```

The default convention.

</div>

## Description

A polar axes takes its zero where the convention's east lies and runs from east to north;
a 3D axes is turned so that the convention's out of screen direction points at the viewer.
Any other axes is left as it is.

## Input

| `pC` | plottingConvention, or the name of one, as 'x↑→y'; the default convention when None |

## Keywords

| keyword | default | description |
|---|---|---|
| `ax` | `None` | the matplotlib axes; the axes of the current figure drawn into last by default |

## See also

[plottingConvention](plottingConvention_index_py.html), [polarAxes](polarAxes_py.html), [setCamera](setCamera_py.html)

## Used on

[EllipseBasedParameters](EllipseBasedParameters_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/polarplot.py#L80">source</a></font>
{% endraw %}
