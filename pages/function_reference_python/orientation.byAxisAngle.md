---
title: 'orientation.byAxisAngle'
sidebar: function_reference_sidebar
permalink: orientation.byAxisAngle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.byAxisAngle.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the orientations of the rotations by omega about the axis v; MATLAB's orientation.byAxisAngle

## Syntax

An orientation:

```python
ori = orientation.byAxisAngle(v, omega, cs, ss)
```

A misorientation about the crystal direction h:

```python
mori = orientation.byAxisAngle(h, omega)
```

With grain exchange:

```python
mori = orientation.byAxisAngle(h, omega, antipodal=True)
```

About a crystal direction h with no frames named it is the rotation of that crystal frame
into itself, a misorientation; the frames named otherwise, the crystal frame first.

## Input

| | |
|---|---|
| `v` | vector3d or Miller, the rotational axis |
| `omega` | the rotational angle, broadcast against v |
| `frames` | the crystal frame, then the specimen frame or a second crystal frame |

## Output

| | |
|---|---|
| `ori` | orientation |

## Keywords

| | default | |
|---|---|---|
| `antipodal` | `False` | mark a misorientation with grain exchange, mori == inv(mori) |

## See also

[orientation.byEuler](orientation.byEuler_py.html), [orientation.byMatrix](orientation.byMatrix_py.html), [orientation.map](orientation.map_py.html), [rotation.byAxisAngle](rotation.byAxisAngle_py.html)

MATLAB's [orientation.byAxisAngle](orientation.byAxisAngle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L188">source</a></font>
{% endraw %}
