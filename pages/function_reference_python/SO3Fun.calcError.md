---
title: 'SO3Fun.calcError'
sidebar: function_reference_sidebar
permalink: SO3Fun.calcError_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.calcError.html
status: Reference
---
{% raw %}
the error between a measurement and a recalculation, or between two SO(3) functions

## Syntax

<div class="mx-form" markdown="1">

```python
e = calcError(pf, odf)
```

One number per pole figure, PoleFigure.calcError.

</div>

<div class="mx-form" markdown="1">

```python
e = calcError(odf, pf, 'RP')
```

The same, in MATLAB's order.

</div>

<div class="mx-form" markdown="1">

```python
e = calcError(odf1, odf2)
```

'l1'.

</div>

<div class="mx-form" markdown="1">

```python
e = calcError(odf1, odf2, 'l2', resolution=2.5*degree)
```

</div>

## Signature

<div class="mx-form" markdown="1">

```python
calcError(a, b, *args, **kwargs)
```

</div>

## Used on

[EBSD2ODF](EBSD2ODF_py.html), [OptimalKernel](OptimalKernel_py.html), [RandomSampling](RandomSampling_py.html), [PoleFigure2ODF](PoleFigure2ODF_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html), [PoleFigureDubna](PoleFigureDubna_py.html), [PoleFigureRefinement](PoleFigureRefinement_py.html), [PoleFigureSantaFe](PoleFigureSantaFe_py.html), [PoleFigureSimulation](PoleFigureSimulation_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [SO3FunQuadrature](SO3FunQuadrature_py.html), [PoleFigureTutorial](PoleFigureTutorial_py.html)

MATLAB's [SO3Fun.calcError](SO3Fun.calcError.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L919">source</a></font>
{% endraw %}
