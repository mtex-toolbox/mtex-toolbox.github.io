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

<div class="mx-form" markdown="1">

```python
ori = orientation.byEuler(phi1, Phi, phi2, cs, ss)
```

Bunge's convention.

</div>

<div class="mx-form" markdown="1">

```python
ori = orientation.byEuler(alpha, beta, gamma, 'ZYZ', cs, ss)
```

Matthies' convention.

</div>

<div class="mx-form" markdown="1">

```python
ori = orientation.byEuler(phi1, Phi, phi2, 'Kocks', cs, ss)
```

Kocks' convention.

</div>

<div class="mx-form" markdown="1">

```python
ori = orientation.byEuler([phi1, Phi, phi2], cs)
```

The angles as one triple, or an array of triples.

</div>

## Description

The angles are in radians, arrays of them broadcast against each other. Without a
convention the preference EulerAngleConvention decides, Bunge's ZXZ by default. The
convention and the frames follow the angles, in any order.

## Input

| `a` | the first angle, phi1 or alpha; or an array whose last axis holds the three angles |
| `b` | the second angle, Phi or beta |
| `c` | the third angle, phi2 or gamma |
| `args` | the convention, 'Bunge' or 'ZXZ', 'Matthies', 'ZYZ' or 'ABG', 'Roe', 'Kocks', 'Canova', 'nfft'; the crystal frame cs and the specimen frame ss, or a second crystal frame for a misorientation |

## Keywords

| keyword | default | description |
|---|---|---|
| `antipodal` | `False` | a misorientation with grain exchange |

## Output

| `ori` | orientation |

## See also

[rotation.byEuler](rotation.byEuler_py.html), orientation.Euler, [orientation.byAxisAngle](orientation.byAxisAngle_py.html), [orientation.byMiller](orientation.byMiller_py.html), [orientation.map](orientation.map_py.html), [OrientationDefinition](OrientationDefinition_py.html)

MATLAB's [orientation.byEuler](orientation.byEuler.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L157">source</a></font>
{% endraw %}
