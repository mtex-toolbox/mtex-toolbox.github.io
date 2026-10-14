---
title: 'vector3d.dot'
sidebar: function_reference_sidebar
permalink: vector3d.dot_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.dot.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the inner product; an axis on either side reads it up to sign, antipodal=True always,
antipodal=False never; a crystal direction reduces over the group of its frame unless
symmetry=False says otherwise; outer=True pairs
every entry of self with every entry of other, shape self.shape + other.shape (MATLAB's dot_outer)

## Syntax

```python
vector3d.dot(self, other, antipodal=None, symmetry=True, min=False, all=False, outer=False)
```

MATLAB's [vector3d.dot](vector3d.dot.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L556">source</a></font>
{% endraw %}
