---
title: 'S2VectorFieldHandle.S2VectorFieldHandle'
sidebar: function_reference_sidebar
permalink: S2VectorFieldHandle.S2VectorFieldHandle_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2VectorFieldHandle.S2VectorFieldHandle.html
status: Reference
---
{% raw %}
a vector field on the sphere given by a callable of the directions, the bandwidth a hint for
its harmonic expansion

## Syntax

<div class="mx-form" markdown="1">

```python
vF = S2VectorFieldHandle(lambda v: v.cross(vector3d.Z()))
```

</div>

## Signature

<div class="mx-form" markdown="1">

```python
S2VectorFieldHandle(fun, frame=None, *, bandwidth=None)
```

</div>

MATLAB's [S2VectorFieldHandle.S2VectorFieldHandle](S2VectorFieldHandle.S2VectorFieldHandle.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2vectorfield.py#L527">source</a></font>
{% endraw %}
