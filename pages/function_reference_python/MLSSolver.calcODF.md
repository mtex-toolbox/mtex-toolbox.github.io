---
title: 'MLSSolver.calcODF'
sidebar: function_reference_sidebar
permalink: MLSSolver.calcODF_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: MLSSolver.calcODF.html
status: Reference
---
{% raw %}
A method of [MLSSolver](MLSSolver_index_py.html).

the reconstruction, with the uniform portion the data allows fixed by the ghost
correction and put into the constant instead of the components; minIter, maxIter,
ghostCorrection and verbose replace the solver's settings

## Syntax

```python
MLSSolver.calcODF(self, minIter=None, maxIter=None, ghostCorrection=None, verbose=None)
```

```python
odf = solver.calcODF()
odf = solver.calcODF(minIter=2, maxIter=4)
odf = solver.calcODF(ghostCorrection=False, verbose=True)
```

MATLAB's [MLSSolver.calcODF](MLSSolver.calcODF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/pf2odf.py#L361">source</a></font>
{% endraw %}
