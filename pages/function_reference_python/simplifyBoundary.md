---
title: 'simplifyBoundary'
sidebar: function_reference_sidebar
permalink: simplifyBoundary_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
remove boundary vertices while limiting the change in outline shape.

## Syntax

<div class="mx-form" markdown="1">

```python
simplified = simplifyBoundary(grains, epsilon)
```

</div>

## Description

For an MTEX object, simplifyBoundary(x, ...) calls x.simplifyBoundary(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
simplifyBoundary(x, *args, **kwargs)
```

</div>

## Methods it calls

| [grain2d](grain2d.simplifyBoundary_py.html) | the grains with the vertices of their boundary that carry no shape dropped, those whose removal moves the boundary by less than epsilon, the inner boundary kept on it |

## Used on

[GrainSmoothingAdvanced](GrainSmoothingAdvanced_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
