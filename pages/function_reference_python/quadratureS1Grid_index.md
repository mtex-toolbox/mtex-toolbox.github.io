---
title: 'The class quadratureS1Grid'
sidebar: function_reference_sidebar
permalink: quadratureS1Grid_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
equally spaced angles and weights for Fourier quadrature on the circle

## Syntax

<div class="mx-form" markdown="1">

```python
grid = quadratureS1Grid(16)
x = grid.nodes()
average = np.sum(grid.weights * fun(x))
```

</div>

## Description

For bandwidth L the grid has `2*L+2` nodes in [0, `2*pi`), excluding the repeated endpoint.
Equal weights sum to one and integrate Fourier modes through degree `2*L+1` exactly.
Multiply the weighted mean by `2*pi` for the usual angular integral.

## Input

| `bandwidth` | nonnegative integer harmonic bandwidth L |
| `dtype` | floating-point type for nodes and weights; default np.float64 |

## Output

| `grid` | quadratureS1Grid |

## Properties

| `bandwidth` | requested harmonic bandwidth |
| `x` | node angles in radians |
| `weights` | equal normalised weights |

## See also

[S1FunHarmonic](S1FunHarmonic_index_py.html), [quadratureS2Grid](quadratureS2Grid_index_py.html)

## Members

| [nodes](quadratureS1Grid.nodes_py.html) | the nodes, 2L+2 equispaced angles in [0, 2 pi) |
| [weights](quadratureS1Grid.weights_py.html) | the quadrature weights, all equal and summing to one |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/quadrature.py#L410">source</a></font>
{% endraw %}
