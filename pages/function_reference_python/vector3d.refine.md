---
title: 'vector3d.refine'
sidebar: function_reference_sidebar
permalink: vector3d.refine_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.refine.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the directions with a new one between every three neighbours: the centroids of the
Delaunay triangles of the points on the sphere, none below the lowest point, so a cap
stays a cap; returns the joined list and the new points, MATLAB's [v, r] = refine(v)

## Syntax

```python
vector3d.refine(v)
```

MATLAB's [vector3d.refine](vector3d.refine.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L890">source</a></font>
{% endraw %}
