---
title: 'orientation.find'
sidebar: function_reference_sidebar
permalink: orientation.find_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.find.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the orientations of ori nearest to w up to symmetry, MATLAB's orientation.find

## Syntax

<div class="mx-form" markdown="1">

```python
ind, d = ori.find(w)
```

The nearest of ori to every w.

</div>

<div class="mx-form" markdown="1">

```python
ind, d = ori.find(w, 5)
```

The 5 nearest.

</div>

<div class="mx-form" markdown="1">

```python
I, D = ori.find(w, 5*degree)
```

All within 5 degree.

</div>

## Description

The distance is the misorientation angle up to the symmetries of the frames, and the grain
exchange where ori is antipodal; d are angles. Long lists are searched through a
quaternion k-d tree, short ones by all the angles.

## Input

| `ori` | orientation, the list searched |
| `w` | orientation, the orientations searched for |

## Keywords

| keyword | default | description |
|---|---|---|
| `epsOrK` | `None` | an integer k for the k nearest, a float for the radius of the search |

## Output

| `ind` | the index into ori of the nearest, of the shape of w; with k a (len(w), k) array of distinct indices |
| `d` | the angles, of the shape of ind |
| `I, D` | with a radius the sparse incidence and the sparse angles, (len(w) x len(ori)) |

## See also

[vector3d.find](vector3d.find_py.html), [SO3Grid.find](SO3Grid.find_py.html), [orientation.angle](orientation.angle_py.html)

MATLAB's [orientation.find](orientation.find.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L775">source</a></font>
{% endraw %}
