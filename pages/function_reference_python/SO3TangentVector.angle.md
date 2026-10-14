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

<div class="mx-form" markdown="1">

```python
omega = angle(v)
```

The rotational angle, the length.

</div>

<div class="mx-form" markdown="1">

```python
omega = angle(v1, v2)
```

The angle between the vectors.

</div>

<div class="mx-form" markdown="1">

```python
omega = angle(v1, v2, antipodal=True)
```

Read as axes, at most 90 degree.

</div>

## Description

The second vectors are brought to the reference and side of the first; the keywords are
those of vector3d.angle and need the second vectors.

## Input

| `v1` | SO3TangentVector |
| `other` | SO3TangentVector at the same reference |

## Output

| `omega` | the angles in radians |

## See also

SO3TangentVector.norm, [quaternion.log](quaternion.log_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
SO3TangentVector.angle(self, other=None, **kwargs)
```

</div>

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/tangent.py#L379">source</a></font>
{% endraw %}
