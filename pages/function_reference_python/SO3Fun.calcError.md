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

One number per pole figure, PoleFigure.calcError:

```python
e = calcError(pf, odf)
```

The same, in MATLAB's order:

```python
e = calcError(odf, pf, 'RP')
```

'l1':

```python
e = calcError(odf1, odf2)
```

```python
e = calcError(odf1, odf2, 'l2', resolution=2.5*degree)
```

## Signature

```python
calcError(a, b, *args, **kwargs)
```

## Used on

[EBSD2ODF](EBSD2ODF_py.html), [OptimalKernel](OptimalKernel_py.html), [RandomSampling](RandomSampling_py.html), [PoleFigure2ODF](PoleFigure2ODF_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html), [PoleFigureDubna](PoleFigureDubna_py.html), [PoleFigureRefinement](PoleFigureRefinement_py.html), [PoleFigureSantaFe](PoleFigureSantaFe_py.html), [PoleFigureSimulation](PoleFigureSimulation_py.html), [SO3FunConvolution](SO3FunConvolution_py.html), [SO3FunQuadrature](SO3FunQuadrature_py.html), [PoleFigureTutorial](PoleFigureTutorial_py.html)

MATLAB's [SO3Fun.calcError](SO3Fun.calcError.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L684">source</a></font>
{% endraw %}
