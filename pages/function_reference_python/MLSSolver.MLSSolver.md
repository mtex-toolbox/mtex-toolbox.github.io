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
| `resolution` | `None` | the spacing of the grid the ansatz functions sit on, by default the resolution of the pole figures (MATLAB: 3/2 of it) |
| `halfwidth` | `None` | the halfwidth of the ansatz functions, by default the resolution of the grid (MATLAB: 2/3 of it) |
| `kernel` | `None` | SO3Kernel, the shape of the ansatz functions instead of the de la Vallee Poussin kernel of the halfwidth |
| `S3G` | `None` | orientation, the centres of the ansatz functions instead of the equispaced grid |
| `zeroRange` | `False` | apply the zero range method: drop the centres where some pole figure says the ODF vanishes; a zeroRangeMethod gives its parameters |
| `minIter` | `5` | the least number of iterations |
| `maxIter` | `10` | the largest number of iterations (MATLAB iterMax) |
| `c0` | `None` | the coefficients of the ansatz functions the iteration starts from, by default all equal |
| `ghostCorrection` | `True` | fix the uniform portion the data allows and reconstruct only the rest; MATLAB flag noGhostCorrection is ghostCorrection=False |
| `quadratureWeights` | `False` | weight the residuals with the quadrature weights of the measured directions (no specimen symmetry) |
| `intensityWeights` | `False` | weight the residuals with (1 + I)^(-1/2), the counting statistics of the intensities I |
| `regularisation` | `0.0` | the weight of a penalty on the Dirichlet energy, a discrete Laplacian on the grid; zero for none |
| `verbose` | `False` | report the fit of every pole figure in every iteration |

## References

- R. Hielscher, H. Schaeben, A novel pole figure inversion method: specification of the MTEX algorithm, J. Appl. Cryst. 41 (2008) 1024-1037

## See also

[calcODF](calcODF_py.html), [MLSSolver.calcODF](MLSSolver.calcODF_py.html), [calcODFIterative](calcODFIterative_py.html), [zeroRangeMethod](zeroRangeMethod_index_py.html), [PoleFigureTutorial](PoleFigureTutorial_py.html), [PoleFigure2ODFAmbiguity](PoleFigure2ODFAmbiguity_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html)

MATLAB's [MLSSolver.MLSSolver](MLSSolver.MLSSolver.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/pf2odf.py#L201">source</a></font>
{% endraw %}
