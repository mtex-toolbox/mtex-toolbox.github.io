---
title: 'quaternion.angle'
sidebar: function_reference_sidebar
permalink: quaternion.angle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.angle.html
status: Reference
---
{% raw %}
A method of [quaternion](quaternion_index_py.html).

the rotational angle in [0, pi], or the angle between two, both from atan2 forms that
keep their digits near 0 and pi

## Syntax

The rotational angle:

```python
omega = angle(q)
```

The angle of q1^-1 q2, between the two:

```python
omega = angle(q1, q2)
```

## Input

| | |
|---|---|
| `q` | quaternion |
| `other` | quaternion, the second one; the angle is that of the rotation from one to the other |

## Output

| | |
|---|---|
| `omega` | the angles in radians |

## See also

[quaternion.axis](quaternion.axis_py.html), [quaternion.dot](quaternion.dot_py.html), [orientation.angle](orientation.angle_py.html)

## Signature

```python
quaternion.angle(self, other=None)
```

MATLAB's [quaternion.angle](quaternion.angle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L240">source</a></font>
{% endraw %}
