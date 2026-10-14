---
title: 'vector3d.angle'
sidebar: function_reference_sidebar
permalink: vector3d.angle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.angle.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

the angle between two vectors, through atan2 for full accuracy near 0 and pi; an axis
on either side reads it up to sign, antipodal=True always, antipodal=False never; with a
normal N the angle in that plane, counterclockwise from self to other; outer=True pairs
every entry of self with every entry of other, shape self.shape + other.shape (MATLAB's angle_outer);
symmetry=False compares crystal directions without their symmetric equivalents

## Syntax

```python
vector3d.angle(self, other, N=None, antipodal=None, symmetry=True, outer=False)
```

```python
omega = angle(v1, v2)
omega = angle(v1, v2, antipodal=True)
omega = angle(h1, h2, symmetry=False)
omega = angle(v1, v2, N)                # in the plane normal to N, from 0 to 2 pi
omega = angle(v1, v2, outer=True)       # every pair
```

MATLAB's [vector3d.angle](vector3d.angle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L590">source</a></font>
{% endraw %}
