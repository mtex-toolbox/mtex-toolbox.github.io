---
title: 'fibonacciS2Grid.find'
sidebar: function_reference_sidebar
permalink: fibonacciS2Grid.find_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [fibonacciS2Grid](fibonacciS2Grid_index_py.html).

the nearest grid point of every direction and its angle, or with eps the sparse matrices of
the points within eps and their angles; MATLAB's fibonacciS2Grid.find

## Syntax

The nearest grid point and the angle to it:

```python
ind, d = S2G.find(v)
```

Every grid point within 10 degree:

```python
I, d = S2G.find(v, 10*degree)
```

The search runs through a k-d tree of the grid points. On an antipodal grid a direction and its antipode are the same.

## Input

| | |
|---|---|
| `S2G` | fibonacciS2Grid |
| `v` | vector3d, the directions searched for |

## Output

| | |
|---|---|
| `ind` | the index of the nearest grid point, of the shape of v |
| `d` | its angle to v; with eps a sparse matrix (directions x grid) of the angles |
| `I` | with eps a sparse boolean matrix (directions x grid) of the grid points within eps |

## Keywords

| | default | |
|---|---|---|
| `eps` | `None` | the radius of the search; by default only the nearest point is returned |

## See also

[fibonacciS2Grid](fibonacciS2Grid_index_py.html), [S2Grid.find](S2Grid.find_py.html), [vector3d.find](vector3d.find_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/fibonacci.py#L59">source</a></font>
{% endraw %}
