---
title: 'findByLocation'
sidebar: function_reference_sidebar
permalink: findByLocation_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
locate map measurements or grains at specified spatial positions.

## Syntax

<div class="mx-form" markdown="1">

```python
measurements = findByLocation(ebsd, pos)
```

</div>

## Description

For an MTEX object, findByLocation(x, ...) calls x.findByLocation(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
findByLocation(x, *args, **kwargs)
```

</div>

## Methods it calls

| [EBSD](EBSD.findByLocation_py.html) | the measurements closest to positions, or within a radius of them |
| [EBSD3](EBSD3.findByLocation_py.html) | the measurements closest to positions, or within a radius of them |
| [grain2d](grain2d.findByLocation_py.html) | the positions of the outlines a point lies in the position of the outline holding each point, -1 for a point in none |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
