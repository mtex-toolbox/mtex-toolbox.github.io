---
title: 'gradient'
sidebar: function_reference_sidebar
permalink: gradient_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
calculate spatial orientation derivatives of a map.

## Syntax

<div class="mx-form" markdown="1">

```python
derivatives = gradient(ebsd)
```

</div>

## Description

For an MTEX object, gradient(x, ...) calls x.gradient(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
gradient(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.gradient_py.html) | the derivative of the orientation along the two axes of the plane of the map, per unit length, as a pair of framed vectors |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
