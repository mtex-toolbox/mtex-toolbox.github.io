---
title: 'S2Grid.find'
sidebar: function_reference_sidebar
permalink: S2Grid.find_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Grid.find.html
status: Reference
---
{% raw %}
A method of [S2Grid](S2Grid_index_py.html).

the nearest grid point of every direction and its angle, or with eps the sparse matrices of
the points within eps and their angles; MATLAB's S2Grid.find

## Syntax

<div class="mx-form" markdown="1">

```python
ind, d = S2G.find(v)
```

The nearest grid point and the angle to it.

</div>

<div class="mx-form" markdown="1">

```python
I, d = S2G.find(v, 10*degree)
```

Every grid point within 10 degree.

</div>

## Description

The search for the nearest point runs over the rings, a binary search in the polar angle and in
the azimuth of each ring near it; the search within eps through a k-d tree. On an antipodal grid a direction and its antipode are the same.

## Input

| `S2G` | S2Grid |
| `v` | vector3d, the directions searched for |

## Keywords

| keyword | default | description |
|---|---|---|
| `eps` | `None` | the radius of the search; by default only the nearest point is returned |

## Output

| `ind` | the index of the nearest grid point, of the shape of v |
| `d` | its angle to v; with eps a sparse matrix (directions x grid) of the angles |
| `I` | with eps a sparse boolean matrix (directions x grid) of the grid points within eps |

## See also

[equispacedS2Grid](equispacedS2Grid_py.html), [S2Grid.subGrid](S2Grid.subGrid_py.html), [fibonacciS2Grid.find](fibonacciS2Grid.find_py.html)

MATLAB's [S2Grid.find](S2Grid.find.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/s2grid.py#L221">source</a></font>
{% endraw %}
