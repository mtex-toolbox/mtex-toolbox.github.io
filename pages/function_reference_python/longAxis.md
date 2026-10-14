---
title: 'longAxis'
sidebar: function_reference_sidebar
permalink: longAxis_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
return the longest fitted half axis of each grain outline.

## Syntax

<div class="mx-form" markdown="1">

```python
a = longAxis(grains)
```

</div>

## Description

For an MTEX object, longAxis(x, ...) calls x.longAxis(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
longAxis(x, *args, **kwargs)
```

</div>

## Methods it calls

| [grain2d](grain2d.longAxis_py.html) | the long half axis of the ellipse of every outline, the larger principal component |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
