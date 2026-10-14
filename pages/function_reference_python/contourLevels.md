---
title: 'contourLevels'
sidebar: function_reference_sidebar
permalink: contourLevels_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
n levels between the extremes, logarithmic on request: the levels of a contour plot

## Syntax

Ten levels from 0 to 4:

```python
levels = contourLevels(0, 4)
```

Five levels equally spaced on a log scale:

```python
levels = contourLevels(1, 100, 5, log=True)
```

A range of no width is widened a little, so that the levels still differ; a logarithmic
spacing needs a positive lower end and is linear otherwise.

## Input

| | |
|---|---|
| `lo, hi` | the lowest and the highest level |

## Output

| | |
|---|---|
| `levels` | an array of n levels |

## Keywords

| | default | |
|---|---|---|
| `n` | `10` | the number of levels |
| `log` | `False` | equal ratios instead of equal differences between the levels |

## See also

[contour](S2Fun.contour_py.html), [contourf](S2Fun.contourf_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/colormaps.py#L140">source</a></font>
{% endraw %}
