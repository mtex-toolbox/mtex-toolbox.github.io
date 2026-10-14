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
return the principal half axes of grain outlines or volumes.

## Syntax

<div class="mx-form" markdown="1">

```python
axes = principalComponents(grains)
```

</div>

## Description

For an MTEX object, principalComponents(x, ...) calls x.principalComponents(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
principalComponents(x, *args, **kwargs)
```

</div>

## Methods it calls

| [grain2d](grain2d.principalComponents_py.html) | the two half axes of the ellipse with the same second area moments as every outline, the long one first, as antipodal vectors of the specimen frame |
| [grain3d](grain3d.principalComponents_py.html) | the half axes of the ellipsoid of the same second moments and volume, the longest first |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
