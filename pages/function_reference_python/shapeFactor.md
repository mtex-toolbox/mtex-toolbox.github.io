---
title: 'shapeFactor'
sidebar: function_reference_sidebar
permalink: shapeFactor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
compare grain perimeters with circles of the same area.

## Syntax

<div class="mx-form" markdown="1">

```python
factor = shapeFactor(grains)
```

</div>

## Description

For an MTEX object, shapeFactor(x, ...) calls x.shapeFactor(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
shapeFactor(x, *args, **kwargs)
```

</div>

## Methods it calls

| [grain2d](grain2d.shapeFactor_py.html) | compare an outline's perimeter with that of a circle of equal area |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
