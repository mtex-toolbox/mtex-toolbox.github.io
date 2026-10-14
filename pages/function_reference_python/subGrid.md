---
title: 'subGrid'
sidebar: function_reference_sidebar
permalink: subGrid_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
select grid points by indices or by a geometric neighbourhood.

## Syntax

<div class="mx-form" markdown="1">

```python
selected = subGrid(grid, mask)
```

</div>

## Description

For an MTEX object, subGrid(x, ...) calls x.subGrid(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
subGrid(x, *args, **kwargs)
```

</div>

## Methods it calls

| [mapImage](mapImage.subGrid_py.html) | a rectangle cut out of the image |
| [S1Grid](S1Grid.subGrid_py.html) | the points selected by a mask, the range kept |
| [S2Grid](S2Grid.subGrid_py.html) | the grid points selected by a mask, or within eps of a centre |
| [SO3FibonacciGrid](SO3FibonacciGrid.subGrid_py.html) | the grid of the orientations a mask or an index array selects |
| [SO3Grid](SO3Grid.subGrid_py.html) | the rotations selected by a mask |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
