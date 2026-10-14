---
title: 'SO3Grid.find'
sidebar: function_reference_sidebar
permalink: SO3Grid.find_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Grid.find.html
status: Reference
---
{% raw %}
A method of [SO3Grid](SO3Grid_index_py.html).

the nearest grid rotation of every orientation, or the k nearest, or all within a radius,
up to the symmetries of the grid's frames; MATLAB's SO3Grid.find

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
MATLAB's SO3Grid.find, the nearest form gives cos(w/2), the other two the angles. The nearest and the k nearest go
through a quaternion k-d tree, the radius search through the structured search of the
equispaced grid, its rings and windows.

## Input

| `S3G` | SO3Grid |
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

[equispacedSO3Grid](equispacedSO3Grid_py.html), [SO3Grid.radius](SO3Grid.radius_py.html), [orientation.find](orientation.find_py.html)

MATLAB's [SO3Grid.find](SO3Grid.find.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/so3grid.py#L118">source</a></font>
{% endraw %}
