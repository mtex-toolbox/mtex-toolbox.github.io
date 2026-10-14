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
a displacement interpolated between points: linear over their triangulation, the nearest point's
beyond it, where MATLAB takes natural neighbours and extrapolates linearly

## Syntax

<div class="mx-form" markdown="1">

```python
T = spatialTransformField(pos, u)
T = spatialTransformField.fit(posA, posB)
```

</div>

## Members

| [eval](spatialTransformField.eval_py.html) | linear over the triangulation of the points in coordinates of unit spread, the nearest point beyond it |
| [fit](spatialTransformField.fit_py.html) | the field of the displacements of the point pairs, at the points of frame A |
| [inv](spatialTransformField.inv_py.html) | the inverse by fixed point iteration |
| [isid](spatialTransformField.isid_py.html) | whether the field has no points or displaces by nothing |
| [paramChar](spatialTransformField.paramChar_py.html) | the number of points and the largest displacement as a line of text |

MATLAB's [spatialTransformField](spatialTransformField.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L671">source</a></font>
{% endraw %}
