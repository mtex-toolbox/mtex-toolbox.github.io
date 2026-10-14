---
title: 'The class S2Triangulation'
sidebar: function_reference_sidebar
permalink: S2Triangulation_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Triangulation_index.html
status: Reference
---
{% raw %}
the Delaunay triangulation of directions on the sphere, their convex hull: the triangles T,
counterclockwise from outside, and the triangle opposite each vertex; the directions must
surround the origin

```python
sT = S2Triangulation(v)
B = sT.barycentric(w)
```

## Members

| | |
|---|---|
| [calcBario](S2Triangulation.calcBario_py.html) | the barycentric coordinates of directions in the triangulation, a sparse matrix with a row per direction and a column per vertex (MATLAB's calcBario) |
| [checkInside](S2Triangulation.checkInside_py.html) | whether each direction v lies in the triangle t given for it |
| [frame](S2Triangulation.frame_py.html) | the frame of the vertices |
| [locate](S2Triangulation.locate_py.html) | the triangle every direction lies in and its coordinates there, by a walk from the triangle with the nearest centre towards the vertex a coordinate says is missing |
| [plot](S2Triangulation.plot_py.html) | plot(x, ...) draws x as its kind is drawn |
| [rotate](S2Triangulation.rotate_py.html) | rotate(x, rot) is x.rotate(rot), or rot * x for an object without that method |
| [S2Triangulation](S2Triangulation.S2Triangulation_py.html) | the Delaunay triangulation of directions on the sphere, their convex hull: the triangles T, counterclockwise from outside, and the triangle opposite each vertex |

MATLAB's [S2Triangulation_index](S2Triangulation_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/s2triangulation.py#L21">source</a></font>
{% endraw %}
