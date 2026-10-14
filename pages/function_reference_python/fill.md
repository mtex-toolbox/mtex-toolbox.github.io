---
title: 'fill'
sidebar: function_reference_sidebar
permalink: fill_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
fill missing measurements in a map using nearby data or grain information.

## Syntax

<div class="mx-form" markdown="1">

```python
filled = fill(ebsd)
```

</div>

## Description

For an MTEX object, fill(x, ...) calls x.fill(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
fill(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.fill_py.html) | the map with every pixel that carries no measurement filled, the measured ones left as they are |
| [EBSD3](EBSD3.fill_py.html) | the empty voxels of a volume filled from their nearest measured voxel |

## Used on

[EBSDFilling](EBSDFilling_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
