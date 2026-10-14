---
title: 'The class spatialTransformHandle'
sidebar: function_reference_sidebar
permalink: spatialTransformHandle_index_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
a transform given by a function of the positions and, for the inverse, a second one

```python
T = spatialTransformHandle(fun, funInv)
```

## Members

| | |
|---|---|
| [eval](spatialTransformHandle.eval_py.html) | the positions the function returns |
| [inv](spatialTransformHandle.inv_py.html) | the transform of the inverse function, an error where none was given |
| [paramChar](spatialTransformHandle.paramChar_py.html) | the name of the function as a line of text |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/spatialtransform.py#L613">source</a></font>
{% endraw %}
