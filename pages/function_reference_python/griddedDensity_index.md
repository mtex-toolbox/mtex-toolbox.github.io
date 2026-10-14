---
title: 'The class griddedDensity'
sidebar: function_reference_sidebar
permalink: griddedDensity_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a density tabulated on a Cartesian grid and evaluated by cubic interpolation

## Syntax

<div class="mx-form" markdown="1">

```python
f = griddedDensity((x,), values)
y = f(queryX)
f = griddedDensity((x, y), values)
z = f(queryX, queryY)
```

</div>

## Description

One coordinate array defines each grid axis, with values.shape matching their lengths.
Evaluation broadcasts the query coordinates and returns one interpolated value per point.
Queries beyond the grid use spline extrapolation. Cubic interpolation can produce negative
values or overshoots even when all tabulated values are nonnegative; construction does not
renormalise the supplied samples.

## Input

| `grid` | tuple of increasing coordinate arrays, one per dimension |
| `values` | numeric values on the tensor-product grid |
| `bandwidth` | optional smoothing-width metadata carried with the result |

## Output

| `f` | callable griddedDensity, accepting one coordinate argument per dimension |

## Properties

| `grid` | coordinate axes of the stored samples |
| `values` | tabulated density values |
| `bandwidth` | smoothing-width metadata |

## See also

[calcDensity](calcDensity_py.html), [kde1d](kde1d_py.html), kde2d

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/kde.py#L41">source</a></font>
{% endraw %}
