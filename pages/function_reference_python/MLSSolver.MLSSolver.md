---
title: 'MLSSolver.MLSSolver'
sidebar: function_reference_sidebar
permalink: MLSSolver.MLSSolver_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: MLSSolver.MLSSolver.html
status: Reference
---
{% raw %}
the modified least squares solver of the pole figure inversion: the ansatz functions
sit on an equispaced grid and have the shape of a kernel, by default the de la Vallee
Poussin kernel of the grid's resolution

## Syntax

```python
MLSSolver(pf, *args, resolution=None, halfwidth=None, kernel=None, S3G=None, zeroRange=False, minIter=5, maxIter=10, c0=None, ghostCorrection=True, quadratureWeights=False, intensityWeights=False, regularisation=0.0, verbose=False)
```

```python
solver = MLSSolver(pf, resolution=5*degree, halfwidth=7.5*degree)
odf = solver.calcODF()
solver.alpha                     the scaling of each pole figure
```

MATLAB's [MLSSolver.MLSSolver](MLSSolver.MLSSolver.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/pf2odf.py#L163">source</a></font>
{% endraw %}
