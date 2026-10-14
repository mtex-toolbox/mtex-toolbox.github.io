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
return polar vector coordinates or a tensor polar decomposition.

## Syntax

<div class="mx-form" markdown="1">

```python
theta, rho, radius = polar(v)
```

</div>

## Description

For an MTEX object, polar(x, ...) calls x.polar(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
polar(x, *args, **kwargs)
```

</div>

## Methods it calls

| [S2Grid](S2Grid.polar_py.html) | the polar angles of the grid points, exact from the rings |
| [tensor](tensor.polar_py.html) | factor a rank-two tensor into an orthogonal part and symmetric stretch tensors |
| [vector3d](vector3d.polar_py.html) | return polar angle, azimuth and length for every vector |
| [velocityGradientTensor](velocityGradientTensor.polar_py.html) | factor a rank-two tensor into an orthogonal part and symmetric stretch tensors |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
