---
title: 'PoleFigure.calcErrorPF'
sidebar: function_reference_sidebar
permalink: PoleFigure.calcErrorPF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PoleFigure.calcErrorPF.html
status: Reference
---
{% raw %}
A method of [PoleFigure](PoleFigure_index_py.html).

the pole figures of the deviation from a recalculation: the difference between measured
intensities and those an ODF predicts, or another pole figure on the same directions;
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
pfe = calcErrorPF(pf, pf2)
```

Against other pole figures.

</div>

<div class="mx-form" markdown="1">

```python
pfe = pf.calcErrorPF(odf, 'RP', epsilon=0.5)
```

|pf - pfcalc| / pfcalc where pfcalc > 0.5.

</div>

<div class="mx-form" markdown="1">

```python
pfe = pf.calcErrorPF(odf, 'l1')
```

|pf - pfcalc|.

</div>

<div class="mx-form" markdown="1">

```python
pfe = pf.calcErrorPF(odf, 'l2')
```

|pf - pfcalc|^2.

</div>

## Description

The recalculation is first scaled to the mass of the measurement by calcNormalization.
'relative', the default, is |I - Ic| / max(I + epsilon, Ic + epsilon), which MATLAB computes
when no measure is named, though its help names RP the default; 'RP' keeps only the
directions where the recalculation exceeds epsilon, so its pole figures have fewer
directions; 'l1' and 'l2' are the plain differences. The names are taken in any case.

## Input

| `pf` | PoleFigure, the measurement |
| `other` | SO3Fun, the ODF of the recalculation, or PoleFigure on the same directions |

## Keywords

| keyword | default | description |
|---|---|---|
| `mode` | `'relative'` | 'relative', 'RP', 'l1' or 'l2' |
| `epsilon` | `None` | the damping of 'relative' (0.5) or the threshold of 'RP' (1), both times the normalisation |

## Output

| `pfe` | PoleFigure of the deviations |

## See also

[PoleFigure.calcError](PoleFigure.calcError_py.html), [calcNormalization](calcNormalization_py.html), [calcPoleFigure](SO3Fun.calcPoleFigure_py.html)

MATLAB's [PoleFigure.calcErrorPF](PoleFigure.calcErrorPF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L688">source</a></font>
{% endraw %}
