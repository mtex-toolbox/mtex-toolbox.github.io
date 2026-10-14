---
title: 'rotation.cat'
sidebar: function_reference_sidebar
permalink: rotation.cat_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.cat.html
status: Reference
---
{% raw %}
A method of [rotation](rotation_index_py.html).

the list of the operands, MATLAB's [r1, r2]; joining rotations with an improper transform
gives an orthogonalTransform, orientations stay orientations between the same frames

## Syntax

<div class="mx-form" markdown="1">

```python
rot = cat(rot1, rot2)
```

One after the other.

</div>

<div class="mx-form" markdown="1">

```python
rot = cat(rot1, rot2, axis=1)
```

Side by side.

</div>

## Description

Orientations must share their frames.

## Input

| `arrays` | the rotations, orientations or orthogonal transforms |

## Keywords

| keyword | default | description |
|---|---|---|
| `axis` | `0` | the axis along which they are joined, as NumPy's concatenate |

## Output

| `rot` | the joined list, of the class of the operands |

## See also

[vector3d.cat](vector3d.cat_py.html)

MATLAB's [rotation.cat](rotation.cat.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L758">source</a></font>
{% endraw %}
