---
title: 'hull'
sidebar: function_reference_sidebar
permalink: hull_py.html
folder: function_reference
toc: false
search: exclude
lang: python
status: Reference
---
{% raw %}
replace particle outlines by their convex hulls.

## Syntax

<div class="mx-form" markdown="1">

```python
convex = hull(grains)
```

</div>

## Description

For an MTEX object, hull(x, ...) calls x.hull(...). Additional positional
and keyword arguments are passed to that method unchanged. Its documentation
specifies the accepted inputs, units, symmetry handling and optional outputs.
Consult the corresponding method for the behaviour of a particular object type.

## Signature

<div class="mx-form" markdown="1">

```python
hull(x, *args, **kwargs)
```

</div>

## Methods it calls

| [grain2d](grain2d.hull_py.html) | the grains with their convex hulls for polygons: the hull edges form the boundary, with nothing on the other side, and there is no inner boundary |
| [shape2d](shape2d.hull_py.html) | the convex hull of the outline, as an outline |

<font size="2"><a href="https://github.com/mtex-toolbox/pymtex/blob/main/mtex/geometry/funcs.py#L136">source</a></font>
{% endraw %}
