---
title: 'transform'
sidebar: function_reference_sidebar
permalink: transform_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
apply a spatial transform to map positions.

## Syntax

<div class="mx-form" markdown="1">

```python
transformed = transform(ebsd, T)
```

</div>

## Description

For an MTEX object, transform(x, ...) calls x.transform(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
transform(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.transform_py.html) | any map of the positions |

## Used on

[EBSDGrid](EBSDGrid_py.html), [EBSDSpatialTransform](EBSDSpatialTransform_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
