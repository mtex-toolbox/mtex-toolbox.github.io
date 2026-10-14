---
title: 'The class spatialTransformProjective'
sidebar: function_reference_sidebar
permalink: spatialTransformProjective_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: spatialTransformProjective.html
status: Reference
---
{% raw %}
a projective transform of the plane, a homography given by a 3 x 3 matrix normalised to
H[2, 2] = 1; straight lines stay straight

```python
T = spatialTransformProjective(H)
T = spatialTransformProjective.byTilt(theta, wd, centre)
T = spatialTransformProjective.fit(posA, posB, weights=w)
```

## Members

| | |
|---|---|
| [byTilt](spatialTransformProjective.byTilt_py.html) | the specimen tilted by theta about an axis along x through centre, seen from the working distance wd: the far side shrinks and straight lines stay straight |
| [eval](spatialTransformProjective.eval_py.html) | the positions moved by the homography |
| [fit](spatialTransformProjective.fit_py.html) | the homography of the direct linear transform, robustly reweighted |
| [inv](spatialTransformProjective.inv_py.html) | the homography of the inverse matrix |
| [isid](spatialTransformProjective.isid_py.html) | whether the homography is the identity |
| [matrix](spatialTransformProjective.matrix_py.html) | the 3 x 3 homography |
| [paramChar](spatialTransformProjective.paramChar_py.html) | the perspective terms of the homography as a line of text |

## Used on

[EBSDSpatialTransform](EBSDSpatialTransform_py.html)

MATLAB's [spatialTransformProjective](spatialTransformProjective.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L332">source</a></font>
{% endraw %}
