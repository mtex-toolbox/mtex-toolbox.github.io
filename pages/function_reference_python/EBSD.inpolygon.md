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

By a rectangle:

```python
ind = ebsd.inpolygon([xmin, ymin, dx, dy])
```

By a polygon:

```python
ind = inpolygon(ebsd, [[x1, y1], [x2, y2], [x3, y3]])
```

```python
ebsd = ebsd[ind]
```

## Signature

```python
EBSD.inpolygon(self, region)
```

MATLAB's [EBSD.inpolygon](EBSD.inpolygon.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/ebsd.py#L462">source</a></font>
{% endraw %}
