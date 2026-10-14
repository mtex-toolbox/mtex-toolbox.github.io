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
| [orientation](orientation.find_py.html) | the orientations of ori nearest to w up to symmetry, MATLAB's orientation.find |
| [S2Grid](S2Grid.find_py.html) | the nearest grid point of every direction and its angle, or with eps the sparse matrices of the points within eps and their angles |
| [SO3FibonacciGrid](SO3FibonacciGrid.find_py.html) | the nearest grid rotation of every orientation, or the k nearest, or all within a radius, up to the symmetries of the grid's frames |
| [SO3Grid](SO3Grid.find_py.html) | the nearest grid rotation of every orientation, or the k nearest, or all within a radius, up to the symmetries of the grid's frames |
| [vector3d](vector3d.find_py.html) | the closest points of this list to others, the k closest, or all within a radius |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
