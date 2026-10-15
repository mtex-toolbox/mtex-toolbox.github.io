---
title: 'The class spatialTransformShift'
sidebar: function_reference_sidebar
permalink: spatialTransformShift_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: spatialTransformShift.html
status: Reference
---
{% raw %}
an affine map of scan positions, including translation, rotation, scale and shear

## Syntax

<div class="mx-form" markdown="1">

```python
T = spatialTransformShift(M)
T = spatialTransformShift.fit(posA, posB, weights=w)
pos2 = T * pos
```

</div>

## Description

The homogeneous matrix acts on the column [x, y, 1]. Thus its upper-left 2-by-2 block
sets the linear map and M[:2, 2] sets the translation. The z coordinate is preserved.
The default matrix is the identity. Despite the class name, this represents a full affine
map; spatialTransformRigid provides a pure translation.

## Input

| `M` | 3-by-3 matrix with last row [0, 0, 1], or None for the identity |

## Output

| `T` | spatialTransformShift |

## Properties

| `M` | homogeneous affine matrix |

## See also

[spatialTransformShift.fit](spatialTransformShift.fit_py.html), [spatialTransformShift.parts](spatialTransformShift.parts_py.html), [spatialTransformRigid](spatialTransformRigid_index_py.html), [spatialTransformProjective](spatialTransformProjective_index_py.html)

## Members

| [eval](spatialTransformShift.eval_py.html) | the positions moved by the affine map |
| [fit](spatialTransformShift.fit_py.html) | the affine map fitted to point pairs by weighted least squares, the positions posA in frame A and where they went, posB |
| [inv](spatialTransformShift.inv_py.html) | the affine map of the inverse matrix |
| [isid](spatialTransformShift.isid_py.html) | whether the matrix is the identity |
| [matrix](spatialTransformShift.matrix_py.html) | the 3 x 3 homogeneous matrix of the affine map |
| [paramChar](spatialTransformShift.paramChar_py.html) | the scales, the rotation, the shear and the translation of the map as a line of text |
| [parts](spatialTransformShift.parts_py.html) | decompose the affine linear part into scales, rotation and shear |

## Used on

[EBSDSpatialTransform](EBSDSpatialTransform_py.html), [EBSDTrueEbsd](EBSDTrueEbsd_py.html)

MATLAB's [spatialTransformShift](spatialTransformShift.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform/__init__.py#L258">source</a></font>
{% endraw %}
