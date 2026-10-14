---
title: 'PoleFigure.max'
sidebar: function_reference_sidebar
permalink: PoleFigure.max_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PoleFigure.max.html
status: Reference
---
{% raw %}
A method of [PoleFigure](PoleFigure_index_py.html).

the largest intensity of each pole figure, or the pointwise maximum with a number or
another pole figure; MATLAB's max

## Syntax

The largest intensity of every pole figure:

```python
m = max(pf)
```

The intensities clipped from below at zero:

```python
pf = max(pf, 0)
```

The larger intensity of two pole figures on the same directions:

```python
pf = max(pf1, pf2)
```

## Input

| | |
|---|---|
| `pf` | PoleFigure |

## Output

| | |
|---|---|
| `m` | ndarray, one number per pole figure |
| `pf` | PoleFigure, with another argument |

## Keywords

| | default | |
|---|---|---|
| `other` | `None` | a number, one per pole figure, or a PoleFigure on the same directions |

## See also

[PoleFigure.min](PoleFigure.min_py.html), [PoleFigure.mean](PoleFigure.mean_py.html)

MATLAB's [PoleFigure.max](PoleFigure.max.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L319">source</a></font>
{% endraw %}
