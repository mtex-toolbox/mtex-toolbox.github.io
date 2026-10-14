---
title: 'reduce'
sidebar: function_reference_sidebar
permalink: reduce_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
coarsen a map lattice or a boundary discretisation.

## Syntax

<div class="mx-form" markdown="1">

```python
coarse = reduce(ebsd, 2)
```

</div>

## Description

For an MTEX object, reduce(x, ...) calls x.reduce(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
reduce(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.reduce_py.html) | every n-th measurement along each lattice direction, which is the map at a coarser step |
| [EBSD3](EBSD3.reduce_py.html) | every n-th measurement along each lattice direction, which is the map at a coarser step |
| [grainBoundary](grainBoundary.reduce_py.html) | the boundary coarsened by keeping every n-th vertex along each chain, whatever the shape |

## Used on

[ODFTheory](ODFTheory_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
