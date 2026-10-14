---
title: 'SO3Grid.find'
sidebar: function_reference_sidebar
permalink: SO3Grid.find_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3Grid.find.html
status: Reference
---
{% raw %}
A method of [SO3Grid](SO3Grid_index_py.html).

the nearest grid rotation of every orientation, or the k nearest, or all within a
radius, up to the symmetries of the grid's frames, through the quaternion k-d tree of
orientationtree.py (MATLAB SO3Grid/find): cos(w/2) of the reduced misorientation angle w
for the nearest, the angles for the k nearest and the radius

## Syntax

```python
SO3Grid.find(self, o, epsOrK=None)
```

MATLAB's [SO3Grid.find](SO3Grid.find.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/grids/so3grid.py#L118">source</a></font>
{% endraw %}
