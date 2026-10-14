---
title: 'rotation.dot'
sidebar: function_reference_sidebar
permalink: rotation.dot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.dot.html
status: Reference
---
{% raw %}
A method of [rotation](rotation_index_py.html).

the inner product up to sign, since q and -q are one rotation

## Syntax

<div class="mx-form" markdown="1">

```python
d = dot(rot1, rot2)
```

|cos(omega/2)| of the rotation between them.

</div>

<div class="mx-form" markdown="1">

```python
d = dot(rot1, rot2, antipodal=False)
```

With the sign of the quaternions.

</div>

## Description

The absolute value is cos(omega / 2) of the angle omega between the rotations; the
product with an improper transform is zero. orientation.dot reduces by the symmetry.

## Input

| `rot1, rot2` | rotation |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `True` | take the absolute value, q and -q being one rotation |

## Output

| `d` | the inner products |

## See also

[quaternion.dot](quaternion.dot_py.html), rotation.angle, [orientation.dot](orientation.dot_py.html)

MATLAB's [rotation.dot](rotation.dot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L784">source</a></font>
{% endraw %}
