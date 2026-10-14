---
title: 'gradientX'
sidebar: function_reference_sidebar
permalink: gradientX_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
differentiate map orientations along the x direction.

## Syntax

<div class="mx-form" markdown="1">

```python
dx = gradientX(ebsd)
```

</div>

## Description

For an MTEX object, gradientX(x, ...) calls x.gradientX(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
gradientX(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.gradientX_py.html) | the derivative of the orientation along the specimen x axis per unit length, gradient(ebsd, xvector) |
| [EBSD3](EBSD3.gradientX_py.html) | the derivative of the orientation along the first axis of the volume per unit length |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
