---
title: 'grain2d.inpolygon'
sidebar: function_reference_sidebar
permalink: grain2d.inpolygon_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: grain2d.inpolygon.html
status: Reference
---
{% raw %}
A method of [grain2d](grain2d_index_py.html).

the mask of the outlines whose centroid lies inside a rectangle [xmin, ymin, dx, dy] or a
polygon (N, 2), edges included, as MATLAB's; the outlines holding given points are
findByLocation, or grains[x, y]

## Syntax

<div class="mx-form" markdown="1">

```python
ind = grains.inpolygon([xmin, ymin, dx, dy])
```

By a rectangle.

</div>

<div class="mx-form" markdown="1">

```python
ind = inpolygon(grains, [[x1, y1], [x2, y2], [x3, y3]])
```

By a polygon.

</div>

<div class="mx-form" markdown="1">

```python
grains = grains[ind]
```

</div>

## Signature

<div class="mx-form" markdown="1">

```python
grain2d.inpolygon(self, region)
```

</div>

MATLAB's [grain2d.inpolygon](grain2d.inpolygon.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/polygon.py#L206">source</a></font>
{% endraw %}
