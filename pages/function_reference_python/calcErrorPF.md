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

The damped relative error:

```python
pfe = calcErrorPF(pf, odf)
```

|pf - pfcalc| / pfcalc where pfcalc > 1:

```python
pfe = calcErrorPF(pf, odf, 'RP')
```

|pf - pf2| against other pole figures:

```python
pfe = calcErrorPF(pf, pf2, 'l1')
```

## Input

| | |
|---|---|
| `pf` | PoleFigure, the measurement |
| `other` | SO3Fun or PoleFigure, the recalculation |

## Output

| | |
|---|---|
| `pfe` | PoleFigure of the deviations |

## Keywords

| | default | |
|---|---|---|
| `mode` | `'relative'` | 'relative', 'RP', 'l1' or 'l2' |
| `epsilon` | `None` | the damping of 'relative' (0.5) or the threshold of 'RP' (1) |

## See also

[PoleFigure.calcErrorPF](PoleFigure.calcErrorPF_py.html), [PoleFigure.calcError](PoleFigure.calcError_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L840">source</a></font>
{% endraw %}
