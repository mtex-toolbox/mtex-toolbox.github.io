---
title: 'PoleFigure.plotDiff'
sidebar: function_reference_sidebar
permalink: PoleFigure.plotDiff_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PoleFigure.plotDiff.html
status: Reference
---
{% raw %}
A method of [PoleFigure](PoleFigure_index_py.html).

the difference between measured pole figures and recalculated ones, or two measurements,
drawn as pole figures of the error; MATLAB's plotDiff

## Syntax

<div class="mx-form" markdown="1">

```python
plotDiff(pf, odf)
```

The damped relative error of a recalculation.

</div>

<div class="mx-form" markdown="1">

```python
plotDiff(pf, pf2)
```

Against other pole figures.

</div>

<div class="mx-form" markdown="1">

```python
pf.plotDiff(odf, 'RP')
```

The RP error, where the recalculation exceeds 1.

</div>

<div class="mx-form" markdown="1">

```python
pf.plotDiff(odf, mode='l1')
```

The absolute difference.

</div>

<div class="mx-form" markdown="1">

```python
pf.plotDiff(odf, epsilon=1)
```

Another damping.

</div>

<div class="mx-form" markdown="1">

```python
plotDiff(odf, pf)
```

The same, with one colour range.

</div>

<div class="mx-form" markdown="1">

```python
plotDiff(odf1, odf2)
```

The ODF sections of the difference of two ODFs.

</div>

## Description

The error is calcErrorPF(pf, other, mode, epsilon), drawn with a colour bar; MATLAB's flags
'RP', 'l1', 'l2' are taken as keywords set to True too. Where neither argument is a
PoleFigure the difference of the two functions is drawn by plotSection. The other keywords
are those of plot(pf).

## Input

| `pf` | PoleFigure, the measurement |
| `other` | SO3Fun, the ODF of the recalculation, or PoleFigure on the same directions |

## Keywords

| keyword | default | description |
|---|---|---|
| `mode` | `'relative'` | 'relative', 'RP', 'l1' or 'l2', as calcErrorPF |
| `epsilon` | `None` | the damping of 'relative' (0.5) or the threshold of 'RP' (1) |

## See also

[calcErrorPF](calcErrorPF_py.html), [PoleFigure.calcError](PoleFigure.calcError_py.html), [PoleFigure.plot](PoleFigure.plot_py.html), [plotSection](S2Fun.plotSection_py.html)

MATLAB's [PoleFigure.plotDiff](PoleFigure.plotDiff.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/polefigureplot.py#L359">source</a></font>
{% endraw %}
