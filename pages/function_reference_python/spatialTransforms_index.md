---
title: 'Spatial transforms'
sidebar: function_reference_sidebar
permalink: spatialTransforms_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: spatialTransforms_index.html
status: Reference
---
{% raw %}
Models for moving measurement positions between frames, fitting scan distortions and applying their inverses.

| Class or function | Description |
| --- | --- |
| [spatialTransform](spatialTransform_index_py.html) | a transformation of scan positions in the xy plane |
| [spatialTransformId](spatialTransformId_index_py.html) | the identity transform, which leaves every position where it is |
| [spatialTransformShift](spatialTransformShift_index_py.html) | an affine map of scan positions, including translation, rotation, scale and shear |
| [spatialTransformRigid](spatialTransformRigid_index_py.html) | a translation of the plane by the vector3d u |
| [spatialTransformProjective](spatialTransformProjective_index_py.html) | a projective transform of the plane, a homography given by a 3 x 3 matrix normalised to H[2, 2] = 1 |
| [spatialTransformPoly](spatialTransformPoly_index_py.html) | a scan distortion described by a polynomial displacement in x and y |
| [spatialTransformDrift](spatialTransformDrift_index_py.html) | a displacement that varies along the slow scan direction |
| [spatialTransformField](spatialTransformField_index_py.html) | a scan distortion interpolated from measured displacement vectors |
| [spatialTransformHandle](spatialTransformHandle_index_py.html) | a spatial transform defined by a callable and an optional inverse callable |
| [spatialTransformComposite](spatialTransformComposite_index_py.html) | a sequence of spatial transforms applied in the supplied order |
| [spatialTransformTilt](spatialTransformTilt_index_py.html) | specimen tilt, fitted in stages against a re-measured residual: a projective stage takes the bulk, then an affine and a quadratic polynomial what is left |
| [spatialTransformInverse](spatialTransformInverse_index_py.html) | a numerical inverse of a spatial transform without a closed-form inverse |
| [spatialTransformList](spatialTransformList_index_py.html) | a list of transforms, one hop each, displayed as MATLAB's table of a spatialTransform array |
{% endraw %}
