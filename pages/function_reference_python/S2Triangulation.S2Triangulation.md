---
title: 'S2Triangulation.S2Triangulation'
sidebar: function_reference_sidebar
permalink: S2Triangulation.S2Triangulation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Triangulation.S2Triangulation.html
status: Reference
---
{% raw %}
the Delaunay triangulation of directions on the sphere, their convex hull: the triangles T,
counterclockwise from outside, and the triangle opposite each vertex; the directions must
surround the origin

## Syntax

<div class="mx-form" markdown="1">

```python
sT = S2Triangulation(v)
B = sT.barycentric(w)
```

</div>

## Signature

<div class="mx-form" markdown="1">

```python
S2Triangulation(vertices)
```

</div>

MATLAB's [S2Triangulation.S2Triangulation](S2Triangulation.S2Triangulation.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/s2triangulation.py#L21">source</a></font>
{% endraw %}
