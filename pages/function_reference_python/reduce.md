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
reduce(x, ...) is x.reduce(...), the method of the object passed

## Syntax

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

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L14">source</a></font>
{% endraw %}
