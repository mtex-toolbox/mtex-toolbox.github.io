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

the ODF the solver reconstructs, with the ghost correction

## Syntax

With the solver's settings:

```python
odf = solver.calcODF()
```

Another number of iterations:

```python
odf = solver.calcODF(minIter=2, maxIter=4)
```

No ghost correction, reported:

```python
odf = solver.calcODF(ghostCorrection=False, verbose=True)
```

The zero range method, when set, thins the grid first; then the coefficients are iterated.
With the ghost correction the uniform portion the data allows, the smallest intensity of
the scaled pole figures, is subtracted, the rest reconstructed again and the portion kept
as the constant of the ODF rather than spread over the components. The keywords replace
the solver's settings for this and later calls. The scaling of every pole figure,
MATLAB's second output alpha, is solver.alpha afterwards.

## Input

| | |
|---|---|
| `solver` | MLSSolver |

## Output

| | |
|---|---|
| `odf` | SO3FunRBF, or the uniform ODF when the data says the ODF is uniform |

## Keywords

| | default | |
|---|---|---|
| `minIter` | `None` | the least number of iterations |
| `maxIter` | `None` | the largest number of iterations |
| `ghostCorrection` | `None` | fix the uniform portion and reconstruct only the rest |
| `verbose` | `None` | report the fit of every pole figure in every iteration |

## See also

[MLSSolver](MLSSolver_index_py.html), [calcODF](calcODF_py.html), [PoleFigure2ODFGhostCorrection](PoleFigure2ODFGhostCorrection_py.html)

MATLAB's [MLSSolver.calcODF](MLSSolver.calcODF.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/pf2odf.py#L430">source</a></font>
{% endraw %}
