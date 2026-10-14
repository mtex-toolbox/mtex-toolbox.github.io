---
title: 'The class spatialTransform'
sidebar: function_reference_sidebar
permalink: spatialTransform_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: spatialTransform.html
status: Reference
---
{% raw %}
a transformation of scan positions in the xy plane

## Syntax

<div class="mx-form" markdown="1">

```python
pos2 = T * pos
pos2 = T(pos)
u = T.displacement(pos)
Ti = T.inv()
```

</div>

## Description

Transforms map vector3d positions to positions of the same shape. The supplied transform
classes change x and y and preserve z and the coordinate frame. Positions and displacements
use the same spatial units as the input data.

Composition follows matrix order: `T1 * T2` applies T2 first, then T1. The expression
T1 + T2 builds a sequence applying T1 first, then T2. Transforming EBSD data with
transform(ebsd, T) also updates its spatial representation.

This is the base class. Construct one of the affine, projective, polynomial, drift or
interpolated-field subclasses, or wrap a callable with spatialTransformHandle.

## See also

[spatialTransformShift](spatialTransformShift_index_py.html), [spatialTransformProjective](spatialTransformProjective_index_py.html), [spatialTransformPoly](spatialTransformPoly_index_py.html), [spatialTransformDrift](spatialTransformDrift_index_py.html), [spatialTransformField](spatialTransformField_index_py.html), [spatialTransformComposite](spatialTransformComposite_index_py.html)

## Members

| [absorb](spatialTransform.absorb_py.html) | one matrix for two transforms that each have one: affine where the product keeps the last row, projective otherwise |
| [char](spatialTransform.char_py.html) | the name and the parameters of the transform as one line of text |
| [discretize](spatialTransform.discretize_py.html) | the transform as a field of displacements at the given points |
| [displacement](spatialTransform.displacement_py.html) | the displacement of the positions, T * pos - pos |
| [eval](spatialTransform.eval_py.html) | the positions moved by the transform, T * pos |
| [fitOptions](spatialTransform.fitOptions_py.html) | the keywords a refit of this transform takes to keep its kind, as a dict |
| [inv](spatialTransform.inv_py.html) | the inverse transform |
| [isid](spatialTransform.isid_py.html) | whether the transform is the identity |
| [matrix](spatialTransform.matrix_py.html) | the 3 x 3 homogeneous matrix of the transform, None where it has none |
| [norm](spatialTransform.norm_py.html) | the length of the displacement at every position |
| [paramChar](spatialTransform.paramChar_py.html) | the parameters of the transform as a line of text for its display |
| [shortChar](spatialTransform.shortChar_py.html) | the short name of the transform in its display, the class name without spatialTransform |
| [stageList](spatialTransform.stageList_py.html) | the stages the transform is applied in, a list |

MATLAB's [spatialTransform](spatialTransform.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L105">source</a></font>
{% endraw %}
