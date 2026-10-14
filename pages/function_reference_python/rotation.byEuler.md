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

the rotations of the Euler angles, Bunge's ZXZ convention unless a convention is named
('Bunge', 'ZXZ', 'Matthies', 'ZYZ', 'ABG', 'Roe', 'Kocks', 'Canova')

## Syntax

```python
rotation.byEuler(a, b=None, c=None, convention=None)
```

```python
rot = rotation.byEuler(phi1, Phi, phi2)              # Bunge
rot = rotation.byEuler(alpha, beta, gamma, 'ZYZ')    # Matthies
rot = rotation.byEuler(phi1, Phi, phi2, 'Kocks')
rot = rotation.byEuler([phi1, Phi, phi2])            # the angles as one list
```

MATLAB's [rotation.byEuler](rotation.byEuler.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L434">source</a></font>
{% endraw %}
