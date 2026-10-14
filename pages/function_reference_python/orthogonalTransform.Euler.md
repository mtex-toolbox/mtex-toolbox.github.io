---
title: 'orthogonalTransform.Euler'
sidebar: function_reference_sidebar
permalink: orthogonalTransform.Euler_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [orthogonalTransform](orthogonalTransform_index_py.html).

the Euler angles of the rotational part, in the convention named or the session's

## Syntax

The session's convention:

```python
phi1, Phi, phi2 = T.Euler()
```

Matthies' convention:

```python
alpha, beta, gamma = T.Euler('ZYZ')
```

## Input

| | |
|---|---|
| `T` | orthogonalTransform |

## Output

| | |
|---|---|
| `alpha, beta, gamma` | three arrays of angles in radians |

## Keywords

| | default | |
|---|---|---|
| `convention` | `None` | the name of the convention, as quaternion.Euler |

## See also

[quaternion.Euler](quaternion.Euler_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L1035">source</a></font>
{% endraw %}
