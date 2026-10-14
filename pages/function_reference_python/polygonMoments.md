---
title: 'polygonMoments'
sidebar: function_reference_sidebar
permalink: polygonMoments_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the moments of the polygon of every outline: the area, the first and the second moments
about the origin, summed over its loops

## Syntax

Per grain:

```python
ar, cx, cy, ixx, iyy, ixy = polygonMoments(grains.V, grains.loops, grains.size)
```

One outline:

```python
ar, cx, cy, ixx, iyy, ixy = polygonMoments(grains.V, grains.loops[0])
```

The integrals over the area of 1, x, y, x^2, y^2 and xy, from the loops by Green's theorem;
an inner loop, stored the other way round, subtracts. The centroid is (cx, cy) / ar.

## Input

| | |
|---|---|
| `V` | (m, 2) array of the vertices |
| `loops` | per outline a list of loops of vertex indices, or the loops of one outline |

## Output

| | |
|---|---|
| `ar, cx, cy, ixx, iyy, ixy` | arrays, one value per outline, or numbers for one |

## Keywords

| | default | |
|---|---|---|
| `size` | `None` | the number of outlines; without it loops is one outline |

## See also

[grain2d.area](grain2d.area_py.html), [grain2d.centroid](grain2d.centroid_py.html), [grain2d.principalComponents](grain2d.principalComponents_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/maps/shape.py#L38">source</a></font>
{% endraw %}
