---
title: 'isOutlier'
sidebar: function_reference_sidebar
permalink: isOutlier_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the measurements deviating from the mean of their neighbours by more than alpha standard
deviations; the same as pf.isOutlier, MATLAB's isOutlier

## Syntax

Deviating by more than two standard deviations:

```python
ind = isOutlier(pf)
```

By more than three:

```python
ind = isOutlier(pf, alpha=3)
```

The neighbours are the directions within three times the resolution of the grid.

## Input

| | |
|---|---|
| `pf` | PoleFigure |

## Output

| | |
|---|---|
| `ind` | ndarray of booleans, one per measurement |

## Keywords

| | default | |
|---|---|---|
| `alpha` | `2` | the number of standard deviations |

## See also

[PoleFigure.isOutlier](PoleFigure.isOutlier_py.html), [PoleFigure.unique](PoleFigure.unique_py.html)

## Used on

[PoleFigureCorrection](PoleFigureCorrection_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L814">source</a></font>
{% endraw %}
