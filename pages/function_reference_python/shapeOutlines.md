---
title: 'shapeOutlines'
sidebar: function_reference_sidebar
permalink: shapeOutlines_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the shapes seen along the normal of a plane, as polygons on the screen: the vertices in
the coordinates of the plane under the layout, for the front faces; a layout that flips
the plane is seen from the other side, so the other faces are the front ones. Returns
the polygons with the shape and the face each one is

## Syntax

<div class="mx-form" markdown="1">

```python
polys, shape, face = shapeOutlines(ori * cS, ebsd.lattice.plane)
```

The front faces seen down the map normal.

</div>

<div class="mx-form" markdown="1">

```python
polys, shape, face = shapeOutlines(cS, ebsd.lattice.plane, layout=[[1, 0], [0, -1]])
```

Under a layout that flips the plane.

</div>

## Input

| `cS` | crystalShape, one shape or a list of shapes |
| `plane` | mapPlane or plane3d, the plane the shapes are seen in |

## Keywords

| keyword | default | description |
|---|---|---|
| `layout` | `None` | 2 x 2 matrix, the turn of the plane coordinates to the screen; the identity by default |

## Output

| `polys` | list of (k, 2) arrays, the polygons on the screen |
| `shape` | int array, the shape every polygon belongs to |
| `face` | int array, the face of the shape every polygon is |

## See also

[shapesOnMap](shapesOnMap_py.html), [crystalShape](crystalShape_index_py.html), [mapPlane](mapPlane_index_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/space.py#L270">source</a></font>
{% endraw %}
