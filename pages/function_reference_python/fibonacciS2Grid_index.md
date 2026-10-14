---
title: 'The class fibonacciS2Grid'
sidebar: function_reference_sidebar
permalink: fibonacciS2Grid_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the spherical Fibonacci grid: N = 2n + 1 points along a spiral, z linear in the index and
the azimuth advancing by the golden angle; by default the count fitting a resolution of 5 degree

## Syntax

```python
S2G = fibonacciS2Grid(1000)
S2G = fibonacciS2Grid(resolution=2*degree)
```

## Members

| | |
|---|---|
| [fibonacciS2Grid](fibonacciS2Grid.fibonacciS2Grid_py.html) | the spherical Fibonacci grid: N = 2n + 1 points along a spiral, z linear in the index and the azimuth advancing by the golden angle |
| [find](fibonacciS2Grid.find_py.html) | the nearest grid point of every direction and its angle, or with eps the sparse matrices of the points within eps and their angles |
| [neighbourIndices](fibonacciS2Grid.neighbourIndices_py.html) | the indices of the grid points within the angle eps of the direction v |
| [plus](fibonacciS2Grid.plus_py.html) |  |
| [resolution](fibonacciS2Grid.resolution_py.html) | the resolution of the grid, the spacing its number of points gives |

## Used on

[VectorGrids](VectorGrids_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/fibonacci.py#L13">source</a></font>
{% endraw %}
