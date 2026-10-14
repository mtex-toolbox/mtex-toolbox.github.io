---
title: 'MLSSolver.initRegularisation'
sidebar: function_reference_sidebar
permalink: MLSSolver.initRegularisation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: MLSSolver.initRegularisation.html
status: Reference
---
{% raw %}
A method of [MLSSolver](MLSSolver_index_py.html).

sets the regularisation matrix of the solver, its weight times a discrete Laplacian on
the grid; MATLAB's initRegularisation

## Syntax

<div class="mx-form" markdown="1">

```python
solver.initRegularisation()
```

The neighbours within two halfwidths.

</div>

<div class="mx-form" markdown="1">

```python
solver.initRegularisation(epsilon=15*degree)
```

Within 15 degree.

</div>

## Description

Off the diagonal the matrix holds minus the dots of the grid orientations closer than
epsilon, on the diagonal minus the sum of the row's other entries. init calls it when the
solver has a regularisation weight.

## Input

| `solver` | MLSSolver, initialised |

## Keywords

| keyword | default | description |
|---|---|---|
| `epsilon` | `None` | the radius of the neighbours, by default twice the halfwidth of the kernel |

## Output

| `solver` | the solver, its RM set |

## See also

[MLSSolver](MLSSolver_index_py.html), [calcODF](calcODF_py.html)

MATLAB's [MLSSolver.initRegularisation](MLSSolver.initRegularisation.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/pf2odf.py#L325">source</a></font>
{% endraw %}
