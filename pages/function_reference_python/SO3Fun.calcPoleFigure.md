---
title: 'SO3Fun.calcPoleFigure'
sidebar: function_reference_sidebar
permalink: SO3Fun.calcPoleFigure_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.calcPoleFigure.html
status: Reference
---
{% raw %}
the pole figures of an ODF for the crystal directions h on the specimen directions r

## Syntax

```python
calcPoleFigure(odf, h, r=None, superposition=None, complete=False, **gridOptions)
```

```python
calcPoleFigure(odf, h, r)                       one pole figure per element of h
calcPoleFigure(odf, [h1, h23], r)               a Python list: an entry of several directions is superposed
calcPoleFigure(odf, [h1, h2], [r1, r2])         one set of specimen directions per pole figure
calcPoleFigure(odf, h, resolution=5*degree)     on a regular grid
calcPoleFigure(odf, pf)                         on the directions of a measurement
```

## Used on

[ColorMaps](ColorMaps_py.html), [PlotTypes](PlotTypes_py.html), [PoleFigure2ODFAmbiguity](PoleFigure2ODFAmbiguity_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html), [PoleFigureExport](PoleFigureExport_py.html), [PoleFigureRefinement](PoleFigureRefinement_py.html), [PoleFigureSantaFe](PoleFigureSantaFe_py.html), [PoleFigureSimulation](PoleFigureSimulation_py.html)

MATLAB's [SO3Fun.calcPoleFigure](SO3Fun.calcPoleFigure.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L641">source</a></font>
{% endraw %}
