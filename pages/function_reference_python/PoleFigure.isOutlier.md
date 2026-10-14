---
title: 'PoleFigure.isOutlier'
sidebar: function_reference_sidebar
permalink: PoleFigure.isOutlier_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PoleFigure.isOutlier.html
status: Reference
---
{% raw %}
A method of [PoleFigure](PoleFigure_index_py.html).

the measurements whose intensity deviates from the mean of their neighbours by more than
alpha standard deviations; MATLAB's isOutlier and findOutlier

## Syntax

<div class="mx-form" markdown="1">

```python
ind = isOutlier(pf)
```

Deviating by more than two standard deviations.

</div>

<div class="mx-form" markdown="1">

```python
ind = pf.findOutlier(alpha=3) # by more than three
```

</div>

<div class="mx-form" markdown="1">

```python
pf = pf[~isOutlier(pf)]
```

The outliers removed.

</div>

## Description

The neighbours of a direction are the other directions of its pole figure within three
times the resolution of the grid; the standard deviation is that of all intensities of the
pole figure.

## Input

| `pf` | PoleFigure |

## Keywords

| keyword | default | description |
|---|---|---|
| `alpha` | `2` | the number of standard deviations, MATLAB's 'alpha' |

## Output

| `ind` | ndarray of booleans, one per measurement, the pole figures one after another |

## See also

[PoleFigure.unique](PoleFigure.unique_py.html)

MATLAB's [PoleFigure.isOutlier](PoleFigure.isOutlier.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L479">source</a></font>
{% endraw %}
