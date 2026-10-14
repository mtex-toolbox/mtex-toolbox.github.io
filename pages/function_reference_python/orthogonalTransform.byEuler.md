---
title: 'orthogonalTransform.byEuler'
sidebar: function_reference_sidebar
permalink: orthogonalTransform.byEuler_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [orthogonalTransform](orthogonalTransform_index_py.html).

proper orthogonal transforms defined by Euler angles

## Syntax

<div class="mx-form" markdown="1">

```python
T = orthogonalTransform.byEuler(phi1, Phi, phi2)
```

Bunge's convention.

</div>

<div class="mx-form" markdown="1">

```python
T = orthogonalTransform.byEuler(alpha, beta, gamma, 'ZYZ')
```

Matthies' convention.

</div>

## Description

The rotations of rotation.byEuler as orthogonal transforms of parity one, to be combined
with improper ones. The angles are in radians; without a convention the preference
EulerAngleConvention decides, Bunge's ZXZ by default.

## Input

| `a` | the first angle, phi1 or alpha; or an array whose last axis holds the three angles |
| `b` | the second angle, Phi or beta; the convention when a holds the triples |
| `c` | the third angle, phi2 or gamma |

## Keywords

| keyword | default | description |
|---|---|---|
| `convention` | `None` | 'Bunge' or 'ZXZ', 'Matthies', 'ZYZ' or 'ABG', 'Roe', 'Kocks', 'Canova', 'nfft' |

## Output

| `T` | orthogonalTransform, proper |

## See also

[rotation.byEuler](rotation.byEuler_py.html), [orthogonalTransform.byMatrix](orthogonalTransform.byMatrix_py.html), [RotationRepresentations](RotationRepresentations_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L904">source</a></font>
{% endraw %}
