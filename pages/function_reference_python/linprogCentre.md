---
title: 'linprogCentre'
sidebar: function_reference_sidebar
permalink: linprogCentre_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: linprogCentre.html
status: Reference
---
{% raw %}
the solutions of many linear programs min c.x under A x = y, x >= 0 at once, each the
analytic centre of its optimal face; MATLAB's linprogCentre

## Syntax

One program:

```python
x = linprogCentre(c, A, y)
```

One program per row of C and Y:

```python
x = linprogCentre(C, A, Y)
```

A coarser stop:

```python
x = linprogCentre(c, A, y, tol=1e-6, maxIter=20)
```

Where the optimum is not unique the solution is the centre of the optimal face, which is
symmetric where the program is, where a simplex gives any vertex of it; this is the choice
of the shears in the Taylor model. The programs are solved together by a primal dual path
following method, its Newton steps aimed at the central path at 0.3 mu.

## Input

| | |
|---|---|
| `c` | (n,) or (N, n), the costs |
| `A` | (m, n) or (N, m, n), the constraint matrix |
| `y` | (m,) or (N, m), the right hand sides |

## Output

| | |
|---|---|
| `x` | (n,) or (N, n), the solutions; NaN for a program that does not converge |

## Keywords

| | default | |
|---|---|---|
| `tol` | `1e-09` | the relative tolerance of the primal and dual residuals and the duality gap |
| `maxIter` | `100` | the largest number of Newton steps |

## See also

[linearProgram](linearProgram_py.html), [calcTaylor](velocityGradientTensor.calcTaylor_py.html), [TaylorModel](TaylorModel_index_py.html)

MATLAB's [linprogCentre](linprogCentre.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/taylor.py#L161">source</a></font>
{% endraw %}
