---
title: 'discretize'
sidebar: function_reference_sidebar
permalink: discretize_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
sample a spatial transform as a displacement field at given positions.

## Syntax

<div class="mx-form" markdown="1">

```python
field = discretize(T, pos)
```

</div>

## Description

For an MTEX object, discretize(x, ...) calls x.discretize(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
discretize(x, *args, **kwargs)
```

</div>

## Methods it calls

| [spatialTransform](spatialTransform.discretize_py.html) | the transform as a field of displacements at the given points |

## Used on

[EBSDSpatialTransform](EBSDSpatialTransform_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
