---
title: 'matrix'
sidebar: function_reference_sidebar
permalink: matrix_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
matrix(x, ...) is x.matrix(...), the method of the object passed

## Syntax

<div class="mx-form" markdown="1">

```python
matrix(x, *args, **kwargs)
```

</div>

## Methods it calls

| [orthogonalTransform](orthogonalTransform.matrix_py.html) | the orthogonal matrices, the rotation matrix times the parity |
| [quaternion](quaternion.matrix_py.html) | the rotation matrices, of shape (..., 3, 3) |
| [rotation](rotation.matrix_py.html) | the rotation matrices, of shape (..., 3, 3) |
| [spatialTransform](spatialTransform.matrix_py.html) | the 3 x 3 homogeneous matrix of the transform, None where it has none |
| [spatialTransformId](spatialTransformId.matrix_py.html) | the 3 x 3 identity matrix |
| [spatialTransformProjective](spatialTransformProjective.matrix_py.html) | the 3 x 3 homography |
| [spatialTransformShift](spatialTransformShift.matrix_py.html) | the 3 x 3 homogeneous matrix of the affine map |

## Used on

[RotationImproper](RotationImproper_py.html), [RotationSpinTensor](RotationSpinTensor_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
