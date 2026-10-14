---
title: 'The class spatialTransformComposite'
sidebar: function_reference_sidebar
permalink: spatialTransformComposite_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
stages applied in order, the first given first; nested composites are flattened

## Syntax

<div class="mx-form" markdown="1">

```python
T = spatialTransformComposite(T1, T2, T3)
```

</div>

## Members

| [eval](spatialTransformComposite.eval_py.html) | the positions moved through every stage in order |
| [fitStage](spatialTransformComposite.fitStage_py.html) | the stage s, counted from zero, fitted to a residual measured after the ones before it |
| [inv](spatialTransformComposite.inv_py.html) | the inverses of the stages in reverse order |
| [isid](spatialTransformComposite.isid_py.html) | whether every stage is the identity |
| [paramChar](spatialTransformComposite.paramChar_py.html) | the stages with their parameters as one line of text |
| [shortChar](spatialTransformComposite.shortChar_py.html) | the short names of the stages joined by dashes |
| [stageList](spatialTransformComposite.stageList_py.html) | the stages, a list |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L777">source</a></font>
{% endraw %}
