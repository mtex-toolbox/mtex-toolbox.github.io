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
return the coordinate transition between two reference frames.

## Syntax

<div class="mx-form" markdown="1">

```python
M = transformationMatrix(frame1, frame2)
```

</div>

## Description

For an MTEX object, transformationMatrix(x, ...) calls x.transformationMatrix(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

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

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
