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

```python
shapesOnMap(x, cS, scale=1.0)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/space.py#L212">source</a></font>
{% endraw %}
