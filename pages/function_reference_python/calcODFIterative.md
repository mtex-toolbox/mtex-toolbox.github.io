---
title: 'calcODFIterative'
sidebar: function_reference_sidebar
permalink: calcODFIterative_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
an ODF reconstructed from pole figures by a ladder of kernel widths, from wide to the
target, each step started from the last

## Syntax

The defaults:

```python
odf = calcODFIterative(pf)
```

The target halfwidth:

```python
odf = calcODFIterative(pf, halfwidth=5*degree)
```

Every node of every grid kept:

```python
odf = calcODFIterative(pf, thinning=0)
```

The halfwidths run from sqrt(e)^(maxSteps-1) times the target down to the target, those
whose grid would be coarser than 45 degree dropped; each step solves on an equispaced grid
of its own resolution, started from the ODF of the previous step evaluated on the grid,
beginning with the uniform ODF. Missing data is filled by the volume a coarser model puts
along the fibres, so that highly irregular sampling still gives an ODF; it is an elaborate
start for calcODF and acts as a regularisation. Before every solve the nodes whose share
is below thinning times the uniform one are removed. MATLAB's second output alpha is not
returned; MATLAB's flag nothinning is thinning=0. Further keywords go to MLSSolver.

## Input

| | |
|---|---|
| `pf` | PoleFigure |

## Output

| | |
|---|---|
| `odf` | SO3FunRBF |

## Keywords

| | default | |
|---|---|---|
| `resolution` | `None` | the resolution of the finest grid, by default that of the pole figures |
| `halfwidth` | `None` | the target halfwidth of the ansatz functions, by default the resolution |
| `kernel` | `None` | SO3Kernel, whose type gives the ansatz functions and whose halfwidth the target, instead of the de la Vallee Poussin kernel |
| `maxSteps` | `5` | the number of halfwidths of the ladder |
| `thinning` | `0.025` | remove the nodes below this fraction of the uniform share; 0 keeps all |
| `verbose` | `False` | report the fit of every pole figure in every step |

## References

- F. Bachmann, Texturbestimmung aus Beugungsbildern, in: Optimierung der Goniometrie zur Texturbestimmung aus Roentgenbeugungsbildern, Springer Spektrum, Wiesbaden (2016)

## See also

[calcODF](calcODF_py.html), [MLSSolver](MLSSolver_index_py.html), [PoleFigureRefinement](PoleFigureRefinement_py.html)

## Used on

[PoleFigureRefinement](PoleFigureRefinement_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/pf2odf.py#L562">source</a></font>
{% endraw %}
