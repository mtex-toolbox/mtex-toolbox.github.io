---
title: 'The class MLSSolver'
sidebar: function_reference_sidebar
permalink: MLSSolver_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: MLSSolver_index.html
status: Reference
---
{% raw %}
the modified least squares solver of the pole figure inversion: the ansatz functions
sit on an equispaced grid and have the shape of a kernel, by default the de la Vallee
Poussin kernel of the grid's resolution

```python
solver = MLSSolver(pf, resolution=5*degree, halfwidth=7.5*degree)
odf = solver.calcODF()
solver.alpha                     the scaling of each pole figure
```

## Members

| | |
|---|---|
| [calcODF](MLSSolver.calcODF_py.html) | the reconstruction, with the uniform portion the data allows fixed by the ghost correction and put into the constant instead of the components |
| [CS](MLSSolver.CS_py.html) | the crystal frame of the pole figures the solver inverts |
| [doIter](MLSSolver.doIter_py.html) | one step of the modified projected gradient |
| [frameA](MLSSolver.frameA_py.html) | the frame the orientations map from, the crystal frame |
| [frameB](MLSSolver.frameB_py.html) | the frame the orientations map to, the specimen or a second crystal frame |
| [init](MLSSolver.init_py.html) | the operators on the grid the zero range method leaves |
| [initIter](MLSSolver.initIter_py.html) | the state the iteration starts from: the normalisation directions a_i, the scalings alpha_i and the weighted residuals u_i |
| [initRegularisation](MLSSolver.initRegularisation_py.html) | a discrete Laplacian on the grid: minus the dots within two halfwidths off the diagonal, the row sums on it |
| [iterate](MLSSolver.iterate_py.html) | the iteration, stopped when the residual improves by less than five percent |
| [MLSSolver](MLSSolver.MLSSolver_py.html) | the modified least squares solver of the pole figure inversion: the ansatz functions sit on an equispaced grid and have the shape of a kernel, by default the de la Vallee Poussin kernel of the grid's resolution |
| [odf](MLSSolver.odf_py.html) | the ODF the current coefficients describe |
| [residual](MLSSolver.residual_py.html) | the relative residual of each pole figure, and the norm of the vector of them |
| [SS](MLSSolver.SS_py.html) | the specimen frame of the pole figures the solver inverts |

MATLAB's [MLSSolver_index](MLSSolver_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/pf2odf.py#L163">source</a></font>
{% endraw %}
