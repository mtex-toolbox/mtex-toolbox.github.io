---
title: 'flip'
sidebar: function_reference_sidebar
permalink: flip_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
exchange the two grain sides of boundary segments or faces.

## Syntax

<div class="mx-form" markdown="1">

```python
flipped = flip(boundary)
```

</div>

## Description

For an MTEX object, flip(x, ...) calls x.flip(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
flip(x, *args, **kwargs)
```

</div>

## Methods it calls

| [grain3Boundary](grain3Boundary.flip_py.html) | the boundary faces with their two sides exchanged, of all faces or a selection |
| [grainBoundary](grainBoundary.flip_py.html) | swap the two sides of the segments marked, or of all of them, and walk the chains again |

## Used on

[BoundaryCurvature](BoundaryCurvature_py.html)

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
