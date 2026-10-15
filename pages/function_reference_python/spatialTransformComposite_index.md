---
title: 'The class spatialTransformComposite'
sidebar: function_reference_sidebar
permalink: spatialTransformComposite_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
counterpart: spatialTransformComposite_index.html
status: Reference
---
{% raw %}
a sequence of spatial transforms applied in the supplied order

## Syntax

<div class="mx-form" markdown="1">

```python
T = spatialTransformComposite(T1, T2, T3)
moved = T * pos
```

</div>

## Description

This applies T1, then T2, then T3. Each argument may also be a list or tuple of stages;
nested composites are flattened. An empty sequence is the identity. Inversion reverses
the order and inverts each stage. T1 + T2 constructs the same ordering, while `T1 * T2`
uses matrix order and applies T2 first.

## Input

| `stages` | spatialTransform objects, or lists or tuples of them |

## Output

| `T` | spatialTransformComposite |

## Properties

| `stages` | ordered list of transforms |

## See also

[spatialTransformComposite.fitStage](spatialTransformComposite.fitStage_py.html), [spatialTransformTilt](spatialTransformTilt_index_py.html)

## Members

| [eval](spatialTransformComposite.eval_py.html) | the positions moved through every stage in order |
| [fitStage](spatialTransformComposite.fitStage_py.html) | return a composite with one stage fitted to supplied point pairs |
| [inv](spatialTransformComposite.inv_py.html) | the inverses of the stages in reverse order |
| [isid](spatialTransformComposite.isid_py.html) | whether every stage is the identity |
| [paramChar](spatialTransformComposite.paramChar_py.html) | the stages with their parameters as one line of text |
| [shortChar](spatialTransformComposite.shortChar_py.html) | the short names of the stages joined by dashes |
| [stageList](spatialTransformComposite.stageList_py.html) | the stages, a list |

MATLAB's [spatialTransformComposite_index](spatialTransformComposite_index.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform/__init__.py#L885">source</a></font>
{% endraw %}
