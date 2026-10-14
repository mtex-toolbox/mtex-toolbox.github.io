---
title: 'PoleFigure.findOutlier'
sidebar: function_reference_sidebar
permalink: PoleFigure.findOutlier_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PoleFigure.findOutlier.html
status: Reference
---
{% raw %}
A method of [PoleFigure](PoleFigure_index_py.html).

the measurements whose intensity deviates from the mean of their neighbours by more than
alpha standard deviations; MATLAB's isOutlier and findOutlier

## Syntax

Deviating by more than two standard deviations:

```python
ind = isOutlier(pf)
```

```python
ind = pf.findOutlier(alpha=3) # by more than three
```

The outliers removed:

```python
pf = pf[~isOutlier(pf)]
```

The neighbours of a direction are the other directions of its pole figure within three
times the resolution of the grid; the standard deviation is that of all intensities of the
pole figure.

## Input

| | |
|---|---|
| `pf` | PoleFigure |

## Output

| | |
|---|---|
| `ind` | ndarray of booleans, one per measurement, the pole figures one after another |

## Keywords

| | default | |
|---|---|---|
| `alpha` | `2` | the number of standard deviations, MATLAB's 'alpha' |

## See also

[PoleFigure.unique](PoleFigure.unique_py.html)

MATLAB's [PoleFigure.findOutlier](PoleFigure.findOutlier.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L483">source</a></font>
{% endraw %}
