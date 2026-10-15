---
title: 'orthogonalTransform.angle'
sidebar: function_reference_sidebar
permalink: orthogonalTransform.angle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [orthogonalTransform](orthogonalTransform_index_py.html).

the rotational angle of the rotational part, or the angle between the rotational parts of two

## Syntax

<div class="mx-form" markdown="1">

```python
omega = angle(T)
```

The angle of the rotational part.

</div>

<div class="mx-form" markdown="1">

```python
omega = angle(T1, T2)
```

Between the rotational parts.

</div>

## Description

The parity is not looked at: a transform and its negative have the angle 0 between them.

## Input

| `T` | orthogonalTransform |
| `other` | orthogonalTransform or rotation, the second one |

## Output

| `omega` | the angles in radians |

## See also

[orthogonalTransform.dot](orthogonalTransform.dot_py.html), [quaternion.angle](quaternion.angle_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
orthogonalTransform.angle(self, other=None)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L1211">source</a></font>
{% endraw %}
