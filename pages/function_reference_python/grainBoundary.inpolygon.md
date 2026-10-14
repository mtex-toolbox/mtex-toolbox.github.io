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

<div class="mx-form" markdown="1">

```python
ind = gB.inpolygon([xmin, ymin, dx, dy])
```

By a rectangle.

</div>

<div class="mx-form" markdown="1">

```python
ind = inpolygon(gB, [[x1, y1], [x2, y2], [x3, y3]])
```

By a polygon.

</div>

<div class="mx-form" markdown="1">

```python
gB = gB[ind]
```

</div>

## Signature

<div class="mx-form" markdown="1">

```python
grainBoundary.inpolygon(self, region)
```

</div>

MATLAB's [grainBoundary.inpolygon](grainBoundary.inpolygon.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/boundary.py#L641">source</a></font>
{% endraw %}
