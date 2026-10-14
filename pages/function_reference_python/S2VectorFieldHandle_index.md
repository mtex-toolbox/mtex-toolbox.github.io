---
title: 'The class S2VectorFieldHandle'
sidebar: function_reference_sidebar
permalink: S2VectorFieldHandle_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a vector field on the sphere given by a callable of the directions, the bandwidth a hint for
its harmonic expansion

```python
vF = S2VectorFieldHandle(lambda v: v.cross(vector3d.Z()))
```

## Members

| | |
|---|---|
| [eval](S2VectorFieldHandle.eval_py.html) | the vectors the callable gives at the directions x, vF(x) |
| [fhat](S2VectorFieldHandle.fhat_py.html) | the coefficients of the harmonic expansion of the field at its bandwidth hint |
| [rotate](S2VectorFieldHandle.rotate_py.html) | the field rotated by r, v'(xi) = r v(r^-1 xi) |
| [S2VectorFieldHandle](S2VectorFieldHandle.S2VectorFieldHandle_py.html) | a vector field on the sphere given by a callable of the directions, the bandwidth a hint for its harmonic expansion |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2vectorfield.py#L460">source</a></font>
{% endraw %}
