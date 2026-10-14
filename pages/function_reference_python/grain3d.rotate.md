---
title: 'grain3d.rotate'
sidebar: function_reference_sidebar
permalink: grain3d.rotate_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain3d.rotate.html
status: Reference
---
{% raw %}
A method of [grain3d](grain3d_index_py.html).

the grains turned about a centre, their faces and their orientations; MATLAB's rotate of
grain3d

## Syntax

<div class="mx-form" markdown="1">

```python
grains = grains.rotate(rotation.byAxisAngle(xvector, 180*degree))
```

About the origin.

</div>

<div class="mx-form" markdown="1">

```python
grains = grains.rotate(rot, center=vector3d(1, 1, 1))
```

About a point.

</div>

<div class="mx-form" markdown="1">

```python
grains = grains.rotate(rot, keepEuler=True)
```

The faces only.

</div>

<div class="mx-form" markdown="1">

```python
grains = grains.rotate(rot, keepXY=True)
```

The orientations only.

</div>

<div class="mx-form" markdown="1">

```python
grains = rot * grains
```

The same as rotate.

</div>

## Input

| `grains` | grain3d |
| `rot` | rotation |

## Keywords

| keyword | default | description |
|---|---|---|
| `keepXY` | `False` | turn only the orientations, the faces stay |
| `keepEuler` | `False` | turn only the faces, the orientations stay |
| `center` | `(0.0, 0.0, 0.0)` | vector3d or (x, y, z), the point the faces turn about |

## Output

| `grains` | grain3d, new |

## See also

[rotation.byAxisAngle](rotation.byAxisAngle_py.html), [grain3d.centroid](grain3d.centroid_py.html), [Grains3DOperations](Grains3DOperations_py.html)

MATLAB's [grain3d.rotate](grain3d.rotate.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps3d/grain3d.py#L246">source</a></font>
{% endraw %}
