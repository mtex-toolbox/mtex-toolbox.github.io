---
title: 'gradientY'
sidebar: function_reference_sidebar
permalink: gradientY_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
differentiate map orientations along the y direction.

## Syntax

<div class="mx-form" markdown="1">

```python
dy = gradientY(ebsd)
```

</div>

## Description

For an MTEX object, gradientY(x, ...) calls x.gradientY(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
gradientY(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.gradientY_py.html) | the derivative of the orientation along the specimen y axis per unit length, gradient(ebsd, yvector) |
| [EBSD3](EBSD3.gradientY_py.html) | the derivative of the orientation along the second axis of the volume per unit length |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
