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
other pole figures on the same directions; MATLAB's calcError

## Syntax

<div class="mx-form" markdown="1">

```python
e = calcError(pf, odf)
```

The damped relative error.

</div>

<div class="mx-form" markdown="1">

```python
e = calcError(pf, pf2)
```

Against other pole figures on the same directions.

</div>

<div class="mx-form" markdown="1">

```python
e = calcError(pf, odf, 'RP', epsilon=0.5)
```

The RP error above 0.5.

</div>

<div class="mx-form" markdown="1">

```python
e = calcError(odf, pf, 'RP')
```

The ODF first, as MATLAB's.

</div>

<div class="mx-form" markdown="1">

```python
e = calcError(pf, odf, 'l2')
```

The relative mean square error.

</div>

## Description

The deviations are those of calcErrorPF, averaged over each pole figure: 'relative', the
default, the relative error damped by epsilon (0.5), which MATLAB computes when no measure is
named (its documentation calls the default RP); 'RP' the mean of |I - Ic| / Ic over the
directions where Ic exceeds epsilon (1), MATLAB's 'RP', epsilon; 'l1' and 'l2' the mean
absolute and squared differences divided by the mean absolute and squared intensities. The
names are taken in any case.

## Input

| `pf` | PoleFigure, the measurement |
| `other` | SO3Fun, the ODF of the recalculation, or PoleFigure on the same directions |

## Keywords

| keyword | default | description |
|---|---|---|
| `mode` | `'relative'` | 'relative', 'RP', 'l1' or 'l2' |
| `epsilon` | `None` | the damping of 'relative' or the threshold of 'RP', both times the normalisation |

## Output

| `e` | ndarray, one number per pole figure; NaN where 'RP' keeps no direction |

## See also

[PoleFigure.calcErrorPF](PoleFigure.calcErrorPF_py.html), [calcNormalization](calcNormalization_py.html), [SO3Fun.calcError](SO3Fun.calcError_py.html)

MATLAB's [PoleFigure.calcError](PoleFigure.calcError.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L683">source</a></font>
{% endraw %}
