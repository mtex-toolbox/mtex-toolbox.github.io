---
title: 'S1Grid.S1Grid'
sidebar: function_reference_sidebar
permalink: S1Grid.S1Grid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1Grid.S1Grid.html
status: Reference
---
{% raw %}
a sorted list of angles on an interval [min, max], periodic or not, the nearest neighbour and
radius search of the tensor product grids S2Grid and SO3Grid

## Syntax

The angles of a circle:

```python
S1G = S1Grid(np.arange(0, 360, 10)*degree, 0, 2*np.pi, periodic=True)
```

Angles on an interval:

```python
S1G = S1Grid(points, 0, 1)
```

The interval from the smallest to the largest point:

```python
S1G = S1Grid(points)
```

The points are sorted. Its use is the fast search: S1G.nearest(x), S1G.neighbours(x, eps)
within a radius and S1G.dist(x, y), binary searches, plain arithmetic on an equispaced
ladder; on a periodic grid min and max are identified and the distance wraps around the
period max - min.
MATLAB's option 'matrix', one grid per column of points, is not taken.

## Input

| | |
|---|---|
| `points` | array of angles, in radians |
| `min` | the start of the interval, by default the smallest point |
| `max` | the end of the interval, by default the largest point |

## Output

| | |
|---|---|
| `S1G` | S1Grid |

## Keywords

| | default | |
|---|---|---|
| `periodic` | `False` | identify min and max: the grid lies on a circle of length max - min |

## See also

[S2Grid](S2Grid_index_py.html), [SO3Grid](SO3Grid_index_py.html), [equispacedSO3Grid](equispacedSO3Grid_py.html)

MATLAB's [S1Grid.S1Grid](S1Grid.S1Grid.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/s1grid.py#L10">source</a></font>
{% endraw %}
