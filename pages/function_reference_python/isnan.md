---
title: 'isnan'
sidebar: function_reference_sidebar
permalink: isnan_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
identify objects containing missing coordinates or coefficients.

## Syntax

<div class="mx-form" markdown="1">

```python
missing = isnan(x)
```

</div>

## Description

For an MTEX object, isnan(x, ...) calls x.isnan(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

For numeric arrays without an MTEX method, this calls numpy.isnan.

## Signature

<div class="mx-form" markdown="1">

```python
isnan(x, *args, **kwargs)
```

</div>

## Methods it calls

| [quaternion](quaternion.isnan_py.html) | whether a quaternion has a NaN coefficient |
| [vector3d](vector3d.isnan_py.html) | whether a vector has a NaN coordinate |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
