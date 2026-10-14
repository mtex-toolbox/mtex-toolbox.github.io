---
title: 'S2VectorField.quiver3'
sidebar: function_reference_sidebar
permalink: S2VectorField.quiver3_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2VectorField.quiver3.html
status: Reference
---
{% raw %}
quiver3d(t): a tangent vector as an arrow at its reference in orientation space, in the
coordinates of the held axes or axis angle space; the arrow ends where the vector, scaled
to the longest of the list, points to, as MATLAB draws it; quiver3d(vF) a field on the
sphere as arrows in space; quiver3d(v, d) arrows at the positions v along d in a 3D scene
(MATLAB's quiver3)

## Syntax

```python
quiver3d(t, *args, lineWidth=1.5, color=None, normalize=False, axisAngle=False, Rodrigues=False, Euler=False, maxHeadSize=None, **kw)
```

## Used on

[Dream3dGrains](Dream3dGrains_py.html), [RotationTangentSpace](RotationTangentSpace_py.html), [SO3FunVectorField](SO3FunVectorField_py.html), [S2FunVectorField](S2FunVectorField_py.html), [BirefringenceDemo](BirefringenceDemo_py.html)

MATLAB's [S2VectorField.quiver3](S2VectorField.quiver3.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spaceplot.py#L637">source</a></font>
{% endraw %}
