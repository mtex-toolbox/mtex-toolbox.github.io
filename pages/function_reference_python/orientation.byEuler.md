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

orientations defined by Euler angles

## Syntax

Bunge's convention:

```python
ori = orientation.byEuler(phi1, Phi, phi2, cs, ss)
```

Matthies' convention:

```python
ori = orientation.byEuler(alpha, beta, gamma, 'ZYZ', cs, ss)
```

Kocks' convention:

```python
ori = orientation.byEuler(phi1, Phi, phi2, 'Kocks', cs, ss)
```

The angles as one triple, or an array of triples:

```python
ori = orientation.byEuler([phi1, Phi, phi2], cs)
```

The angles are in radians, arrays of them broadcast against each other. Without a
convention the preference EulerAngleConvention decides, Bunge's ZXZ by default. The
convention and the frames follow the angles, in any order.

## Input

| | |
|---|---|
| `a` | the first angle, phi1 or alpha; or an array whose last axis holds the three angles |
| `b` | the second angle, Phi or beta |
| `c` | the third angle, phi2 or gamma |
| `args` | the convention, 'Bunge' or 'ZXZ', 'Matthies', 'ZYZ' or 'ABG', 'Roe', 'Kocks', 'Canova', 'nfft'; the crystal frame cs and the specimen frame ss, or a second crystal frame for a misorientation |

## Output

| | |
|---|---|
| `ori` | orientation |

## Keywords

| | default | |
|---|---|---|
| `antipodal` | `False` | a misorientation with grain exchange |

## See also

[rotation.byEuler](rotation.byEuler_py.html), orientation.Euler, [orientation.byAxisAngle](orientation.byAxisAngle_py.html), [orientation.byMiller](orientation.byMiller_py.html), [orientation.map](orientation.map_py.html), [OrientationDefinition](OrientationDefinition_py.html)

MATLAB's [orientation.byEuler](orientation.byEuler.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L149">source</a></font>
{% endraw %}
