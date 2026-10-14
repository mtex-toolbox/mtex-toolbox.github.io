---
title: 'vector3d.exp'
sidebar: function_reference_sidebar
permalink: vector3d.exp_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.exp.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the rotation vector to its rotation: at the identity, or at a reference as a tangent vector

## Syntax

<div class="mx-form" markdown="1">

```python
rot = exp(v)
```

The rotation of axis v and angle |v|.

</div>

<div class="mx-form" markdown="1">

```python
mori = exp(h)
```

A crystal direction: a misorientation of its frame.

</div>

<div class="mx-form" markdown="1">

```python
ori = exp(h, oriRef)
```

At a reference orientation.

</div>

## Description

A vector in a crystal frame gives the misorientation of that frame with itself, and is
taken on the right of a reference; a specimen vector on the left.

## Input

| `v` | vector3d or Miller, the rotation vector: the axis times the angle |
| `ref` | rotation or orientation, the reference |

## Keywords

| keyword | default | description |
|---|---|---|
| `side` | `None` | 'left' or 'right', the side of the reference; by default right for a crystal direction, left otherwise |

## Output

| `rot` | rotation, or orientation for a crystal direction or a reference orientation |

## See also

[quaternion.log](quaternion.log_py.html), quaternion.exp, [SO3TangentVector](SO3TangentVector_index_py.html)

MATLAB's [vector3d.exp](vector3d.exp.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L1040">source</a></font>
{% endraw %}
