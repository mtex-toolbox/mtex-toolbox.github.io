---
title: 'The class spatialTransformInverse'
sidebar: function_reference_sidebar
permalink: spatialTransformInverse_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: spatialTransformInverse.html
status: Reference
---
{% raw %}
a numerical inverse of a spatial transform without a closed-form inverse

## Syntax

<div class="mx-form" markdown="1">

```python
Ti = spatialTransformInverse(T, tol=1e-10, maxIter=100)
original = Ti * transformed
```

</div>

## Description

Starting at each target position, fixed-point iteration subtracts the error between its
current image and the target. This works for sufficiently small, well-behaved distortions;
a folded map or a poorly converging iteration raises ValueError.

Convergence requires the largest xy error to be at most tol times max(1, the largest
absolute finite target coordinate). Iteration also stops if the error ceases to decrease
sufficiently after the first three steps. The z coordinate is preserved.

## Input

| `T` | spatialTransform to invert |
| `tol` | relative position tolerance; default 1e-10 |
| `maxIter` | maximum iteration count; default 100 |

## Output

| `Ti` | spatialTransformInverse |

## See also

[spatialTransform.inv](spatialTransform.inv_py.html), [spatialTransformField](spatialTransformField_index_py.html), [spatialTransformPoly](spatialTransformPoly_index_py.html)

## Members

| [eval](spatialTransformInverse.eval_py.html) | the preimage by fixed point iteration: the position moved against the error its image makes |
| [inv](spatialTransformInverse.inv_py.html) | the transform it inverts |
| [isid](spatialTransformInverse.isid_py.html) | whether the inverted transform is the identity |
| [paramChar](spatialTransformInverse.paramChar_py.html) | the parameters of the inverted transform as a line of text |
| [shortChar](spatialTransformInverse.shortChar_py.html) | the short name of the inverted transform with the prefix inv- |

MATLAB's [spatialTransformInverse](spatialTransformInverse.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L993">source</a></font>
{% endraw %}
