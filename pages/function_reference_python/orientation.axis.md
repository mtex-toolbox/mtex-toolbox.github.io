---
title: 'orientation.axis'
sidebar: function_reference_sidebar
permalink: orientation.axis_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: orientation.axis.html
status: Reference
---
{% raw %}
A method of [orientation](orientation_index_py.html).

the rotational axis of a misorientation, an orientation or the misorientation between two
orientations

## Syntax

<div class="mx-form" markdown="1">

```python
h = axis(mori)
```

In the crystal frame of mori.

</div>

<div class="mx-form" markdown="1">

```python
h = axis(mori, symmetry=False)
```

Of the rotation as it is stored.

</div>

<div class="mx-form" markdown="1">

```python
h = axis(mori, 'max')
```

Of the equivalent that turns the most.

</div>

<div class="mx-form" markdown="1">

```python
h = axis(mori, csHex)
```

Expressed in csHex, one of the two frames of mori.

</div>

<div class="mx-form" markdown="1">

```python
v = axis(ori1, ori2)
```

In the specimen frame, also of two phases.

</div>

## Description

The axis is that of the representative in the fundamental region, the disorientation, so
it does not depend on the representative stored. Of a misorientation it is a crystal
direction in its first crystal frame, or in the other one named; of an orientation a
specimen direction. Of two orientations it is the axis of the misorientation between them,
expressed in the specimen frame. The axis carries only the symmetry both frames share, and
with grain exchange it is an axis without sign.

## Input

| `mori` | orientation, a misorientation or an orientation |
| `other` | orientation, the second orientation, in the specimen frame; a frame of mori to express the axis in; or 'max' |

## Keywords

| keyword | default | description |
|---|---|---|
| `symmetry` | `True` | reduce by the symmetry first; False takes the axis of the rotation as stored, MATLAB's 'noSymmetry' |
| `antipodal` | `None` | set whether the axis is read as an axis without sign; by default as the symmetry says |

## Output

| `h` | Miller, the axis in a crystal frame, or vector3d in the specimen frame |

## See also

[orientation.angle](orientation.angle_py.html), [orientation.log](orientation.log_py.html), [MisorientationTheory](MisorientationTheory_py.html)

MATLAB's [orientation.axis](orientation.axis.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientation.py#L528">source</a></font>
{% endraw %}
