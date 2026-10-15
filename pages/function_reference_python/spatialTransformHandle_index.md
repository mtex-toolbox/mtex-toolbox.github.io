---
title: 'The class spatialTransformHandle'
sidebar: function_reference_sidebar
permalink: spatialTransformHandle_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: spatialTransformHandle_index.html
status: Reference
---
{% raw %}
a spatial transform defined by a callable and an optional inverse callable

## Syntax

<div class="mx-form" markdown="1">

```python
T = spatialTransformHandle(fun, funInv)
moved = T * pos
```

</div>

## Description

The callable receives vector3d positions and must return their transformed positions,
rather than their displacements. It is responsible for preserving the required shape,
frame and z coordinates. Supply funInv to enable T.inv(); without it, requesting an
inverse raises ValueError. The inverse callable receives positions in the output space.

## Input

| `fun` | callable mapping input positions to output positions |
| `funInv` | inverse callable, or None if no inverse is provided |

## Output

| `T` | spatialTransformHandle |

## See also

[spatialTransform](spatialTransform_index_py.html), [spatialTransformInverse](spatialTransformInverse_index_py.html)

## Members

| [eval](spatialTransformHandle.eval_py.html) | the positions the function returns |
| [inv](spatialTransformHandle.inv_py.html) | the transform of the inverse function, an error where none was given |
| [paramChar](spatialTransformHandle.paramChar_py.html) | the name of the function as a line of text |

MATLAB's [spatialTransformHandle_index](spatialTransformHandle_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform/__init__.py#L844">source</a></font>
{% endraw %}
