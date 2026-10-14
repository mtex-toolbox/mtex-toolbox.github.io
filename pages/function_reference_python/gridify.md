---
title: 'gridify'
sidebar: function_reference_sidebar
permalink: gridify_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
arrange measurements on the cells of their spatial lattice.

## Syntax

<div class="mx-form" markdown="1">

```python
grid = gridify(ebsd)
```

</div>

## Description

For an MTEX object, gridify(x, ...) calls x.gridify(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
gridify(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.gridify_py.html) | the same map with its arrays in map shape, the missing cells padding |
| [EBSD3](EBSD3.gridify_py.html) | a list of voxels put back onto the (n1, n2, n3) array of its lattice |

## Used on

[EBSDGrid](EBSDGrid_py.html), [EBSDInter](EBSDInter_py.html), [EBSDMapsAndImages](EBSDMapsAndImages_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
