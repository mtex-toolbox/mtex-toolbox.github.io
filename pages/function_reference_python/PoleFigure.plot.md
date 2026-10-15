---
title: 'PoleFigure.plot'
sidebar: function_reference_sidebar
permalink: PoleFigure.plot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: PoleFigure.plot.html
status: Reference
---
{% raw %}
A method of [PoleFigure](PoleFigure_index_py.html).

measured pole figures in a row, the specimen directions as markers coloured by intensity;
MATLAB's PoleFigure/plot

## Syntax

<div class="mx-form" markdown="1">

```python
plot(pf)
```

Every pole figure of the data set.

</div>

<div class="mx-form" markdown="1">

```python
plot(pf.select(0))
```

Only the first pole figure.

</div>

<div class="mx-form" markdown="1">

```python
pf.plot(contourf=True)
```

Filled contours of the harmonic expansion.

</div>

<div class="mx-form" markdown="1">

```python
pf.plot(contourf=True, bandwidth=16)
```

Of an expansion to degree 16.

</div>

<div class="mx-form" markdown="1">

```python
pf.plot(minmax=True)
```

With the minimum and the maximum.

</div>

<div class="mx-form" markdown="1">

```python
pf.plot(colorRange='equal')
```

One colour range over all pole figures.

</div>

## Description

With contourf, contour, pcolor or smooth (MATLAB's flags, keywords here) each pole figure is
first expanded into spherical harmonics, S2FunHarmonic(pf.select(i)), and drawn as a
function on the sphere. The other keywords are those of plot of vector3d; mtexColorbar adds
the colour bars.

## Input

| `pf` | PoleFigure |

## Keywords

| keyword | default | description |
|---|---|---|
| `colorRange` | `'individual'` | 'individual', each pole figure its own range, 'equal', one range over all, or (lo, hi) |
| `bandwidth` | `None` | the harmonic degree of the expansion a filled style draws; by default that of S2FunHarmonic |

## See also

[plotPF](SO3Fun.plotPDF_py.html), [PoleFigure.plotDiff](PoleFigure.plotDiff_py.html), [mtexColorbar](mtexColorbar_py.html), [PoleFigurePlot](PoleFigurePlot_py.html)

MATLAB's [PoleFigure.plot](PoleFigure.plot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/polefigureplot.py#L351">source</a></font>
{% endraw %}
