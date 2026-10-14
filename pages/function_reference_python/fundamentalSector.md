---
title: 'fundamentalSector'
sidebar: function_reference_sidebar
permalink: fundamentalSector_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
return a spherical region containing one representative of each symmetry orbit.

## Syntax

<div class="mx-form" markdown="1">

```python
sector = fundamentalSector(cs)
```

</div>

## Description

For an MTEX object, fundamentalSector(x, ...) calls x.fundamentalSector(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
fundamentalSector(x, *args, **kwargs)
```

</div>

## Methods it calls

| [referenceFrame](referenceFrame.fundamentalSector_py.html) | the fundamental sector of the group of the frame on the sphere, the region an inverse pole figure shows |
| [symmetry](symmetry.fundamentalSector_py.html) | the fundamental sector of the group on the sphere, the region of the directions one symmetric copy of each falls into |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
