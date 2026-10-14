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
express rotations, transforms or tensors as numeric matrices.

## Syntax

<div class="mx-form" markdown="1">

```python
M = matrix(x)
```

</div>

## Description

For an MTEX object, matrix(x, ...) calls x.matrix(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
matrix(x, *args, **kwargs)
```

</div>

## Methods it calls

| [orthogonalTransform](orthogonalTransform.matrix_py.html) | the orthogonal matrices, the rotation matrix times the parity |
| [quaternion](quaternion.matrix_py.html) | return the numeric rotation matrix of each unit quaternion |
| [rotation](rotation.matrix_py.html) | return the numeric rotation matrix of each unit quaternion |
| [spatialTransform](spatialTransform.matrix_py.html) | the 3 x 3 homogeneous matrix of the transform, None where it has none |
| [spatialTransformId](spatialTransformId.matrix_py.html) | the 3 x 3 identity matrix |
| [spatialTransformProjective](spatialTransformProjective.matrix_py.html) | the 3 x 3 homography |
| [spatialTransformShift](spatialTransformShift.matrix_py.html) | the 3 x 3 homogeneous matrix of the affine map |

## Used on

[RotationImproper](RotationImproper_py.html), [RotationSpinTensor](RotationSpinTensor_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
