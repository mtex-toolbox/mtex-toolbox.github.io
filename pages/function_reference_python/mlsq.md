---
title: 'mlsq'
sidebar: function_reference_sidebar
permalink: mlsq_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: mlsq.html
status: Reference
---
{% raw %}
MATLAB's mlsq: least squares over weights of the sign of the start, the steepest descent
direction scaled by the weights so that none crosses zero

## Syntax

A c = y with c >= 0, starting at c0:

```python
c, k = mlsq(A, y, c0)
```

Other bounds of the iteration:

```python
c, k = mlsq(A, y, c0, maxIter=10, tol=1e-6)
```

The modified least squares of A c = y keeps the weights of one sign and, when the start sums
to one, their sum: each step moves along the gradient projected against the weights and
multiplied by them, with a step length bounded so that no weight changes sign. It stops when
the residual decreases by less than tol. Unlike MATLAB the start is required, A is a matrix
(not a function handle), and tol defaults to 1e-3 instead of 1e-5.

## Input

| | |
|---|---|
| `A` | ndarray or sparse matrix, N x M |
| `y` | ndarray of N values |
| `c0` | ndarray of M real start weights, ones(M)/M as MATLAB's default |

## Output

| | |
|---|---|
| `c` | ndarray of the M weights |
| `k` | the number of iterations |

## Keywords

| | default | |
|---|---|---|
| `maxIter` | `100` | the largest number of iterations, MATLAB's itermax |
| `tol` | `0.001` | the smallest decrease of the residual's norm that continues |

## See also

[summationMatrix](summationMatrix_py.html), [SO3FunRBF.interpolate](SO3FunRBF.interpolate_py.html)

MATLAB's [mlsq](mlsq.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/rbfinterpolation.py#L70">source</a></font>
{% endraw %}
