---
title: 'EBSD.inpolygon'
sidebar: function_reference_sidebar
permalink: EBSD.inpolygon_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: EBSD.inpolygon.html
status: Reference
---
{% raw %}
A method of [EBSD](EBSD_index_py.html).

the mask of the measurements inside a rectangle [x, y, w, h] or a polygon (N, 2), edges included

## Syntax

```python
EBSD.inpolygon(self, region)
```

```python
ind = ebsd.inpolygon([xmin, ymin, dx, dy])                # by a rectangle
ind = inpolygon(ebsd, [[x1, y1], [x2, y2], [x3, y3]])     # by a polygon
ebsd = ebsd[ind]
```

MATLAB's [EBSD.inpolygon](EBSD.inpolygon.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/ebsd.py#L414">source</a></font>
{% endraw %}
