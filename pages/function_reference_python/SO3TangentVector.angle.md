---
title: 'SO3TangentVector.angle'
sidebar: function_reference_sidebar
permalink: SO3TangentVector.angle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [SO3TangentVector](SO3TangentVector_index_py.html).

the angle of the rotation the vector describes, or the angle between two vectors

## Syntax

The rotational angle, the length:

```python
omega = angle(v)
```

The angle between the vectors:

```python
omega = angle(v1, v2)
```

The second vectors are brought to the reference and side of the first.

## Input

| | |
|---|---|
| `v1` | SO3TangentVector |
| `other` | SO3TangentVector at the same reference |

## Output

| | |
|---|---|
| `omega` | the angles in radians |

## See also

SO3TangentVector.norm, [quaternion.log](quaternion.log_py.html)

## Signature

```python
SO3TangentVector.angle(self, other=None, **kwargs)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/tangent.py#L322">source</a></font>
{% endraw %}
