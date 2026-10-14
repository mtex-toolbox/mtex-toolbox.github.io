---
title: 'S1Grid.refine'
sidebar: function_reference_sidebar
permalink: S1Grid.refine_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S1Grid.refine.html
status: Reference
---
{% raw %}
the directions with a new one between every three neighbours: the centroids of the
Delaunay triangles of the points on the sphere, none below the lowest point, so a cap
stays a cap; returns the joined list and the new points, MATLAB's [v, r] = refine(v)

## Syntax

```python
refine(v)
```

## Used on

[PoleFigureRefinement](PoleFigureRefinement_py.html)

MATLAB's [S1Grid.refine](S1Grid.refine.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/polefigure.py#L1084">source</a></font>
{% endraw %}
