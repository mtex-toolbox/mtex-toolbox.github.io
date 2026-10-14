---
title: 'The class spatialTransformShift'
sidebar: function_reference_sidebar
permalink: spatialTransformShift_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
an affine transform of the plane, given by a 3 x 3 homogeneous matrix with last row [0 0 1]

```python
T = spatialTransformShift(M)
T = spatialTransformShift.fit(posA, posB, weights=w)
```

## Members

| | |
|---|---|
| [eval](spatialTransformShift.eval_py.html) | the positions moved by the affine map |
| [fit](spatialTransformShift.fit_py.html) | the affine map fitted to point pairs by weighted least squares, the positions posA in frame A and where they went, posB |
| [inv](spatialTransformShift.inv_py.html) | the affine map of the inverse matrix |
| [isid](spatialTransformShift.isid_py.html) | whether the matrix is the identity |
| [matrix](spatialTransformShift.matrix_py.html) | the 3 x 3 homogeneous matrix of the affine map |
| [paramChar](spatialTransformShift.paramChar_py.html) | the scales, the rotation, the shear and the translation of the map as a line of text |
| [parts](spatialTransformShift.parts_py.html) | the scales, the rotation and the shear of the linear part, from its QR decomposition |

## Used on

[EBSDSpatialTransform](EBSDSpatialTransform_py.html), [EBSDTrueEbsd](EBSDTrueEbsd_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L241">source</a></font>
{% endraw %}
