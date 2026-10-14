---
title: 'orientation.byEuler'
sidebar: function_reference_sidebar
permalink: orientation.byEuler_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.byEuler.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the orientations of the Euler angles, Bunge's ZXZ convention unless a convention is named
('Bunge', 'ZXZ', 'Matthies', 'ZYZ', 'ABG', 'Roe', 'Kocks', 'Canova'); antipodal=True marks a
misorientation with grain exchange

## Syntax

```python
orientation.byEuler(a, b=None, c=None, *args, antipodal=False)
```

```python
ori = orientation.byEuler(phi1, Phi, phi2, cs, ss)              # Bunge
ori = orientation.byEuler(alpha, beta, gamma, 'ZYZ', cs, ss)    # Matthies
ori = orientation.byEuler(phi1, Phi, phi2, 'Kocks', cs, ss)
ori = orientation.byEuler([phi1, Phi, phi2], cs)                # the angles as one list
```

MATLAB's [orientation.byEuler](orientation.byEuler.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L120">source</a></font>
{% endraw %}
