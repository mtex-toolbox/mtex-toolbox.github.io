---
title: 'EBSDsquare.rotate'
sidebar: function_reference_sidebar
permalink: EBSDsquare.rotate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSDsquare.rotate.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

a rigid motion of the map; keepXY moves only the orientations, keepEuler only the positions;
MATLAB's EBSD.rotate

## Syntax

About the z axis:

```python
ebsd = ebsd.rotate(10*degree)
```

About the x axis:

```python
ebsd = rotate(ebsd, rotation.byAxisAngle(vector3d.X, 180*degree))
```

Only the positions:

```python
ebsd = rotate(ebsd, 180*degree, keepEuler=True)
```

Only the orientations:

```python
ebsd = ebsd.rotate(90*degree, keepXY=True)
```

The positions and the orientations turn together, about the origin; an angle is a
rotation about z. A gridded map keeps the order of its arrays: the positions move and the
lattice turns with them, where MATLAB stores the map anew. rot * ebsd is the same as
rotate(ebsd, rot). MATLAB's center= option, a centre other than the origin, is not taken.

## Input

| | |
|---|---|
| `ebsd` | EBSD |
| `rot` | rotation, or an angle about the z axis |

## Output

| | |
|---|---|
| `ebsd` | EBSD |

## Keywords

| | default | |
|---|---|---|
| `keepXY` | `False` | turn only the orientations, the Euler angles |
| `keepEuler` | `False` | turn only the positions |

## See also

[EBSD.shift](EBSD.shift_py.html), [EBSD.transform](EBSD.transform_py.html), [transformReferenceFrame](transformReferenceFrame_py.html)

MATLAB's [EBSDsquare.rotate](EBSDsquare.rotate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/ebsd.py#L472">source</a></font>
{% endraw %}
