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

<div class="mx-form" markdown="1">

```python
pf = normalize(pf)
```

Every pole figure of mean intensity one.

</div>

<div class="mx-form" markdown="1">

```python
pf = normalize(pf, odf)
```

Scaled to the mass of the pole figures of the ODF.

</div>

## Input

| `pf` | PoleFigure |

## Keywords

| keyword | default | description |
|---|---|---|
| `odf` | `None` | an SO3Fun: each pole figure divided by the factor calcNormalization fits against the pole figure the ODF predicts, instead of by its mean |

## Output

| `pf` | PoleFigure |

## See also

[PoleFigure.mean](PoleFigure.mean_py.html), [calcNormalization](calcNormalization_py.html), [PoleFigure.calcError](PoleFigure.calcError_py.html)

MATLAB's [PoleFigure.normalize](PoleFigure.normalize.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L385">source</a></font>
{% endraw %}
