---
title: 'PoleFigure.normalize'
sidebar: function_reference_sidebar
permalink: PoleFigure.normalize_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PoleFigure.normalize.html
status: Reference
---
{% raw %}
A method of [PoleFigure](PoleFigure_index_py.html).

the pole figures scaled to mean one, or to the pole figures an ODF predicts; MATLAB's
normalize

## Syntax

Every pole figure of mean intensity one:

```python
pf = normalize(pf)
```

Scaled to the mass of the pole figures of the ODF:

```python
pf = normalize(pf, odf)
```

## Input

| | |
|---|---|
| `pf` | PoleFigure |

## Output

| | |
|---|---|
| `pf` | PoleFigure |

## Keywords

| | default | |
|---|---|---|
| `odf` | `None` | an SO3Fun: each pole figure divided by the factor calcNormalization fits against the pole figure the ODF predicts, instead of by its mean |

## See also

[PoleFigure.mean](PoleFigure.mean_py.html), [calcNormalization](calcNormalization_py.html), [PoleFigure.calcError](PoleFigure.calcError_py.html)

MATLAB's [PoleFigure.normalize](PoleFigure.normalize.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L384">source</a></font>
{% endraw %}
