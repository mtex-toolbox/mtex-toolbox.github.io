---
title: 'vector3d.interp'
sidebar: function_reference_sidebar
permalink: vector3d.interp_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: vector3d.interp.html
status: Reference
---
{% raw %}
A method of [vector3d](vector3d_index_py.html).

interpolate values sampled at directions on the sphere.

## Syntax

<div class="mx-form" markdown="1">

```python
f = v.interp(values, 'linear')
f = v.interp(values, 'harmonic', bandwidth=16)
result = v.interp(values, queryDirections, 'nearest')
```

</div>

## Description

Supply one value per direction. The methods are 'linear', 'harmonic', 'nearest' and
'inverseDistance'. Without query directions, return a callable spherical function;
with query directions, return its values there. Additional options are passed to
the selected interpolation method.

## Input

| `y` | values sampled at the directions in v |

## See also

[interpolate](SO3VectorFieldHarmonic.interpolate_py.html), [S2FunTri](S2FunTri_index_py.html), [S2FunHarmonic.interpolate](S2FunHarmonic.interpolate_py.html)

## Signature

<div class="mx-form" markdown="1">

```python
vector3d.interp(self, y, *args, **kwargs)
```

</div>

MATLAB's [vector3d.interp](vector3d.interp.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/vector3d.py#L430">source</a></font>
{% endraw %}
