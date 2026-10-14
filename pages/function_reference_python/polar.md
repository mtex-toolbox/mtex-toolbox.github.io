---
title: 'polar'
sidebar: function_reference_sidebar
permalink: polar_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
polar(x, ...) is x.polar(...), the method of the object passed

## Syntax

<div class="mx-form" markdown="1">

```python
polar(x, *args, **kwargs)
```

</div>

## Methods it calls

| [S2Grid](S2Grid.polar_py.html) | the polar angles of the grid points, exact from the rings |
| [tensor](tensor.polar_py.html) | the polar decomposition T = R SR = SL R of a rank two tensor, R orthogonal, SL and SR symmetric |
| [vector3d](vector3d.polar_py.html) | polar angle to z in [0, pi] and azimuth from x towards y in [0, 2pi), vector3d/polar |
| [velocityGradientTensor](velocityGradientTensor.polar_py.html) | the polar decomposition T = R SR = SL R of a rank two tensor, R orthogonal, SL and SR symmetric |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
