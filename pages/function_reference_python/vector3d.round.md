---
title: 'vector3d.round'
sidebar: function_reference_sidebar
permalink: vector3d.round_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.round.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

a crystal direction rounded to integer indices, vector3d/round; style= the indices rounded
('hkl', 'hkil', 'uvw', 'UVTW', the display's by default), maxHKL the largest multiple tried; a
vector3d without a lattice has its coordinates rounded, maxXYZ the largest multiple tried;
return_error=True also gives the angle between the given and the rounded direction, without
symmetric equivalents, MATLAB's second output

## Syntax

```python
vector3d.round(self, style=None, maxHKL=12, maxXYZ=12, return_error=False)
```

```python
m = round(m)
m = round(m, maxHKL=5)
m = round(m, 'uvw')       # the direct indices integer
v = round(v, maxXYZ=5)
m, err = round(m, return_error=True)
```

## Used on

[NotationAndConventions](NotationAndConventions_py.html), [EllipseBasedParameters](EllipseBasedParameters_py.html), [OrientationRelationshipFit](OrientationRelationshipFit_py.html), [MagneticAnisotropy](MagneticAnisotropy_py.html)

MATLAB's [vector3d.round](vector3d.round.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L260">source</a></font>
{% endraw %}
