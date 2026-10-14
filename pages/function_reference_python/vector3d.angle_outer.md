---
title: 'vector3d.angle_outer'
sidebar: function_reference_sidebar
permalink: vector3d.angle_outer_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.angle_outer.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the angle between two vectors; of crystal directions the smallest over their symmetric
equivalents

## Syntax

<div class="mx-form" markdown="1">

```python
omega = angle(v1, v2)
```

Pointwise, broadcast against each other.

</div>

<div class="mx-form" markdown="1">

```python
omega = angle(v1, v2, antipodal=True)
```

Between axes, at most 90 degree.

</div>

<div class="mx-form" markdown="1">

```python
omega = angle(h1, h2, symmetry=False)
```

Crystal directions as they are given.

</div>

<div class="mx-form" markdown="1">

```python
omega = angle(v1, v2, N)
```

In the plane normal to N, from 0 to 2 pi.

</div>

<div class="mx-form" markdown="1">

```python
omega = angle(v1, v2, outer=True)
```

Every pair, MATLAB's angle_outer.

</div>

## Description

The angle is taken through atan2 of the cross and the inner product, accurate near 0 and
pi. An axis on either side reads it up to sign; antipodal=True does so always,
antipodal=False never. With a normal N both vectors are projected to the plane normal to N
and the angle is counted counterclockwise about N from v1 to v2.

## Input

| `v1, v2` | vector3d |
| `h1, h2` | vector3d in one crystal frame |
| `N` | vector3d, the normal of the plane the angle is measured in |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `None` | read the vectors as axes: True always, False never; by default where one of them is an axis |
| `symmetry` | `True` | take the symmetric equivalents of crystal directions into account |
| `outer` | `False` | every entry of v1 with every entry of v2 |

## Output

| `omega` | array, in radians; with outer=True of shape v1.shape + v2.shape |

## See also

[vector3d.dot](vector3d.dot_py.html), [vector3d.cross](vector3d.cross_py.html), [VectorsAxes](VectorsAxes_py.html), [CrystalOperations](CrystalOperations_py.html)

MATLAB's [vector3d.angle_outer](vector3d.angle_outer.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L811">source</a></font>
{% endraw %}
