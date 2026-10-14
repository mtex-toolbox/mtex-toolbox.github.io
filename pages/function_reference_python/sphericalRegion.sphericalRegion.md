---
title: 'sphericalRegion.sphericalRegion'
sidebar: function_reference_sidebar
permalink: sphericalRegion.sphericalRegion_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: sphericalRegion.sphericalRegion.html
status: Reference
---
{% raw %}
a region on the sphere: all v with dot(v, N_i) >= alpha_i

## Syntax

```python
sphericalRegion(N=None, alpha=None, frame=None, antipodal=False)
```

```python
sphericalRegion()                    the whole sphere
sphericalRegion(N)                   the intersection of the hemispheres about N
sphericalRegion(N, alpha)            the caps dot(v, N_i) >= alpha_i
sphericalRegion('upper'), 'lower'    a hemisphere about z
sphericalRegion.byVertices(V)        the polygon through the vertices
```

MATLAB's [sphericalRegion.sphericalRegion](sphericalRegion.sphericalRegion.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/sphericalregion.py#L27">source</a></font>
{% endraw %}
