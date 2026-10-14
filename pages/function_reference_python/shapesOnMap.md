---
title: 'shapesOnMap'
sidebar: function_reference_sidebar
permalink: shapesOnMap_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
one crystal shape per grain of the shape's phase: rotated by the grain's mean
orientation, scaled by the square root of its area and put at its centroid, as one list
of shapes over the grains that take it, whose indices come with it; on an EBSD map one
shape per measurement of the phase, rotated by its orientation, at the shape's own size.
A phase takes the shape when its frame fits the shape's crystal frame the way an
orientation fits its frame: another lattice is left out

## Syntax

A shape per Forsterite grain:

```python
s, ids = shapesOnMap(grains, crystalShape.olivine(grains.CSList[1]))
```

At half the size:

```python
s, ids = shapesOnMap(grains, crystalShape.olivine(grains.CSList[1]), scale=0.5)
```

A shape per measurement:

```python
s, ids = shapesOnMap(ebsd['Fo'], crystalShape.olivine(ebsd.CSList[1]), scale=0.3)
```

## Input

| | |
|---|---|
| `x` | grain2d or EBSD |
| `cS` | crystalShape in a crystal frame |

## Output

| | |
|---|---|
| `s` | crystalShape, one list of shapes, None when no phase takes the shape |
| `ids` | int array, the grains or the measurements the shapes stand for |

## Keywords

| | default | |
|---|---|---|
| `scale` | `1.0` | the factor on the size: the square root of the area of a grain, one on a map |

## See also

[shapeOutlines](shapeOutlines_py.html), [crystalShape](crystalShape_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/space.py#L306">source</a></font>
{% endraw %}
