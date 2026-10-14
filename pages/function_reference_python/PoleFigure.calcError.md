---
title: 'PoleFigure.calcError'
sidebar: function_reference_sidebar
permalink: PoleFigure.calcError_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PoleFigure.calcError.html
status: Reference
---
{% raw %}
A method of [PoleFigure](PoleFigure_index_py.html).

the mean deviation, one number per pole figure, from a recalculation by an ODF or from
other pole figures on the same directions: 'relative', the default, is the relative error
damped by epsilon (0.5), which MATLAB computes when no measure is named (its documentation
calls the default RP); 'RP' keeps the directions above epsilon (1), MATLAB's 'RP', epsilon;
'l1' and 'l2'; the names in any case, and the ODF first or second, as MATLAB's

## Syntax

```python
e = calcError(pf, odf)
e = calcError(pf, pf2)
e = calcError(pf, odf, 'RP', epsilon=0.5)
e = calcError(odf, pf, 'RP')
e = calcError(pf, odf, 'l2')
```

## Signature

```python
PoleFigure.calcError(self, other, mode='relative', epsilon=None)
```

MATLAB's [PoleFigure.calcError](PoleFigure.calcError.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L562">source</a></font>
{% endraw %}
