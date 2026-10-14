---
title: 'PoleFigure.calcNormalization'
sidebar: function_reference_sidebar
permalink: PoleFigure.calcNormalization_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PoleFigure.calcNormalization.html
status: Reference
---
{% raw %}
A method of [PoleFigure](PoleFigure_index_py.html).

find intensity scale factors matching a recalculation to the measured pole figures

## Syntax

<div class="mx-form" markdown="1">

```python
scale = pf.calcNormalization(other)
scale = pf.calcNormalization(odf)
```

</div>

## Description

For each pole figure, divide the quadrature-weighted mass of pf by that of other.
Negative intensities count as zero. A supplied ODF is first recalculated on pf's directions.
The factors multiply the recalculated intensities to match the measurement's mass.
With PoleFigure input, both data sets must use the same directions and reflection ordering.

## Input

| `other` | matching PoleFigure data, or an SO3Fun orientation distribution |

## Output

| `scale` | numeric array with one scale factor per pole figure |

## See also

[PoleFigure.normalize](PoleFigure.normalize_py.html), [PoleFigure.mean](PoleFigure.mean_py.html), [PoleFigure.calcPoleFigure](PoleFigure.calcPoleFigure_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
PoleFigure.calcNormalization(self, other)
```

</div>

MATLAB's [PoleFigure.calcNormalization](PoleFigure.calcNormalization.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L663">source</a></font>
{% endraw %}
