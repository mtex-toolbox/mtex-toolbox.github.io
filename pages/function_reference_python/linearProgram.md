---
title: 'linearProgram'
sidebar: function_reference_sidebar
permalink: linearProgram_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the minimiser of a linear program in standard form, min c.x under A x = b, x >= 0

## Syntax

The solution, None when there is none:

```python
x = linearProgram(c, A, b)
```

With its status, pivot count and residual:

```python
res = linearProgram(c, A, b, diagnostics=True)
```

A scaled two phase simplex with Bland's rule, the kind of program the Taylor model solves
for every strain: phase one finds a feasible vertex on artificial variables, every row scaled to unit
size, phase two walks to the optimum. Without diagnostics the result is None when the
program is infeasible, unbounded, out of iterations or numerically failed; with diagnostics a
LinearProgramResult (solution, status, iterations, residual), the residual the largest
entry of |A x - b| relative to max(1, |b|).

## Input

| | |
|---|---|
| `c` | the cost vector, n numbers |
| `A` | the m x n matrix of the constraints |
| `b` | the right hand side, m numbers |

## Output

| | |
|---|---|
| `x` | the minimiser, n numbers, or None |
| `res` | LinearProgramResult |

## Keywords

| | default | |
|---|---|---|
| `tol` | `1e-09` | the tolerance below which a reduced cost or a pivot counts as zero |
| `maxIter` | `10000` | the largest number of pivots |
| `diagnostics` | `False` | return a LinearProgramResult instead of the bare solution |

## See also

[calcTaylor](velocityGradientTensor.calcTaylor_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/analysis/taylor.py#L79">source</a></font>
{% endraw %}
