---
title: 'reduceBoundary'
sidebar: function_reference_sidebar
permalink: reduceBoundary_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
coarsen the boundary discretisation of grains.

## Syntax

<div class="mx-form" markdown="1">

```python
coarse = reduceBoundary(grains, 2)
```

</div>

## Description

For an MTEX object, reduceBoundary(x, ...) calls x.reduceBoundary(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
reduceBoundary(x, *args, **kwargs)
```

</div>

## Methods it calls

| [grain2d](grain2d.reduceBoundary_py.html) | the grains with every n-th vertex of their boundary kept along each chain, whatever the shape, the inner boundary kept on it |
| [grain3d](grain3d.reduceBoundary_py.html) | the grains with their triangulated boundary coarsened, the vertices within cells of n edges merged |

## Used on

[EBSD3Analysis](EBSD3Analysis_py.html), [Grains3DBoundaries](Grains3DBoundaries_py.html), [Grains3DSmoothing](Grains3DSmoothing_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
