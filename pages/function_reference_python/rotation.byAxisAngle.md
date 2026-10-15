---
title: 'rotation.byAxisAngle'
sidebar: function_reference_sidebar
permalink: rotation.byAxisAngle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.byAxisAngle.html
status: Reference
---
{% raw %}
A method of [rotation](rotation_index_py.html).

construct right-handed rotations about given axes.

## Syntax

<div class="mx-form" markdown="1">

```python
rot = rotation.byAxisAngle(v, omega)
rot = rotation.byAxisAngle(vector3d.Z, 30*degree)
rot = rotation.byAxisAngle(axis, angles)
```

</div>

## Description

Angles are in radians and broadcast with the axes. Each nonzero axis is normalised
internally, so its length does not change the rotation angle.

## Input

| `v` | vector3d or Cartesian coordinates of shape (..., 3) |
| `omega` | rotation angles in radians |

## Output

| `rot` | rotation container with the broadcast shape |

## Example

Rotate the x direction by 90 degrees about z, then apply the inverse rotation.
The axis sets the direction of rotation; its length is immaterial.


```python
import numpy as np
from mtex import rotation, vector3d, degree, inv

rot = rotation.byAxisAngle(vector3d.Z, 90*degree)
v = vector3d.X
turned = rot * v
recovered = inv(rot) * turned
print('Rotated x:', np.round(turned.data, 6))
print('Recovered x:', np.round(recovered.data, 6))
```

This is an active, right-handed rotation: positive x moves toward positive y.

```text
Rotated x: [0. 1. 0.]
Recovered x: [1. 0. 0.]
```


## See also

rotation.axis, rotation.angle, [rotation.byEuler](rotation.byEuler_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
rotation.byAxisAngle(v, omega)
```

</div>

MATLAB's [rotation.byAxisAngle](rotation.byAxisAngle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L780">source</a></font>
{% endraw %}
