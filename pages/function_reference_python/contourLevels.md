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

<div class="mx-form" markdown="1">

```python
levels = contourLevels(0, 4)
```

Ten levels from 0 to 4.

</div>

<div class="mx-form" markdown="1">

```python
levels = contourLevels(1, 100, 5, log=True)
```

Five levels equally spaced on a log scale.

</div>

## Description

A range of no width is widened a little, so that the levels still differ; a logarithmic
spacing needs a positive lower end and is linear otherwise.

## Input

| `lo, hi` | the lowest and the highest level |

## Keywords

| keyword | default | description |
|---|---|---|
| `n` | `10` | the number of levels |
| `log` | `False` | equal ratios instead of equal differences between the levels |

## Output

| `levels` | an array of n levels |

## See also

[contour](S2Fun.contour_py.html), [contourf](S2Fun.contourf_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/colormaps.py#L144">source</a></font>
{% endraw %}
