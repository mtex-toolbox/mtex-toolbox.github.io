---
title: 'The class spatialTransformField'
sidebar: function_reference_sidebar
permalink: spatialTransformField_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: spatialTransformField.html
status: Reference
---
{% raw %}
a scan distortion interpolated from measured displacement vectors

## Syntax

<div class="mx-form" markdown="1">

```python
T = spatialTransformField(pos, u)
T = spatialTransformField.fit(posA, posB)
moved = T * query
```

</div>

## Description

Displacements are interpolated linearly over a triangulation of the sample xy positions,
with coordinates rescaled for interpolation. Queries outside the convex hull use the nearest
sample's displacement. The interpolated x and y displacement is added to the query;
z is preserved. This differs from MATLAB's natural-neighbour interpolation and linear
extrapolation. With no samples the transform is the identity.

## Input

| `pos` | vector3d sample positions |
| `u` | vector3d displacements, one per sample position |

## Output

| `T` | spatialTransformField |

## See also

[spatialTransformField.fit](spatialTransformField.fit_py.html), [spatialTransformDrift](spatialTransformDrift_index_py.html), [spatialTransformInverse](spatialTransformInverse_index_py.html)

## Members

| [eval](spatialTransformField.eval_py.html) | linear over the triangulation of the points in coordinates of unit spread, the nearest point beyond it |
| [fit](spatialTransformField.fit_py.html) | the field of the displacements of the point pairs, at the points of frame A |
| [inv](spatialTransformField.inv_py.html) | the inverse by fixed point iteration |
| [isid](spatialTransformField.isid_py.html) | whether the field has no points or displaces by nothing |
| [paramChar](spatialTransformField.paramChar_py.html) | the number of points and the largest displacement as a line of text |

MATLAB's [spatialTransformField](spatialTransformField.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L751">source</a></font>
{% endraw %}
