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
the base of the spatial transforms, maps of the plane of a scan onto itself that move x and y
and leave z; T * pos moves positions, T1 * T2 is T2 followed by T1, T1 + T2 chains T1 first

## Syntax

```python
pos2 = T * pos
T.inv(), T.displacement(pos), T.discretize(pos), transform(ebsd, T)
```

## Members

| | |
|---|---|
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

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L104">source</a></font>
{% endraw %}
