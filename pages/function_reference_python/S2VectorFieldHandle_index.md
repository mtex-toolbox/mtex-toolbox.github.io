---
title: 'The class S2VectorFieldHandle'
sidebar: function_reference_sidebar
permalink: S2VectorFieldHandle_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: S2VectorFieldHandle_index.html
status: Reference
---
{% raw %}
a vector field on the sphere given by a callable of the directions, the bandwidth a hint for
its harmonic expansion

## Syntax

<div class="mx-form" markdown="1">

```python
vF = S2VectorFieldHandle(lambda v: v.cross(vector3d.Z))
```

</div>

## Input

| `fun` | callable receiving unit vector3d directions and returning one vector per direction |
| `frame` | referenceFrame of the query directions, or None for frame-free directions |
| `bandwidth` | harmonic degree used when approximating the callable; default defaultS2Bandwidth preference |

## Members

| [eval](S2VectorFieldHandle.eval_py.html) | the vectors the callable gives at the directions x, vF(x) |
| [fhat](S2VectorFieldHandle.fhat_py.html) | the coefficients of the harmonic expansion of the field at its bandwidth hint |
| [rotate](S2VectorFieldHandle.rotate_py.html) | the field rotated by r, v'(xi) = r v(r^-1 xi) |
| [S2VectorFieldHandle](S2VectorFieldHandle.S2VectorFieldHandle_py.html) | a vector field on the sphere given by a callable of the directions, the bandwidth a hint for its harmonic expansion |

MATLAB's [S2VectorFieldHandle_index](S2VectorFieldHandle_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/functions/s2vectorfield.py#L527">source</a></font>
{% endraw %}
