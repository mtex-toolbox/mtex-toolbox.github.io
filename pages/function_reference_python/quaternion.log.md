---
title: 'quaternion.log'
sidebar: function_reference_sidebar
permalink: quaternion.log_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.log.html
status: Reference
---
{% raw %}
A method of [quaternion](quaternion_index_py.html).

the tangent vector pointing from the reference, the identity by default, to this rotation

## Syntax

<div class="mx-form" markdown="1">

```python
t = log(rot)
```

The rotation vector at the identity.

</div>

<div class="mx-form" markdown="1">

```python
t = log(rot, rotRef)
```

The tangent vector at a reference.

</div>

<div class="mx-form" markdown="1">

```python
t = log(rot, rotRef, side='right')
```

In the frame of the reference's crystal.

</div>

<div class="mx-form" markdown="1">

```python
t = log(rot, 'right')
```

The side alone, at the identity.

</div>

## Description

The logarithmic map: the vector, of length the rotational angle, whose exponential at the
reference gives the rotation. On the left side the vector is that of rot * inv(rotRef),
in the specimen's coordinates; on the right that of inv(rotRef) * rot, in the crystal's.
orientation.log reduces the pair by the symmetry first.

## Input

| `rot` | rotation |
| `ref` | rotation, the reference, or 'left' or 'right' for the side alone |

## Keywords

| keyword | default | description |
|---|---|---|
| `side` | `'left'` | 'left' or 'right', the side the tangent vector is taken on |

## Output

| `t` | SO3TangentVector at the reference |

## See also

quaternion.exp, [SO3TangentVector](SO3TangentVector_index_py.html), [geodesic](geodesic_py.html)

MATLAB's [quaternion.log](quaternion.log.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L352">source</a></font>
{% endraw %}
