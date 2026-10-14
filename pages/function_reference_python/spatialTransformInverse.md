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
the inverse of a transform that knows none in closed form, each preimage found by fixed point
iteration to the tolerance tol relative to the extent of the positions

## Syntax

<div class="mx-form" markdown="1">

```python
Tinv = spatialTransformInverse(T, tol=1e-10, maxIter=100)
```

</div>

## Members

| [eval](spatialTransformInverse.eval_py.html) | the preimage by fixed point iteration: the position moved against the error its image makes |
| [inv](spatialTransformInverse.inv_py.html) | the transform it inverts |
| [isid](spatialTransformInverse.isid_py.html) | whether the inverted transform is the identity |
| [paramChar](spatialTransformInverse.paramChar_py.html) | the parameters of the inverted transform as a line of text |
| [shortChar](spatialTransformInverse.shortChar_py.html) | the short name of the inverted transform with the prefix inv- |

MATLAB's [spatialTransformInverse](spatialTransformInverse.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L846">source</a></font>
{% endraw %}
