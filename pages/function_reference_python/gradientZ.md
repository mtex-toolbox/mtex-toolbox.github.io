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
differentiate map orientations along the z direction.

## Syntax

<div class="mx-form" markdown="1">

```python
dz = gradientZ(ebsd)
```

</div>

## Description

For an MTEX object, gradientZ(x, ...) calls x.gradientZ(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
gradientZ(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.gradientZ_py.html) | the derivative of the orientation along the specimen z axis per unit length, gradient(ebsd, zvector) |
| [EBSD3](EBSD3.gradientZ_py.html) | the derivative of the orientation along the third axis of the volume per unit length |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
