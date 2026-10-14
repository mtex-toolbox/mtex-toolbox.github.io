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
search geometric data for neighbours, or find nonzero entries of numeric data.

## Syntax

<div class="mx-form" markdown="1">

```python
indices, distances = find(grid, query)
```

</div>

## Description

For an MTEX object, find(x, ...) calls x.find(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

For numeric arrays without an MTEX method, this calls numpy.flatnonzero.

## Signature

<div class="mx-form" markdown="1">

```python
find(x, *args, **kwargs)
```

</div>

## Methods it calls

| [fibonacciS2Grid](fibonacciS2Grid.find_py.html) | the nearest grid point of every direction and its angle, or with eps the sparse matrices of the points within eps and their angles |
| [orientation](orientation.find_py.html) | the orientations of ori nearest to w up to symmetry, MATLAB's orientation.find |
| [S2Grid](S2Grid.find_py.html) | the nearest grid point of every direction and its angle, or with eps the sparse matrices of the points within eps and their angles |
| [SO3FibonacciGrid](SO3FibonacciGrid.find_py.html) | the nearest grid rotation of every orientation, or the k nearest, or all within a radius, up to the symmetries of the grid's frames |
| [SO3Grid](SO3Grid.find_py.html) | the nearest grid rotation of every orientation, or the k nearest, or all within a radius, up to the symmetries of the grid's frames |
| [vector3d](vector3d.find_py.html) | the closest points of this list to others, the k closest, or all within a radius |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
