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

<div class="mx-form" markdown="1">

```python
odf = calcODFIterative(pf)
```

The defaults.

</div>

<div class="mx-form" markdown="1">

```python
odf = calcODFIterative(pf, halfwidth=5*degree)
```

The target halfwidth.

</div>

<div class="mx-form" markdown="1">

```python
odf = calcODFIterative(pf, thinning=0)
```

Every node of every grid kept.

</div>

## Description

Where the pole figures are sampled very irregularly, a coarse model fills the gaps with
volume along the fibres it justifies, and finer models refine it. The method is an
elaborate start for calcODF and acts as a regularisation.

The halfwidths run from sqrt(e)^(maxSteps-1) times the target down to the target, the
steps whose grid would be coarser than 45 degree left out. Each step solves on an
equispaced grid of its own resolution, starting from the previous ODF evaluated on that
grid (MATLAB interpolates it), the first from the uniform ODF. Before every solve the
nodes whose share is below thinning times the uniform one are removed.

MATLAB's second output alpha is not returned; MATLAB's flag nothinning is thinning=0.
Further keywords go to MLSSolver.

## Input

| `pf` | PoleFigure |

## Keywords

| keyword | default | description |
|---|---|---|
| `resolution` | `None` | the resolution of the finest grid, by default that of the pole figures |
| `halfwidth` | `None` | the target halfwidth of the ansatz functions, by default the resolution |
| `kernel` | `None` | SO3Kernel, whose type gives the ansatz functions and whose halfwidth the target, instead of the de la Vallee Poussin kernel |
| `maxSteps` | `5` | the number of halfwidths of the ladder |
| `thinning` | `0.025` | remove the nodes below this fraction of the uniform share; 0 keeps all |
| `verbose` | `False` | report the fit of every pole figure in every step |

## Output

| `odf` | SO3FunRBF |

## References

- F. Bachmann, Texturbestimmung aus Beugungsbildern, in: Optimierung der Goniometrie zur Texturbestimmung aus Roentgenbeugungsbildern, Springer Spektrum, Wiesbaden (2016)

## See also

[calcODF](calcODF_py.html), [MLSSolver](MLSSolver_index_py.html), [PoleFigureRefinement](PoleFigureRefinement_py.html)

## Used on

[PoleFigureRefinement](PoleFigureRefinement_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/pf2odf.py#L593">source</a></font>
{% endraw %}
