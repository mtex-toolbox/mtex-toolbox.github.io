---
title: 'surfor'
sidebar: function_reference_sidebar
permalink: surfor_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
calculate the cumulative directional projection length of boundary segments.

## Syntax

<div class="mx-form" markdown="1">

```python
projection = surfor(boundary)
```

</div>

## Description

For an MTEX object, surfor(x, ...) calls x.surfor(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
surfor(x, *args, **kwargs)
```

</div>

## Methods it calls

| [grainBoundary](grainBoundary.surfor_py.html) | the cumulative projection length of the boundary segments (Panozzo 1984) |

## Used on

[ProjectionBasedParameters](ProjectionBasedParameters_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
