---
title: 'principalComponents'
sidebar: function_reference_sidebar
permalink: principalComponents_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
principalComponents(x, ...) is x.principalComponents(...), the method of the object passed

## Syntax

```python
principalComponents(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [grain2d](grain2d.principalComponents_py.html) | the two half axes of the ellipse with the same second area moments as every outline, the long one first, as antipodal vectors of the specimen frame |
| [grain3d](grain3d.principalComponents_py.html) | the half axes of the ellipsoid of the same second moments and volume, the longest first |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
