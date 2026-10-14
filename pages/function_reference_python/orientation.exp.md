---
title: 'orientation.exp'
sidebar: function_reference_sidebar
permalink: orientation.exp_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.exp.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the rotation a tangent vector at this reference points to, exp(ori, v) of MATLAB

## Syntax

<div class="mx-form" markdown="1">

```python
rot = exp(rotRef, v)
```

V a rotation vector in the specimen's coordinates.

</div>

<div class="mx-form" markdown="1">

```python
ori = exp(oriRef, Miller(...))
```

A crystal direction, taken on the right.

</div>

<div class="mx-form" markdown="1">

```python
ori = exp(oriRef, v, side='right')
```

V in the crystal's coordinates.

</div>

## Description

The exponential map: the rotation exp(v) * ref on the left side, ref * exp(v) on the
right, so that log(exp(ref, v), ref) is v again. An SO3TangentVector carries its own
reference and side, and this reference is ignored. The vectors and the references must
have one shape; they do not broadcast.

## Input

| `ref` | rotation or orientation, the reference |
| `v` | vector3d, a rotation vector, or an SO3TangentVector |

## Keywords

| keyword | default | description |
|---|---|---|
| `side` | `None` | 'left' or 'right'; by default right for a vector in a crystal frame, left otherwise |

## Output

| `rot` | rotation or orientation of the frames of the reference |

## See also

[quaternion.log](quaternion.log_py.html), [vector3d.exp](vector3d.exp_py.html), [SO3TangentVector](SO3TangentVector_index_py.html)

MATLAB's [orientation.exp](orientation.exp.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L466">source</a></font>
{% endraw %}
