---
title: 'The class SO3FibonacciGrid'
sidebar: function_reference_sidebar
permalink: SO3FibonacciGrid_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the super-Fibonacci grid of orientations, a low-discrepancy quaternion spiral trimmed to one
fundamental region of the frame pair, searched through the quaternion k-d tree; built by
superfibonacciSO3Grid

## Syntax

```python
S3G = superfibonacciSO3Grid(cs, ss, resolution=5*degree)
```

## Members

| | |
|---|---|
| [find](SO3FibonacciGrid.find_py.html) | the nearest grid rotation of every orientation, or the k nearest, or all within a radius, up to the symmetries of the grid's frames |
| [resolution](SO3FibonacciGrid.resolution_py.html) | the mean nearest-neighbour spacing the grid was built for, in radians |
| [subGrid](SO3FibonacciGrid.subGrid_py.html) | the grid of the orientations a mask or an index array selects |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/superfibonacci.py#L30">source</a></font>
{% endraw %}
