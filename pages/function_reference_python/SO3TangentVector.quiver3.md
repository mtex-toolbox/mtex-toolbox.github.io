---
title: 'SO3TangentVector.quiver3'
sidebar: function_reference_sidebar
permalink: SO3TangentVector.quiver3_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: SO3TangentVector.quiver3.html
status: Reference
---
{% raw %}
A method of [SO3TangentVector](SO3TangentVector_index_py.html).

quiver3d(t): a tangent vector as an arrow at its reference in orientation space, in the
coordinates of the held axes or axis angle space; the arrow ends where the vector, scaled
to the longest of the list, points to, as MATLAB draws it; quiver3d(vF) a field on the
sphere as arrows in space; quiver3d(v, d) arrows at the positions v along d in a 3D scene
(MATLAB's quiver3)

## Syntax

```python
SO3TangentVector.quiver3(t, *args, lineWidth=1.5, color=None, normalize=False, axisAngle=False, Rodrigues=False, Euler=False, maxHeadSize=None, **kw)
```

MATLAB's [SO3TangentVector.quiver3](SO3TangentVector.quiver3.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/plotting/spaceplot.py#L637">source</a></font>
{% endraw %}
