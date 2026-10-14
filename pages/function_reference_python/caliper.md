---
title: 'caliper'
sidebar: function_reference_sidebar
permalink: caliper_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
measure the Feret width of each grain outline along a direction or at its extrema.

## Syntax

<div class="mx-form" markdown="1">

```python
width = caliper(grains, direction)
```

</div>

## Description

For an MTEX object, caliper(x, ...) calls x.caliper(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
caliper(x, *args, **kwargs)
```

</div>

## Methods it calls

| [grain2d](grain2d.caliper_py.html) | the caliper, the Feret diameter, of every outline: its width across a direction, or the longest or the shortest width as a framed axis of that length |

## Used on

[EllipseBasedParameters](EllipseBasedParameters_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
