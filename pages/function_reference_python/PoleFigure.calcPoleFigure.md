---
title: 'PoleFigure.calcPoleFigure'
sidebar: function_reference_sidebar
permalink: PoleFigure.calcPoleFigure_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PoleFigure.calcPoleFigure.html
status: Reference
---
{% raw %}
A method of [PoleFigure](PoleFigure_index_py.html).

recalculate this data set's pole figures from an orientation distribution

## Syntax

<div class="mx-form" markdown="1">

```python
predicted = pf.calcPoleFigure(odf)
```

</div>

## Description

Evaluate the ODF's pole densities for the same crystal reflections, superposition
coefficients and specimen directions as pf. The measured intensities are not used in
the calculation. Return a PoleFigure that can be compared with the measurement, for
example using calcError or calcErrorPF.

## Input

| `odf` | SO3Fun orientation distribution |

## Output

| `predicted` | PoleFigure containing recalculated intensities |

## See also

[calcPoleFigure](SO3Fun.calcPoleFigure_py.html), [PoleFigure.calcErrorPF](PoleFigure.calcErrorPF_py.html), [PoleFigure.calcNormalization](PoleFigure.calcNormalization_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
PoleFigure.calcPoleFigure(self, odf)
```

</div>

MATLAB's [PoleFigure.calcPoleFigure](PoleFigure.calcPoleFigure.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L645">source</a></font>
{% endraw %}
