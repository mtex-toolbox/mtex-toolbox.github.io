---
title: 'grainBoundary.inpolygon'
sidebar: function_reference_sidebar
permalink: grainBoundary.inpolygon_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grainBoundary.inpolygon.html
status: Reference
---
{% raw %}
A method of [grainBoundary](grainBoundary_index_py.html).

the segments whose midpoint lies inside a polygon (N, 2), or the rectangle [x, y, w, h]

## Syntax

```python
grainBoundary.inpolygon(self, region)
```

```python
ind = gB.inpolygon([xmin, ymin, dx, dy])                # by a rectangle
ind = inpolygon(gB, [[x1, y1], [x2, y2], [x3, y3]])     # by a polygon
gB = gB[ind]
```

MATLAB's [grainBoundary.inpolygon](grainBoundary.inpolygon.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L459">source</a></font>
{% endraw %}
