---
title: 'orientationRegion.edges'
sidebar: function_reference_sidebar
permalink: orientationRegion.edges_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [orientationRegion](orientationRegion_index_py.html).

the edges of the region, each a chain of points in axis angle coordinates in radians:
every pair of planes meets in a line of Rodrigues space, kept where the other planes
allow it; an open region is cut at a turn of nearly 180 degrees

## Syntax

```python
orientationRegion.edges(self, points=40, tol=1e-09)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/orientationregion.py#L178">source</a></font>
{% endraw %}
