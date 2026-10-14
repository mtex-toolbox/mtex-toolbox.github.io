---
title: 'Miller.unique'
sidebar: function_reference_sidebar
permalink: Miller.unique_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: Miller.unique.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the disjoint list of vectors up to a tolerance, vector3d/unique, up to sign for axes,
antipodal=True always, antipodal=False never; under a group the directions are projected
to the fundamental sector first

## Syntax

```python
vector3d.unique(self, tol=1e-06, antipodal=None, symmetry=True, stable=False, return_index=False, return_inverse=False)
```

MATLAB's [Miller.unique](Miller.unique.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L730">source</a></font>
{% endraw %}
