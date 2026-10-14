---
title: 'S2FunTri.S2FunTri'
sidebar: function_reference_sidebar
permalink: S2FunTri.S2FunTri_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2FunTri.S2FunTri.html
status: Reference
---
{% raw %}
a function on the sphere by its values at the vertices of a spherical triangulation, linear
in between; a direction given twice takes the mean of its values

## Syntax

```python
S2FunTri(nodes, values=None)
```

```python
S2FunTri(v, values)          the values at the directions v
S2FunTri(sT, values)         on a triangulation already made
S2FunTri(fun)                a callable sampled on a 1.5 degree grid
```

MATLAB's [S2FunTri.S2FunTri](S2FunTri.S2FunTri.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2funtri.py#L24">source</a></font>
{% endraw %}
