---
title: 'calcErrorPF'
sidebar: function_reference_sidebar
permalink: calcErrorPF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the pole figures of the deviation from a recalculation; the same as pf.calcErrorPF,
MATLAB's calcErrorPF

## Syntax

<div class="mx-form" markdown="1">

```python
pfe = calcErrorPF(pf, odf)
```

The damped relative error.

</div>

<div class="mx-form" markdown="1">

```python
pfe = calcErrorPF(pf, odf, 'RP')
```

|pf - pfcalc| / pfcalc where pfcalc > 1.

</div>

<div class="mx-form" markdown="1">

```python
pfe = calcErrorPF(pf, pf2, 'l1')
```

|pf - pf2| against other pole figures.

</div>

## Input

| `pf` | PoleFigure, the measurement |
| `other` | SO3Fun or PoleFigure, the recalculation |

## Keywords

| keyword | default | description |
|---|---|---|
| `mode` | `'relative'` | 'relative', 'RP', 'l1' or 'l2' |
| `epsilon` | `None` | the damping of 'relative' (0.5) or the threshold of 'RP' (1) |

## Output

| `pfe` | PoleFigure of the deviations |

## See also

[PoleFigure.calcErrorPF](PoleFigure.calcErrorPF_py.html), [PoleFigure.calcError](PoleFigure.calcError_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L840">source</a></font>
{% endraw %}
