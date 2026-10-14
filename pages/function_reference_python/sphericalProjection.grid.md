---
title: 'sphericalProjection.grid'
sidebar: function_reference_sidebar
permalink: sphericalProjection.grid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
A method of [sphericalProjection](sphericalProjection_index_py.html).

a grid regular in the polar angles of the chart, one strip of polar angles per azimuth
so that the cells follow the boundary: the directions, in the frame of the region, and
their plane coordinates, all nTheta x nRho; a column of NaN separates the strips of a
region whose polar set has two branches, where the pieces do not touch

## Syntax

```python
sphericalProjection.grid(self, resolution=1*degree)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spherical.py#L128">source</a></font>
{% endraw %}
