---
title: 'PoleFigure.cat'
sidebar: function_reference_sidebar
permalink: PoleFigure.cat_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PoleFigure.cat.html
status: Reference
---
{% raw %}
A method of [PoleFigure](PoleFigure_index_py.html).

the pole figures of several data sets in one, in order; MATLAB's cat

## Syntax

Every pole figure of the three, in order:

```python
pf = cat(pf1, pf2, pf3)
```

```python
pf = PoleFigure.cat(pf1, pf2) # the same as a static method
```

Unlike union, pole figures of the same crystal direction stay separate; None is skipped.

## Input

| | |
|---|---|
| `pf1, pf2, pf3` | PoleFigure |

## Output

| | |
|---|---|
| `pf` | PoleFigure |

## Keywords

| | default | |
|---|---|---|
| `axis` | `0` | taken for numpy's signature and ignored: the pole figures form one list, MATLAB's dim |

## See also

[PoleFigure.union](PoleFigure.union_py.html)

MATLAB's [PoleFigure.cat](PoleFigure.cat.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L743">source</a></font>
{% endraw %}
