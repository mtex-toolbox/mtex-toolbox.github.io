---
title: 'rotation.map'
sidebar: function_reference_sidebar
permalink: rotation.map_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: rotation.map.html
status: Reference
---
{% raw %}
A method of [rotation](rotation_index_py.html).

the smallest rotation taking u1 to v1, or the one taking u1 to v1 and u2 to v2

## Syntax

The smallest rotation with rot * u1 || v1:

```python
rot = rotation.map(u1, v1)
```

U1 onto v1 and u2 onto v2:

```python
rot = rotation.map(u1, v1, u2, v2)
```

With two pairs the angle between u1 and u2 must be that between v1 and v2, up to 1e-3,
and u1, u2 must not be colinear; an error is raised otherwise. The lengths of the vectors
do not matter.

## Input

| | |
|---|---|
| `u1, v1` | vector3d |
| `u2, v2` | vector3d, a second pair |

## Output

| | |
|---|---|
| `rot` | rotation |

## See also

[rotation.fit](rotation.fit_py.html), [rotation.byAxisAngle](rotation.byAxisAngle_py.html), [rotation.byMatrix](rotation.byMatrix_py.html)

## Signature

```python
rotation.map(u1, v1, u2=None, v2=None)
```

MATLAB's [rotation.map](rotation.map.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/quaternion.py#L693">source</a></font>
{% endraw %}
