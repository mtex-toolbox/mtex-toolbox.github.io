---
title: 'vector3d.dot'
sidebar: function_reference_sidebar
permalink: vector3d.dot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.dot.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the inner product of two vectors, pointwise; of crystal directions the largest over their
symmetric equivalents

## Syntax

<div class="mx-form" markdown="1">

```python
d = dot(v1, v2)
```

Pointwise, broadcast against each other.

</div>

<div class="mx-form" markdown="1">

```python
d = dot(v1, v2, antipodal=True)
```

Up to sign: the absolute value.

</div>

<div class="mx-form" markdown="1">

```python
d = dot(m1, m2, symmetry=False)
```

Crystal directions as they are given.

</div>

<div class="mx-form" markdown="1">

```python
d = dot(m1, m2, min=True)
```

The smallest over the symmetric equivalents.

</div>

<div class="mx-form" markdown="1">

```python
d = dot(m1, m2, all=True)
```

Every symmetric equivalent.

</div>

<div class="mx-form" markdown="1">

```python
d = dot(v1, v2, outer=True)
```

Every pair, MATLAB's dot_outer.

</div>

## Description

An axis on either side reads the product up to sign; antipodal=True does so always,
antipodal=False never. Crystal directions in a frame with symmetry give the largest product
over their symmetric equivalents.

## Input

| `v1, v2` | vector3d |
| `m1, m2` | vector3d in one crystal frame |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `None` | read the vectors as axes: True always, False never; by default where one of them is an axis |
| `symmetry` | `True` | take the symmetric equivalents of crystal directions into account |
| `min` | `False` | the smallest product over the symmetric equivalents instead of the largest |
| `all` | `False` | the products with every symmetric equivalent, along a new first axis |
| `outer` | `False` | every entry of v1 with every entry of v2 |

## Output

| `d` | array, of the broadcast shape; with outer=True of shape v1.shape + v2.shape |

## See also

[vector3d.angle](vector3d.angle_py.html), [vector3d.cross](vector3d.cross_py.html), [vector3d.norm](vector3d.norm_py.html)

MATLAB's [vector3d.dot](vector3d.dot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L768">source</a></font>
{% endraw %}
