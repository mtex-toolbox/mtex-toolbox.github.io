---
title: 'crystalAxes'
sidebar: function_reference_sidebar
permalink: crystalAxes_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
the crystal axes a, b, c in Cartesian coordinates as a (3, 3) array, one axis per row, from the
cell of a lattice, by default X||a*, Z||c, else in the alignment asked for, then rotated

## Syntax

```python
crystalAxes(lattice, abc, abg=None, alignment=(), rotate=None, uniqueAxis=1, check=True)
```

```python
crystalAxes(lattice, abc, abg)
crystalAxes(lattice, abc, abg, alignment=['X||a', 'Z||c*'])
crystalAxes(lattice, abc, abg, alignment=['EDAX'], rotate=rot)
```

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/crystalaxes.py#L134">source</a></font>
{% endraw %}
