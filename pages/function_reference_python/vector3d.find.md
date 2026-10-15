---
title: 'vector3d.find'
sidebar: function_reference_sidebar
permalink: vector3d.find_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.find.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the closest points of this list to others, the k closest, or all within a radius; up to sign
where either is antipodal, antipodal=True always, False never

## Syntax

<div class="mx-form" markdown="1">

```python
ind, d = v.find(w)
```

The nearest of v to every w, and its angle.

</div>

<div class="mx-form" markdown="1">

```python
ind, d = v.find(w, 3)
```

The 3 nearest, an integer.

</div>

<div class="mx-form" markdown="1">

```python
I, D = v.find(w, 5*degree)
```

All within 5 degree, a float.

</div>

## Description

The angles are reduced over the group of a crystal frame. Within a radius the result is
two sparse matrices of len(w) x len(v), the hits and the angles; large lists of specimen
directions are searched by a tree.

## Input

| `v` | vector3d, the list searched |
| `w` | vector3d, the directions searched for |
| `epsOrK` | the number of neighbours, an integer, or the radius, a float |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `None` | read the directions up to sign; by default where v or w is antipodal |

## Output

| `ind` | the indices into v, in the shape of w; (len(w), k) for k neighbours |
| `d` | the angles to them |
| `I, D` | sparse matrices of the hits and of the angles |

## See also

[vector3d.angle](vector3d.angle_py.html), [S2Grid.find](S2Grid.find_py.html)

MATLAB's [vector3d.find](vector3d.find.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L1266">source</a></font>
{% endraw %}
