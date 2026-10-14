---
title: 'shift'
sidebar: function_reference_sidebar
permalink: shift_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
translate map positions by a spatial displacement.

## Syntax

<div class="mx-form" markdown="1">

```python
shifted = shift(ebsd, displacementVector)
```

</div>

## Description

For an MTEX object, shift(x, ...) calls x.shift(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
shift(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.shift_py.html) | the map with every position moved by the vector v, the arrays not reordered |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
