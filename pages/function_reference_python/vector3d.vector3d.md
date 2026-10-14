---
title: 'vector3d.vector3d'
sidebar: function_reference_sidebar
permalink: vector3d.vector3d_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.vector3d.html
status: Reference
---
{% raw %}
three dimensional vectors, a container over (..., 3) coordinates carrying antipodal,
isNormalized, the reference frame and the display style; a vector in a crystal frame is a
crystal direction with Miller indices

## Syntax

```python
vector3d(*args, antipodal=False, isNormalized=False, frame=None, dispStyle=None, dtype=None)
```

```python
vector3d(x, y, z)
vector3d(xyz, frame=cs)             coordinates of shape (..., 3) or (3, N)
vector3d.byPolar(theta, rho)
vector3d.X, vector3d.Y, vector3d.Z
```

## Used on

[CrystalOperations](CrystalOperations_py.html), [QuasiCrystals](QuasiCrystals_py.html), [MTEXvsBungeConvention](MTEXvsBungeConvention_py.html), [OrientationFibre](OrientationFibre_py.html), [EBSD3Analysis](EBSD3Analysis_py.html), [EBSD3Plotting](EBSD3Plotting_py.html), [Grains3D](Grains3D_py.html), [Grains3DBoundaries](Grains3DBoundaries_py.html), [Grains3DOperations](Grains3DOperations_py.html), [NeperInterface](NeperInterface_py.html), [EBSDGrid](EBSDGrid_py.html), [EBSDInter](EBSDInter_py.html)

MATLAB's [vector3d.vector3d](vector3d.vector3d.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L40">source</a></font>
{% endraw %}
