---
title: 'S2Grid.refine'
sidebar: function_reference_sidebar
permalink: S2Grid.refine_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2Grid.refine.html
status: Reference
---
{% raw %}
A method of [S2Grid](S2Grid_index_py.html).

the directions with a new one between every three neighbours: the centroids of the
Delaunay triangles of the points on the sphere, none below the lowest point, so a cap
stays a cap; returns the joined list and the new points, MATLAB's [v, r] = refine(v)

## Syntax

```python
S2Grid.refine(v)
```

MATLAB's [S2Grid.refine](S2Grid.refine.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L1084">source</a></font>
{% endraw %}
