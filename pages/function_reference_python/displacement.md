---
title: 'displacement'
sidebar: function_reference_sidebar
permalink: displacement_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
evaluate the displacement produced by a spatial transform.

## Syntax

<div class="mx-form" markdown="1">

```python
u = displacement(T, pos)
```

</div>

## Description

For an MTEX object, displacement(x, ...) calls x.displacement(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
displacement(x, *args, **kwargs)
```

</div>

## Methods it calls

| [spatialTransform](spatialTransform.displacement_py.html) | the displacement of the positions, T * pos - pos |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
