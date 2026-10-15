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

<div class="mx-form" markdown="1">

```python
phi1, Phi, phi2 = T.Euler()
```

The session's convention.

</div>

<div class="mx-form" markdown="1">

```python
alpha, beta, gamma = T.Euler('ZYZ')
```

Matthies' convention.

</div>

## Input

| `T` | orthogonalTransform |

## Keywords

| keyword | default | description |
|---|---|---|
| `convention` | `None` | the name of the convention, as quaternion.Euler |

## Output

| `alpha, beta, gamma` | three arrays of angles in radians |

## See also

[quaternion.Euler](quaternion.Euler_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L1234">source</a></font>
{% endraw %}
