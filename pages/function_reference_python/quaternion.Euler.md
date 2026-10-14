---
title: 'quaternion.Euler'
sidebar: function_reference_sidebar
permalink: quaternion.Euler_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: quaternion.Euler.html
status: Reference
---
{% raw %}
A method of [quaternion](quaternion_index_py.html).

the Euler angles (alpha, beta, gamma) in the convention named, the session's by default

## Syntax

The session's convention, Bunge by default:

```python
phi1, Phi, phi2 = rot.Euler()
```

Matthies' convention:

```python
alpha, beta, gamma = rot.Euler('ZYZ')
```

The conventions are 'Bunge' or 'ZXZ', 'Matthies', 'ZYZ' or 'ABG', 'Roe', 'Kocks',
'Canova' and 'nfft'; the default is the preference 'EulerAngleConvention'. Where the
second angle is 0 only the sum of the first and third is determined, and the first takes
it.

## Input

| | |
|---|---|
| `rot` | quaternion |

## Output

| | |
|---|---|
| `alpha, beta, gamma` | three arrays of angles in radians in the shape of rot |

## Keywords

| | default | |
|---|---|---|
| `convention` | `None` | the name of the convention |

## See also

[rotation.byEuler](rotation.byEuler_py.html), [quaternion.Rodrigues](quaternion.Rodrigues_py.html), [quaternion.matrix](quaternion.matrix_py.html)

MATLAB's [quaternion.Euler](quaternion.Euler.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L300">source</a></font>
{% endraw %}
