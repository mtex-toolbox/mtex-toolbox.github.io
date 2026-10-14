---
title: 'find'
sidebar: function_reference_sidebar
permalink: find_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
find(x, ...) is x.find(...), the method of the object passed; NumPy's flatnonzero for an array

## Syntax

```python
find(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [fibonacciS2Grid](fibonacciS2Grid.find_py.html) | the nearest grid point of every direction and its angle, or with eps the sparse matrices of the points within eps and their angles |
| [orientation](orientation.find_py.html) | the orientations of ori nearest to w up to symmetry: the pair (ind, d) of the nearest, the k nearest for an integer, or two sparse matrices of those within the radius eps |
| [S2Grid](S2Grid.find_py.html) | the nearest grid point of every direction, or all within eps: an index per direction, or a sparse incidence matrix (directions x grid) with a sparse matrix of the angles |
| [SO3FibonacciGrid](SO3FibonacciGrid.find_py.html) | nearest (eps None), k nearest (int) or all within a radius (float), through the tree |
| [SO3Grid](SO3Grid.find_py.html) | the nearest grid rotation of every orientation, or the k nearest, or all within a radius, up to the symmetries of the grid's frames, through the quaternion k-d tree of orientationtree.py (MATLAB SO3Grid/find): cos(w/2) of the reduced misorientation angle w for the nearest, the angles for the k nearest and the radius |
| [vector3d](vector3d.find_py.html) | the closest points of this list to others, the k closest, or all within a radius |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
