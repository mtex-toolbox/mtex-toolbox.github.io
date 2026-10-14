---
title: 'quaternion.dot'
sidebar: function_reference_sidebar
permalink: quaternion.dot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.dot.html
status: Reference
---
{% raw %}
A method of [quaternion](quaternion_index_py.html).

the inner product of the coefficients

## Syntax

A b + ... + d d of the coefficients:

```python
d = dot(q1, q2)
```

The plain inner product of the quaternions as vectors of R^4, signed: q and -q give
opposite values. rotation.dot takes its absolute value.

## Input

| | |
|---|---|
| `q1, q2` | quaternion |

## Output

| | |
|---|---|
| `d` | the inner products |

## Keywords

| | default | |
|---|---|---|
| `antipodal` | `True` | not used by quaternions, which keep the sign; taken so that the call is the one of rotations |

## See also

[rotation.dot](rotation.dot_py.html), [quaternion.angle](quaternion.angle_py.html)

MATLAB's [quaternion.dot](quaternion.dot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L221">source</a></font>
{% endraw %}
