---
title: 'Miller.round'
sidebar: function_reference_sidebar
permalink: Miller.round_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: Miller.round.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the direction with its indices, or its coordinates, rounded to small integers

## Syntax

<div class="mx-form" markdown="1">

```python
m = round(m)
```

The indices of the display rounded.

</div>

<div class="mx-form" markdown="1">

```python
m = round(m, maxHKL=5)
```

No index larger than 5.

</div>

<div class="mx-form" markdown="1">

```python
m = round(m, 'uvw')
```

The direct indices integer.

</div>

<div class="mx-form" markdown="1">

```python
v = round(v, maxXYZ=5)
```

The Cartesian coordinates of a vector.

</div>

<div class="mx-form" markdown="1">

```python
v = round(v, accuracy=0.1*degree)
```

Rounded only where it turns by less.

</div>

<div class="mx-form" markdown="1">

```python
m, err = round(m, return_error=True)
```

Also the angle the rounding turned it by.

</div>

## Description

The direction is scaled so that its largest index is 1, 2, ..., maxHKL, and the scale
that brings the indices nearest to integers is kept. For a trigonal or hexagonal lattice the three and the four index forms
are not integer at the same time, UVTW = (1, 3, -4, 8) is uvw = (5, 7, 8)/3, so style says
which is rounded. A vector without a lattice has its Cartesian coordinates rounded and
keeps them where the rounding would turn it by more than the accuracy.

## Input

| `m` | vector3d in a crystal frame |
| `v` | vector3d |

## Keywords

| keyword | default | description |
|---|---|---|
| `style` | `None` | the indices rounded, 'hkl', 'hkil', 'uvw' or 'UVTW'; by default those of the display |
| `maxHKL` | `12` | the largest index of a crystal direction |
| `maxXYZ` | `12` | the largest coordinate of a vector without a lattice |
| `accuracy` | `1*degree` | the largest angle the rounding may turn a vector without a lattice by, in radians |
| `return_error` | `False` | also return the angle the rounding turned the directions by |

## Output

| `m, v` | vector3d, the rounded directions |
| `err` | array, the angle between the given and the rounded direction, without symmetric equivalents, with return_error=True |

## See also

[vector3d.char](vector3d.char_py.html), [Miller](Miller_py.html), [CrystalDirections](CrystalDirections_py.html)

## Used on

[NotationAndConventions](NotationAndConventions_py.html), [EllipseBasedParameters](EllipseBasedParameters_py.html), [OrientationRelationshipFit](OrientationRelationshipFit_py.html), [MagneticAnisotropy](MagneticAnisotropy_py.html)

MATLAB's [Miller.round](Miller.round.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L291">source</a></font>
{% endraw %}
