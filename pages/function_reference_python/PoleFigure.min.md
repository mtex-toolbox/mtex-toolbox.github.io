---
title: 'PoleFigure.min'
sidebar: function_reference_sidebar
permalink: PoleFigure.min_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PoleFigure.min.html
status: Reference
---
{% raw %}
A method of [PoleFigure](PoleFigure_index_py.html).

the smallest intensity of each pole figure, or the pointwise minimum with a number or
another pole figure; MATLAB's min

## Syntax

<div class="mx-form" markdown="1">

```python
m = min(pf)
```

The smallest intensity of every pole figure.

</div>

<div class="mx-form" markdown="1">

```python
pf = min(pf, 100)
```

The intensities clipped from above at 100.

</div>

<div class="mx-form" markdown="1">

```python
pf = min(pf1, pf2)
```

The smaller intensity of two pole figures on the same directions.

</div>

## Input

| `pf` | PoleFigure |

## Keywords

| keyword | default | description |
|---|---|---|
| `other` | `None` | a number, one per pole figure, or a PoleFigure on the same directions |

## Output

| `m` | ndarray, one number per pole figure |
| `pf` | PoleFigure, with another argument |

## See also

[PoleFigure.max](PoleFigure.max_py.html), [PoleFigure.mean](PoleFigure.mean_py.html)

MATLAB's [PoleFigure.min](PoleFigure.min.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L340">source</a></font>
{% endraw %}
