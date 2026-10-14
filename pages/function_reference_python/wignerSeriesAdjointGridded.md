---
title: 'wignerSeriesAdjointGridded'
sidebar: function_reference_sidebar
permalink: wignerSeriesAdjointGridded_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the SO(3) coefficients up to bandwidth L from weighted values, every rotation rounded to the
nearest node of a Clenshaw-Curtis grid and the grid's FFT adjoint taken, MATLAB's 'gridded';
approximate, and its cost independent of the number of rotations

## Syntax

<div class="mx-form" markdown="1">

```python
fhat = wignerSeriesAdjointGridded(rots, values, 8)
```

The weights 1/n.

</div>

<div class="mx-form" markdown="1">

```python
fhat = wignerSeriesAdjointGridded(rots, values, 8, weights=w, folds=(2, 1))
```

Weighted, a twofold axis.

</div>

## Description

The weighted values are summed at the nearest node of a Clenshaw-Curtis grid of bandwidth
min(2L, max(L, 128)) and the grid's exact adjoint taken; the error is at most half the grid's
spacing, which a kernel of bandwidth L hardly sees. MATLAB's SO3FunHarmonic.adjoint(...,
'gridded').

## Input

| `rots` | rotations |
| `values` | the values at the rotations |
| `L` | the bandwidth |

## Keywords

| keyword | default | description |
|---|---|---|
| `weights` | `None` | the weight of every rotation; by default 1/n |
| `folds` | `(1, 1)` | (rA, rB), the folds about z of the result, which the grid then covers only the folded region of |

## Output

| `fhat` | the Wigner coefficients, internal convention |

## See also

[wignerSeriesAdjoint](wignerSeriesAdjoint_py.html), SO3FunHarmonic.adjoint

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/transforms.py#L1044">source</a></font>
{% endraw %}
