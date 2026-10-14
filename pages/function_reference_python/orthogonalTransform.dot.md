---
title: 'orthogonalTransform.dot'
sidebar: function_reference_sidebar
permalink: orthogonalTransform.dot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [orthogonalTransform](orthogonalTransform_index_py.html).

the inner product of the rotational parts up to sign, zero between transforms of different
parity; antipodal=False keeps the sign

## Syntax

<div class="mx-form" markdown="1">

```python
d = dot(T1, T2)
```

|cos(omega/2)|, 0 for different parity.

</div>

<div class="mx-form" markdown="1">

```python
d = dot(T1, T2, antipodal=False)
```

With the sign of the quaternions.

</div>

## Input

| `T1` | orthogonalTransform |
| `T2` | orthogonalTransform or rotation |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `True` | take the absolute value |

## Output

| `d` | the inner products |

## See also

[orthogonalTransform.isclose](orthogonalTransform.isclose_py.html), [rotation.dot](rotation.dot_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L1052">source</a></font>
{% endraw %}
