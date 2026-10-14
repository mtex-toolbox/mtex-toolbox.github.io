---
title: 'quaternion.dot_outer'
sidebar: function_reference_sidebar
permalink: quaternion.dot_outer_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.dot_outer.html
status: Reference
---
{% raw %}
A method of [quaternion](quaternion_index_py.html).

the inner product of the coefficients

## Syntax

<div class="mx-form" markdown="1">

```python
d = dot(q1, q2)
```

A b + ... + d d of the coefficients.

</div>

<div class="mx-form" markdown="1">

```python
d = dot(q1, q2, antipodal=True)
```

Its absolute value.

</div>

## Description

The plain inner product of the quaternions as vectors of R^4, signed: q and -q give
opposite values. rotation.dot takes its absolute value by default.

## Input

| `q1, q2` | quaternion |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `False` | take the absolute value, q and -q read as one |

## Output

| `d` | the inner products |

## See also

[rotation.dot](rotation.dot_py.html), [quaternion.angle](quaternion.angle_py.html)

MATLAB's [quaternion.dot_outer](quaternion.dot_outer.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L267">source</a></font>
{% endraw %}
