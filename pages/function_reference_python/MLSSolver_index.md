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
the modified least squares solver of the pole figure inversion, an ODF as a weighted sum of
unimodal components fitted to scattered pole figure intensities

## Syntax

Set up the solver:

```python
solver = MLSSolver(pf, resolution=5*degree, halfwidth=7.5*degree)
```

And run it:

```python
odf = solver.calcODF()
```

A kernel and the centres given:

```python
solver = MLSSolver(pf, psi, S3G=grid)
```

The scaling of each pole figure:

```python
solver.alpha
```

The ansatz functions have the shape of a kernel, by default the de la Vallee Poussin kernel,
and sit on a grid of orientations, by default an equispaced grid of the resolution. The
coefficients minimise the squared misfit between the pole figures of the ODF and the
measured intensities, every pole figure with its own scaling alpha, under the constraint
that they are non negative. calcODF(pf, ...) builds the solver and runs it at once.

The kernel and the grid may also be passed positionally. The solver keeps its state:
solver.S3G the centres, solver.psi the kernel, solver.c the coefficients, solver.alpha the
scaling factors, solver.zrm the zero range method; solver.odf the ODF they describe.

## Input

| | |
|---|---|
| `pf` | PoleFigure |
| `psi` | SO3Kernel, the shape of the ansatz functions |
| `grid` | orientation, the centres of the ansatz functions |

## Output

| | |
|---|---|
| `solver` | MLSSolver |

## Keywords

| | default | |
|---|---|---|
| `resolution` |  | the spacing of the grid the ansatz functions sit on, by default the resolution of the pole figures (MATLAB: 3/2 of it) |
| `halfwidth` |  | the halfwidth of the ansatz functions, by default the resolution of the grid (MATLAB: 2/3 of it) |
| `kernel` |  | SO3Kernel, the shape of the ansatz functions instead of the de la Vallee Poussin kernel of the halfwidth |
| `S3G` |  | orientation, the centres of the ansatz functions instead of the equispaced grid |
| `zeroRange` |  | apply the zero range method: drop the centres where some pole figure says the ODF vanishes; a zeroRangeMethod gives its parameters |
| `minIter` |  | the least number of iterations |
| `maxIter` |  | the largest number of iterations (MATLAB iterMax) |
| `c0` |  | the coefficients of the ansatz functions the iteration starts from, by default all equal |
| `ghostCorrection` |  | fix the uniform portion the data allows and reconstruct only the rest; MATLAB flag noGhostCorrection is ghostCorrection=False |
| `quadratureWeights` |  | weight the residuals with the quadrature weights of the measured directions (no specimen symmetry) |
| `intensityWeights` |  | weight the residuals with (1 + I)^(-1/2), the counting statistics of the intensities I |
| `regularisation` |  | the weight of a penalty on the Dirichlet energy, a discrete Laplacian on the grid; zero for none |
| `verbose` |  | report the fit of every pole figure in every iteration |

## References

- R. Hielscher, H. Schaeben, A novel pole figure inversion method: specification of the MTEX algorithm, J. Appl. Cryst. 41 (2008) 1024-1037

## See also

[calcODF](calcODF_py.html), [MLSSolver.calcODF](MLSSolver.calcODF_py.html), [calcODFIterative](calcODFIterative_py.html), [zeroRangeMethod](zeroRangeMethod_index_py.html), [PoleFigureTutorial](PoleFigureTutorial_py.html), [PoleFigure2ODFAmbiguity](PoleFigure2ODFAmbiguity_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html)

## Members

| | |
|---|---|
| [calcODF](MLSSolver.calcODF_py.html) | the ODF the solver reconstructs, with the ghost correction |
| [CS](MLSSolver.CS_py.html) | the crystal frame of the pole figures the solver inverts |
| [doIter](MLSSolver.doIter_py.html) | one step of the modified projected gradient |
| [frameA](MLSSolver.frameA_py.html) | the frame the orientations map from, the crystal frame |
| [frameB](MLSSolver.frameB_py.html) | the frame the orientations map to, the specimen or a second crystal frame |
| [init](MLSSolver.init_py.html) | the operators on the grid the zero range method leaves |
| [initIter](MLSSolver.initIter_py.html) | the state the iteration starts from: the normalisation directions a_i, the scalings alpha_i and the weighted residuals u_i |
| [initRegularisation](MLSSolver.initRegularisation_py.html) | a discrete Laplacian on the grid: minus the dots within two halfwidths off the diagonal, the row sums on it |
| [iterate](MLSSolver.iterate_py.html) | the iteration, stopped when the residual improves by less than five percent |
| [MLSSolver](MLSSolver.MLSSolver_py.html) | the modified least squares solver of the pole figure inversion, an ODF as a weighted sum of unimodal components fitted to scattered pole figure intensities |
| [odf](MLSSolver.odf_py.html) | the ODF the current coefficients describe |
| [residual](MLSSolver.residual_py.html) | the relative residual of each pole figure, and the norm of the vector of them |
| [SS](MLSSolver.SS_py.html) | the specimen frame of the pole figures the solver inverts |

MATLAB's [MLSSolver_index](MLSSolver_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/pf2odf.py#L188">source</a></font>
{% endraw %}
