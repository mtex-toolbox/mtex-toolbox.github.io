---
title: 'The class spatialTransformDrift'
sidebar: function_reference_sidebar
permalink: spatialTransformDrift_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a displacement along the slow scan direction: linear between the knots s, the displacements u
one row each, NaN beyond them unless extrapolate=True continues the end segments

```python
T = spatialTransformDrift(s, u, slowScan=vector3d(0, 1, 0))
T = spatialTransformDrift.fit(posA, posB)          the median displacement of every scan line
```

## Members

| | |
|---|---|
| [eval](spatialTransformDrift.eval_py.html) | the positions moved by the drift interpolated at their coordinate along the slow scan direction |
| [fit](spatialTransformDrift.fit_py.html) | a linear spline through the median displacement of every scan line |
| [fitOptions](spatialTransformDrift.fitOptions_py.html) | the slow scan direction, the keyword a refit keeps |
| [inv](spatialTransformDrift.inv_py.html) | the inverse by fixed point iteration |
| [isid](spatialTransformDrift.isid_py.html) | whether the drift has no knots or displaces by nothing |
| [paramChar](spatialTransformDrift.paramChar_py.html) | the knots and the largest displacement as a line of text |

## Used on

[EBSDSpatialTransform](EBSDSpatialTransform_py.html), [EBSDTrueEbsd](EBSDTrueEbsd_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L467">source</a></font>
{% endraw %}
