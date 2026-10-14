---
title: 'SO3FibonacciGrid.find'
sidebar: function_reference_sidebar
permalink: SO3FibonacciGrid.find_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [SO3FibonacciGrid](SO3FibonacciGrid_index_py.html).

the nearest grid rotation of every orientation, or the k nearest, or all within a radius,
up to the symmetries of the grid's frames; MATLAB's SO3FibonacciGrid.find

## Syntax

<div class="mx-form" markdown="1">

```python
ind, d = S3G.find(ori)
```

The nearest grid point, d = cos(w/2).

</div>

<div class="mx-form" markdown="1">

```python
ind, d = S3G.find(ori, 3)
```

The 3 nearest, d their angles.

</div>

<div class="mx-form" markdown="1">

```python
I, D = S3G.find(ori, 10*degree)
```

Every grid point within 10 degree.

</div>

## Description

The angle w is the misorientation angle reduced by the symmetries of both frames. As
MATLAB's SO3Grid.find, the nearest form gives cos(w/2), the other two the angles. Every search goes through a
quaternion k-d tree.

## Input

| `S3G` | SO3FibonacciGrid |
| `ori` | orientation, or rotations taken between the grid's frames |

## Keywords

| keyword | default | description |
|---|---|---|
| `epsOrK` | `None` | an integer k for the k nearest, a float for the radius of the search |

## Output

| `ind` | the index of the nearest grid point, of the shape of ori; with k a (n, k) array |
| `d` | cos(w/2) of the nearest; with k the (n, k) angles |
| `I, D` | with a radius the sparse incidence and the sparse angles, (n x grid) |

## See also

[superfibonacciSO3Grid](superfibonacciSO3Grid_py.html), [SO3Grid.find](SO3Grid.find_py.html), [orientation.find](orientation.find_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/superfibonacci.py#L61">source</a></font>
{% endraw %}
