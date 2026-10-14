---
title: 'SO3Fun.plotDiff'
sidebar: function_reference_sidebar
permalink: SO3Fun.plotDiff_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Fun.plotDiff.html
status: Reference
---
{% raw %}
plotDiff(pf, odf), plotDiff(pf, pf2, 'l1'): the difference between a measured pole figure
and a recalculated one, or two measurements, as a pole figure of the error; plotDiff(odf, pf)
the same, plotDiff(odf1, odf2) the sections of their difference

## Syntax

```python
plotDiff(pf, other, mode='relative', epsilon=None, **kw)
```

## Used on

[CombinedPlots](CombinedPlots_py.html), [PoleFigure2ODF](PoleFigure2ODF_py.html), [PoleFigureDubna](PoleFigureDubna_py.html), [PoleFigureSantaFe](PoleFigureSantaFe_py.html)

MATLAB's [SO3Fun.plotDiff](SO3Fun.plotDiff.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/polefigureplot.py#L309">source</a></font>
{% endraw %}
