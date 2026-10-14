---
title: 'rotation.byEuler'
sidebar: function_reference_sidebar
permalink: rotation.byEuler_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.byEuler.html
status: Reference
---
{% raw %}
A method of [rotation](rotation_index_py.html).

rotations defined by Euler angles

## Syntax

<div class="mx-form" markdown="1">

```python
rot = rotation.byEuler(phi1, Phi, phi2)
```

Bunge's convention.

</div>

<div class="mx-form" markdown="1">

```python
rot = rotation.byEuler(alpha, beta, gamma, 'ZYZ')
```

Matthies' convention.

</div>

<div class="mx-form" markdown="1">

```python
rot = rotation.byEuler(phi1, Phi, phi2, 'Kocks')
```

Kocks' convention.

</div>

<div class="mx-form" markdown="1">

```python
rot = rotation.byEuler([phi1, Phi, phi2])
```

The angles as one triple, or an array of triples.

</div>

## Description

The angles are in radians, arrays of them broadcast against each other. Without a
convention the preference EulerAngleConvention decides, Bunge's ZXZ by default.

## Input

| `a` | the first angle, phi1 or alpha; or an array whose last axis holds the three angles |
| `b` | the second angle, Phi or beta; the convention when a holds the triples |
| `c` | the third angle, phi2 or gamma |

## Keywords

| keyword | default | description |
|---|---|---|
| `convention` | `None` | 'Bunge' or 'ZXZ', 'Matthies', 'ZYZ' or 'ABG', 'Roe', 'Kocks', 'Canova', 'nfft' |

## Output

| `rot` | rotation |

## See also

rotation.Euler, [orientation.byEuler](orientation.byEuler_py.html), [rotation.byAxisAngle](rotation.byAxisAngle_py.html), [rotation.byMatrix](rotation.byMatrix_py.html), [RotationRepresentations](RotationRepresentations_py.html)

MATLAB's [rotation.byEuler](rotation.byEuler.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L753">source</a></font>
{% endraw %}
