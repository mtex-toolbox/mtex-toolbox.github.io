---
title: 'vector3d.polar'
sidebar: function_reference_sidebar
permalink: vector3d.polar_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.polar.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

return polar angle, azimuth and length for every vector.

## Syntax

<div class="mx-form" markdown="1">

```python
theta, rho, radius = v.polar()
```

</div>

## Description

The polar angle theta is measured from +z towards the xy plane and lies in [0, pi].
The azimuth rho is measured from +x towards +y and lies in [0, `2*pi`). Both angles
are in radians. Radius has the units of the Cartesian coordinates. The three arrays
have the shape of v; for a zero vector the implementation returns theta=pi/2 and rho=0.

## See also

[vector3d.byPolar](vector3d.byPolar_py.html), [vector3d.theta](vector3d.theta_py.html), [vector3d.rho](vector3d.rho_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
vector3d.polar(self)
```

</div>

MATLAB's [vector3d.polar](vector3d.polar.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L642">source</a></font>
{% endraw %}
