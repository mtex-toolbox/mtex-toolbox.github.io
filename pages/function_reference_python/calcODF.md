---
title: 'calcODF'
sidebar: function_reference_sidebar
permalink: calcODF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
an ODF reconstructed from pole figure intensities, an SO3FunRBF; the ansatz functions
are a kernel (kernel=, by default the de la Vallee Poussin kernel of the given halfwidth) on
a grid (S3G=, by default equispaced at the resolution), iterated minIter to maxIter times
from the coefficients c0; quadratureWeights and intensityWeights weight the residuals,
regularisation weighs a penalty on the Dirichlet energy, verbose reports the iterations

## Syntax

```python
calcODF(pf, *args, resolution=None, halfwidth=None, kernel=None, S3G=None, zeroRange=False, minIter=5, maxIter=10, c0=None, ghostCorrection=True, quadratureWeights=False, intensityWeights=False, regularisation=0.0, verbose=False)
```

```python
odf = calcODF(pf)
odf = calcODF(pf, halfwidth=7.5*degree, resolution=5*degree)
odf = calcODF(pf, psi)  # the ansatz functions of the kernel psi
odf = calcODF(pf, zeroRange=True)  # drop the orientations the data says are empty
odf = calcODF(pf, ghostCorrection=False)  # keep the uniform portion in the components
odf = calcODF(pf, solver)  # run an MLSSolver set up before
```

## Used on

[DetectionOfSampleSymmetry](DetectionOfSampleSymmetry_py.html), [ODFComponents](ODFComponents_py.html), [SO3FunHarmonicRepresentation](SO3FunHarmonicRepresentation_py.html), [AxesAlignment](AxesAlignment_py.html), [CombinedPlots](CombinedPlots_py.html), [ContourPlots](ContourPlots_py.html), [PoleFigure2ODF](PoleFigure2ODF_py.html), [PoleFigure2ODFAmbiguity](PoleFigure2ODFAmbiguity_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html), [PoleFigureCorrection](PoleFigureCorrection_py.html), [PoleFigureDubna](PoleFigureDubna_py.html), [PoleFigureExport](PoleFigureExport_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/pf2odf.py#L412">source</a></font>
{% endraw %}
