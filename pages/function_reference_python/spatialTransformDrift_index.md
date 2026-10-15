---
title: 'The class spatialTransformDrift'
sidebar: function_reference_sidebar
permalink: spatialTransformDrift_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: spatialTransformDrift_index.html
status: Reference
---
{% raw %}
a displacement that varies along the slow scan direction

## Syntax

<div class="mx-form" markdown="1">

```python
T = spatialTransformDrift(s, u, slowScan=vector3d(0, 1, 0))
T = spatialTransformDrift.fit(posA, posB)
```

</div>

## Description

Project each position onto the unit slow-scan direction, then interpolate the x and y
displacement at that coordinate. The displacement varies linearly between supplied knots;
knots and their displacements are sorted together. Outside their range, positions become
NaN unless extrapolate=True continues the end segments. No knots gives the identity.

## Input

| `s` | one-dimensional array of knot coordinates in spatial units |
| `u` | array of shape (len(s), 2), giving x and y displacements at the knots |
| `slowScan` | vector3d direction, normalised internally; default is the y direction |
| `extrapolate` | continue the end segments outside the knot range; default False |

## Output

| `T` | spatialTransformDrift |

## See also

[spatialTransformDrift.fit](spatialTransformDrift.fit_py.html), [spatialTransformField](spatialTransformField_index_py.html)

## Members

| [eval](spatialTransformDrift.eval_py.html) | the positions moved by the drift interpolated at their coordinate along the slow scan direction |
| [fit](spatialTransformDrift.fit_py.html) | a drift along the slow scan direction, the linear spline through the median displacement of every scan line |
| [fitOptions](spatialTransformDrift.fitOptions_py.html) | the slow scan direction, the keyword a refit keeps |
| [inv](spatialTransformDrift.inv_py.html) | the inverse by fixed point iteration |
| [isid](spatialTransformDrift.isid_py.html) | whether the drift has no knots or displaces by nothing |
| [paramChar](spatialTransformDrift.paramChar_py.html) | the knots and the largest displacement as a line of text |

## Used on

[EBSDSpatialTransform](EBSDSpatialTransform_py.html), [EBSDTrueEbsd](EBSDTrueEbsd_py.html)

MATLAB's [spatialTransformDrift_index](spatialTransformDrift_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform/__init__.py#L629">source</a></font>
{% endraw %}
