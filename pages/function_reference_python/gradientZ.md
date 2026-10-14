---
title: 'gradientZ'
sidebar: function_reference_sidebar
permalink: gradientZ_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
gradientZ(x, ...) is x.gradientZ(...), the method of the object passed

## Syntax

```python
gradientZ(x, *args, **kwargs)
```

## Methods it calls

| | |
|---|---|
| [EBSD](EBSD.gradientZ_py.html) | the derivative of the orientation along the specimen z axis per unit length, gradient(ebsd, zvector), which a planar map has only where z lies in its plane |
| [EBSD3](EBSD3.gradientZ_py.html) | the derivative of the orientation along the third axis of the volume per unit length, gradientDim(ebsd, 2) |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
