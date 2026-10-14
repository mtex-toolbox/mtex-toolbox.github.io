---
title: 'transformationMatrix'
sidebar: function_reference_sidebar
permalink: transformationMatrix_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
transformationMatrix(x, ...) is x.transformationMatrix(...), the method of the object passed

## Syntax

<div class="mx-form" markdown="1">

```python
transformationMatrix(x, *args, **kwargs)
```

</div>

## Methods it calls

| [crystalFrame](crystalFrame.transformationMatrix_py.html) | between crystal frames the axes are first re-paired by nearest length when the cells disagree, which is how the monoclinic settings 121 and 112 relate |
| [referenceFrame](referenceFrame.transformationMatrix_py.html) | the transition matrix taking coordinates in this frame to coordinates in the other, on normalised bases: with the unit axes as rows, inv(B) A is the rotation between the two settings of one lattice |

## Used on

[CrystalReferenceSystem](CrystalReferenceSystem_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
